
using System;
using System.IO;
using System.Linq;
using System.Text;
using Microsoft.ServiceBus;
using Microsoft.ServiceBus.Messaging;
using Microsoft.WindowsAzure;

namespace ServiceBusQueueReceiver
{
    class Program
    {
        static void Main()
        {
            const string cloudcampqueue = "cloudcampqueue";

            var cs = CloudConfigurationManager.GetSetting("ServiceBusConnectionString");
            var manager = NamespaceManager.CreateFromConnectionString(cs);
            
            if (!manager.QueueExists(cloudcampqueue))
            {
                manager.CreateQueue(cloudcampqueue);
            }

            var client = QueueClient.CreateFromConnectionString(cs, cloudcampqueue);

            Console.WriteLine("Select Receiving Method:\n1->Single\n2->Batch");
            var key= Console.ReadKey();
            if (key.KeyChar == '1')
            {
                HandleSingle(client);
            }
            else if (key.KeyChar == '2')
            {
                HandleBatch(client);
            }

            Console.WriteLine("Ready");
            Console.ReadLine();

        }

        private static void HandleSingle(QueueClient client)
        {
            client.OnMessage(msg =>
                             {
                                 try
                                 {
                                     HandleMessage(msg);
                                     msg.Complete();
                                 }
                                 catch (Exception)
                                 {
                                     Console.WriteLine("Error handling message -> Abandon");
                                     msg.Abandon();
                                 }
                             });
        }

        private static void HandleBatch(QueueClient client)
        {
            while (true)
            {
                var messages = client.ReceiveBatch(10, TimeSpan.FromSeconds(5));
                if (messages.Any())
                {
                    foreach (var msg in messages)
                    {
                        HandleMessage(msg, false);
                    }

                    client.CompleteBatch(messages.Select(m => m.LockToken));
                }
            }
        }

        private static void HandleMessage(BrokeredMessage msg, bool singleMessage = true)
        {
            var index = -1;
            try
            {
                object content;
                if (msg.Properties.TryGetValue("index", out content))
                {
                    index = (int) content;
                }

                msg.Properties.TryGetValue("time", out content);
                var sentTime = string.Empty;
                if (content != null)
                {
                    sentTime = (string) content;
                }

                msg.Properties.TryGetValue("color", out content);
                if (content != null)
                {
                    ConsoleColor color;
                    Enum.TryParse((string) content, out color);
                    Console.ForegroundColor = color;
                }


                var body = new StreamReader(msg.GetBody<Stream>(), Encoding.UTF8).ReadToEnd();

                Console.WriteLine("Body: {0}, sent : {1}, received: {2}, DeliveryCount: {3}",
                    body,
                    sentTime,
                    DateTime.Now.ToString("HH:mm:ss.fff"),
                    msg.DeliveryCount);

                if (singleMessage)
                {
                    msg.Complete();
                }
            }
            catch (Exception)
            {
                Console.WriteLine("Error handling message {0} -> Abandon", index);
                if (singleMessage)
                {
                    msg.Abandon();
                }
            }
        }
    }
}
