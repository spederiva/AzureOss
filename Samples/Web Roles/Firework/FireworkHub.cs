using Microsoft.AspNet.SignalR;
using Microsoft.AspNet.SignalR.Hubs;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;

namespace Firework
{
    [HubName("fireworkHub")]
    public class FireworkHub : Hub
    {
        #region Overrides of Hub

        /// <summary>
        /// Called when the connection connects to this hub instance.
        /// </summary>
        /// <returns>
        /// A <see cref="T:System.Threading.Tasks.Task"/>
        /// </returns>
        public override Task OnConnected()
        {
            return Task.FromResult(0);
            //Context.ConnectionId
        }

        #endregion

        public void Add(int type, double x, double y, string color, int tail)
        {
            Clients.All.addFirework(
                new
                {
                    Type = type,
                    X = x,
                    Y = y,
                    Color = color,
                    TailType = tail
                }
                );
        }
        public FireworkHub()
        {

        }
    }
}