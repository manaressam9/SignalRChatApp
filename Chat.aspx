<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Chat.aspx.cs" Inherits="SignalRChat.Chat" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SignalR Chat App</title>
    <script src="Scripts/jquery-1.6.4.min.js" type="text/javascript"></script>
    <script src="Scripts/jquery.signalR-2.4.3.js"  type="text/javascript"></script>
    <script src="signalr/hubs"  type="text/javascript"></script>
</head> 
<body>
    <form id="form1" runat="server">
        <script type="text/javascript">
            //refrence SignalR hub
            var IWannachat = $.connection.myChatHub;
            debugger;
            // telling the Hub.Client.addMessage to take the message and append
            IWannachat.client.addMessage = function (msg) {
                $('#listMessages').append('<li>' + msg + '</li>');
            };
            debugger;

            function sendMe() {
                //calling "send" method declared in letsChat
                
                    IWannachat.server.send($('#txtMessage').val());
                
            }
            debugger;

            //start the connection with the hub
            $.connection.hub.start();
        </script>

    <div>
    <input type="text" id="txtMessage" />
    <button onclick="sendMe()">BroadCast</button>
        <ul id="listMessages">

        </ul>
     </div>
    </form>
</body>
</html>
