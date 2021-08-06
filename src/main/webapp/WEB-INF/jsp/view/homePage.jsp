<%--@elvariable id="navLinks" type="java.util.List<java.lang.String>"--%>
<%--@elvariable id="username" type="java.lang.String"--%>
<%--@elvariable id="chats"
type="java.util.Map<java.lang.String, serpas.josue.chattingpracticeapp.Chat>"--%>
<tmpl:mainTemplate headerTitle="Chatting App">
    <jsp:attribute name="extraHeaders">
        <link rel="stylesheet"
              href="<c:url
              value="/resources/stylesheets/register.css"
              />">
    </jsp:attribute>
    <jsp:body>
        <tmpl:navbar menuItems="${navLinks}"/>
        <div class="container">
            <div class="row justify-content-center">
                <h1 class="col-auto text-white">Welcome ${username}</h1>
            </div>
            <div class="row justify-content-center my-2">
                <a href="<c:url value="/home">
                            <c:param name="page" value="startChat"/>
                         </c:url>"
                   class="col-auto btn btn-dark">Start a chat</a>
                <a href="#" class="col-auto btn btn-dark offset-md-1">Join a public chat</a>
                <a href="#" class="col-auto btn btn-dark offset-md-1">Join a private chat</a>
            </div>
            <div class="row justify-content-center bg-light">
                <div class="row justify-content-center bg-dark text-light">
                    <h2 class="col-auto">Your Active Chats</h2>
                </div>
                <c:choose>
                    <c:when test="${chats==null}">
                        <div class="row justify-content-center">
                            <p class="col-auto">You have no active chats at the moment...</p>
                        </div>
                    </c:when>
                    <c:otherwise>
                        <div class="row justify-content-center text-center" style="font-weight: bold;">
                            <span class="col-2">Chat Name</span>
                            <span class="col-2">Private/Public</span>
                            <span class="col-2">Number of Participants</span>
                            <span class="col-2">Click to join</span>
                        </div>
                        <c:forEach items="${chats}" var="chat">
                            <div class="row justify-content-center text-center">
                                <span class="col-2">${chat.chatId}</span>
                                <c:choose>
                                    <c:when test="${chat.publicChat}">
                                        <span class="col-2">Public</span>
                                    </c:when>
                                    <c:otherwise>
                                        <span class="col-2">Private</span>
                                    </c:otherwise>
                                </c:choose>
                                <span class="col-2">${chat.participantAmount}</span>
                                <a class="col-2" href="#">Open</a>
                            </div>
                        </c:forEach>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>
    </jsp:body>
</tmpl:mainTemplate>