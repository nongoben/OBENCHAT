<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test_insideLayout.aspx.cs" Inherits="Chat_Project.test_insideLayout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Css/bootstrap.min.css" rel="stylesheet" />

<link href="Css/cssBoxchat.css" rel="stylesheet" />
</head>
  
    
      


<body >
    <form id="form1" runat="server">
   

        <div class="chat-sidebar">
  <div class="sidebar-name" data-user-id="1">Andie Thomas</div>
  <div class="sidebar-name" data-user-id="2">Chris Horton</div>
  <div class="sidebar-name" data-user-id="3">Leslie Baker</div>
  <div class="sidebar-name" data-user-id="4">Robin Diaz</div>
</div>

<div class="chatbox-wrapper">
  <div class="chatbox-flex-wrapper">
    
    <div class="chatbox" data-user-id="1">
      <div class="chatbox-header">
        <button class="chatbox-close" data-user-id="1">&#x2716;</button>
        <span>Andie Thomas</span>
      </div>
      <div class="chattexts">
        <span class="chattext-from">Did you get my message?</span>
        <span class="chattext-for">No! I didn't.</span>
        <span class="chattext-from">Oh.</span>
        <span class="chattext-for">What did it say?</span>
      </div>
      <textarea class="chattext-input" placeholder="Send a message..."></textarea>
    </div>
    
    <div class="chatbox" data-user-id="2">
      <div class="chatbox-header">
        <button class="chatbox-close" data-user-id="2">&#x2716;</button>
        <span>Chris Horton</span>
      </div>
      <div class="chattexts">
        <span class="chattext-from">Hi</span>
        <span class="chattext-for">Hey</span>
        <span class="chattext-from">When are you coming over?</span>
      </div>
      <textarea class="chattext-input" placeholder="Send a message..."></textarea>
    </div>
    
    <div class="chatbox" data-user-id="3">
      <div class="chatbox-header">
        <button class="chatbox-close" data-user-id="3">&#x2716;</button>
        <span>Leslie Baker</span>
      </div>
      <div class="chattexts">
        <span class="chattext-for">Hello there!</span>
        <span class="chattext-from">Why hello!</span>
        <span class="chattext-for">How are you?</span>
        <span class="chattext-from">Good!</span>
        <span class="chattext-for">Great!</span>
      </div>
      <textarea class="chattext-input" placeholder="Send a message..."></textarea>
    </div>

    <div class="chatbox" data-user-id="4">
      <div class="chatbox-header">
        <button class="chatbox-close" data-user-id="4">&#x2716;</button>
        <span>Robin Diaz</span>
      </div>
      <div class="chattexts">
        <span class="chattext-for">Hey Robin, what's up?</span>
        <span class="chattext-from">Hi! Nothing much. You?</span>
      </div>
      <textarea class="chattext-input" placeholder="Send a message..."></textarea>
    </div>
    
  </div>
</div>


         </form>
</body>
   
    <script src="scripts/bootstrap.min.js"></script>
    <script src="scripts/jquery.min.js"></script>
    <script src="scripts/jsBoxChat.js"></script>
  
    
    

</html>
