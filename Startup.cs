using System;
using System.Threading.Tasks;
using Microsoft.Owin;
using Owin;

[assembly: OwinStartup(typeof(SignalRChat.Startup))]

namespace SignalRChat
{
    public class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            //whenever the app starts it maps to the LetsChats.cs class
            //as it derives from Hub class
            app.MapSignalR();
        }
    }
}
