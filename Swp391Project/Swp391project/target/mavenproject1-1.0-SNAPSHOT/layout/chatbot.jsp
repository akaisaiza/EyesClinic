
<!-- CHAT BAR BLOCK -->
<style>
    .chat-bar-collapsible {
        position: fixed;
        bottom: 0;
        right: 20px;
        box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2);
    }

    .collapsible {
        background-color: #20c997;
        color: white;
        cursor: pointer;
        padding: 5px;
        width: 350px;
        text-align: left;
        outline: none;
        font-size: 18px;
        border-radius: 10px 10px 0px 0px;
        border: 3px solid ;
        border-bottom: none;
    }

    .content {
        max-height: 0;
        overflow: hidden;
        transition: max-height 0.2s ease-out;
        background-color: #f1f1f1;
    }

    .full-chat-block {
        width: 350px;
        background: white;
        text-align: center;
        overflow: auto;
        scrollbar-width: none;
        height: max-content;
        transition: max-height 0.2s ease-out;
    }

    .outer-container {
        min-height: 400px;
        bottom: 0%;
        position: relative;
    }

    .chat-container {
        max-height: 400px;
        width: 100%;
        position: absolute;
        bottom: 0;
        left: 0;
        scroll-behavior: smooth;
        hyphens: auto;
    }

    .chat-container::-webkit-scrollbar {
        display: none;
    }

    .chat-bar-input-block {
        display: flex;
        float: left;
        box-sizing: border-box;
        justify-content: space-between;
        width: 100%;
        align-items: center;
        background-color: rgb(235, 235, 235);
        border-radius: 10px 10px 0px 0px;
        padding: 10px 0px 10px 10px;
    }

    .chat-bar-icons {

        justify-content: space-evenly;
        box-sizing: border-box;
        width: 25%;
        float: right;
        font-size: 10px;
    }

    #chat-icon:hover {
        opacity: .7;
    }

    /* Chat bubbles */

    #userInput {
        width: 75%;
    }

    .input-box {
        float: left;
        border: none;
        box-sizing: border-box;
        width: 100%;
        border-radius: 10px;
        padding: 10px;
        font-size: 16px;
        background-color: white;
        outline: none
    }

    .userText {
        color: white;
        font-family: Helvetica;
        font-size: 15px;
        font-weight: normal;
        text-align: right;
        clear: both;
    }

    .userText span {
        line-height: 1.5em;
        display: inline-block;
        background: #5ca6fa;
        padding: 10px;
        border-radius: 8px;
        border-bottom-right-radius: 2px;
        max-width: 80%;
        margin-right: 10px;
        animation: floatup .5s forwards
    }

    .botText {
        color: #000;
        font-family: Helvetica;
        font-weight: normal;
        font-size: 16px;
        text-align: left;
    }

    .botText span {
        line-height: 1.5em;
        display: inline-block;
        background: #e0e0e0;
        padding: 10px;
        border-radius: 8px;
        border-bottom-left-radius: 2px;
        max-width: 80%;
        margin-left: 10px;
        animation: floatup .5s forwards
    }

    @keyframes floatup {
        from {
            transform: translateY(14px);
            opacity: .0;
        }
        to {
            transform: translateY(0px);
            opacity: 1;
        }
    }

    @media screen and (max-width:600px) {
        .full-chat-block {
            width: 100%;
            border-radius: 0px;
        }
        .chat-bar-collapsible {
            position: fixed;
            bottom: 0;
            right: 0;
            width: 100%;
        }
        .collapsible {
            width: 100%;
            border: 0px;
            border-top: 3px solid white;
            border-radius: 0px;
        }
    }
</style>
<div class="chat-bar-collapsible">
    <button id="chat-button" type="button" class="collapsible"><svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-chat-dots" viewBox="0 0 16 16">
            <path d="M5 8a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm4 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm3 1a1 1 0 1 0 0-2 1 1 0 0 0 0 2z"/>
            <path d="m2.165 15.803.02-.004c1.83-.363 2.948-.842 3.468-1.105A9.06 9.06 0 0 0 8 15c4.418 0 8-3.134 8-7s-3.582-7-8-7-8 3.134-8 7c0 1.76.743 3.37 1.97 4.6a10.437 10.437 0 0 1-.524 2.318l-.003.011a10.722 10.722 0 0 1-.244.637c-.079.186.074.394.273.362a21.673 21.673 0 0 0 .693-.125zm.8-3.108a1 1 0 0 0-.287-.801C1.618 10.83 1 9.468 1 8c0-3.192 3.004-6 7-6s7 2.808 7 6c0 3.193-3.004 6-7 6a8.06 8.06 0 0 1-2.088-.272 1 1 0 0 0-.711.074c-.387.196-1.24.57-2.634.893a10.97 10.97 0 0 0 .398-2z"/>
        </svg>Chat with us!</a>

    </button>

    <div class="content">
        <div class="full-chat-block">
            <!-- Message Container -->
            <div class="outer-container">
                <div class="chat-container">
                    <!-- Messages -->
                    <div id="chatbox">
                        <h5 id="chat-timestamp"></h5>
                        <p id="botStarterMessage" class="botText"><span>Loading...</span></p>
                    </div>

                    <!-- User input box -->
                    <div class="chat-bar-input-block">
                        <div id="userInput">
                            <input id="textInput" class="input-box" type="text" name="msg"
                                   placeholder="Tap 'Enter' to send a message">
                                <p></p>
                                <i id="chat-icon" style="color: #333;" class="fa fa-fw fa-send"
                                   onclick="sendButton()"></i>
                        </div>
                    </div>

                    <div id="chat-bar-bottom">
                        <p></p>
                    </div>

                </div>
            </div>

        </div>
    </div>

</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
                                   // Collapsible
                                   var coll = document.getElementsByClassName("collapsible");

                                   for (let i = 0; i < coll.length; i++) {
                                       coll[i].addEventListener("click", function () {
                                           this.classList.toggle("active");

                                           var content = this.nextElementSibling;

                                           if (content.style.maxHeight) {
                                               content.style.maxHeight = null;
                                           } else {
                                               content.style.maxHeight = content.scrollHeight + "px";
                                           }

                                       });
                                   }

                                   function getTime() {
                                       let today = new Date();
                                       hours = today.getHours();
                                       minutes = today.getMinutes();

                                       if (hours < 10) {
                                           hours = "0" + hours;
                                       }

                                       if (minutes < 10) {
                                           minutes = "0" + minutes;
                                       }

                                       let time = hours + ":" + minutes;
                                       return time;
                                   }

                                   // Gets the first message
                                   function firstBotMessage() {
                                       let firstMessage = "How's it going?"
                                       document.getElementById("botStarterMessage").innerHTML = '<p class="botText"><span>' + firstMessage + '</span></p>';

                                       let time = getTime();

                                       $("#chat-timestamp").append(time);
                                       document.getElementById("userInput").scrollIntoView(false);
                                   }

                                   firstBotMessage();

                                   // Retrieves the response
                                   function getHardResponse(userText) {
                                       let botResponse = getBotResponse(userText);
                                       let botHtml = '<p class="botText"><span>' + botResponse + '</span></p>';
                                       $("#chatbox").append(botHtml);

                                       document.getElementById("chat-bar-bottom").scrollIntoView(true);
                                   }

                                   //Gets the text text from the input box and processes it
                                   function getResponse() {
                                       let userText = $("#textInput").val();

                                       if (userText == "") {
                                           userText = "I love Code Palace!";
                                       }

                                       let userHtml = '<p class="userText"><span>' + userText + '</span></p>';

                                       $("#textInput").val("");
                                       $("#chatbox").append(userHtml);
                                       document.getElementById("chat-bar-bottom").scrollIntoView(true);

                                       setTimeout(() => {
                                           getHardResponse(userText);
                                       }, 1000)

                                   }

                                   // Handles sending text via button clicks
                                   function buttonSendText(sampleText) {
                                       let userHtml = '<p class="userText"><span>' + sampleText + '</span></p>';

                                       $("#textInput").val("");
                                       $("#chatbox").append(userHtml);
                                       document.getElementById("chat-bar-bottom").scrollIntoView(true);

                                       //Uncomment this if you want the bot to respond to this buttonSendText event
                                       // setTimeout(() => {
                                       //     getHardResponse(sampleText);
                                       // }, 1000)
                                   }

                                   function sendButton() {
                                       getResponse();
                                   }

                                   function heartButton() {
                                       buttonSendText("Heart clicked!")
                                   }

                                   // Press enter to send a message
                                   $("#textInput").keypress(function (e) {
                                       if (e.which == 13) {
                                           getResponse();
                                       }
                                   });
</script>

