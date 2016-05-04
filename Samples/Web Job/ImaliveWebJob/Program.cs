using System;
using System.Configuration;
using System.Diagnostics;
using System.Net;

namespace ImaliveWebJob
{
    class Program
    {
        static void Main()
        {
            Console.WriteLine("Starting Job");
            string address;
            try
            {
                address = ConfigurationManager.AppSettings["Address"];
            }
            catch (ConfigurationErrorsException e)
            {
                Console.WriteLine("Error : {0}", e.Message);
                return;
            }

            using (var client = new WebClient())
            {
                client.Headers.Add("X-IM-ALIVE", DateTime.Now.ToShortTimeString());
                try
                {
                    client.UploadString(address, Environment.MachineName);
                }
                catch (Exception e)
                {
                    Console.WriteLine("Error : Unable to Connect RequestBin {0}; {1}", address, e.Message);
                    throw;
                }

                Console.WriteLine("Job Finished");
            }
        }
    }
}
