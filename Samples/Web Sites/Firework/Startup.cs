using System.Configuration;
using Firework;
using Microsoft.AspNet.SignalR;
using Microsoft.Owin;
using Owin;

[assembly: OwinStartup(typeof(Startup))]
namespace Firework
{
    public class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            var endpoint = ConfigurationManager.AppSettings["redisEP"];
            var key = ConfigurationManager.AppSettings["redisKey"];
            GlobalHost.DependencyResolver.UseRedis(
                endpoint, 
            	6379,
                key,
                "Fireworks");
            app.MapSignalR();

        }
    }
}
