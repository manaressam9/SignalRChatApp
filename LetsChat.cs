using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.AspNet.SignalR.Hubs;

namespace SignalRChat
{
    //this attribute represents our hub & is used in client code
    [HubName("myChatHub")]
    public class LetsChat : Microsoft.AspNet.SignalR.Hub
    {
        //this method is called on the client side
        public void send(string message)
        {
            // the "message" is sent to all clients connected to this chat
            Clients.All.addMessage(message);
        }
    }
}