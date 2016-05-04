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
//           GlobalHost.DependencyResolver.UseRedis(
//               "cloudcampfireworks.redis.cache.windows.net",
//               6379,
//               "DNJ5TGkb0pb+dNmJrl35TZoXFud9NwPcjegykhDJPJA=",
//               "FireworksCloudService");
//            app.MapSignalR();

            GlobalHost.DependencyResolver.UseRedis(
               "localhost",
               6379,
               "",
               "Fireworks");
            app.MapSignalR();

        }
    }
}
