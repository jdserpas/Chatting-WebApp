<%--@elvariable id="navLinks" type="java.util.List<java.lang.String>"--%>
<tmpl:mainTemplate headerTitle="Create Chat" >
    <jsp:attribute name="extraHeaders">
        <link rel="stylesheet"
              href="<c:url
              value="/resources/stylesheets/register.css"
              />">
    </jsp:attribute>
    <jsp:body>
        <tmpl:navbar menuItems="${navLinks}"/>
        <div class="container text-light align-items-center big-box" >
            <div class="row justify-content-center">
                <h1 class="col-auto">CREATE THE CHAT</h1>
            </div>
            <form action="" method="POST" novalidate>
                <div class="row justify-content-center">
                    <img src="${pageContext.request.contextPath}/resources/icons/008-bot.svg"
                         alt="chatting_timmy" style="width: 125px; height:
                         125px;">
                </div>
                <div class="row justify-content-center">
                    <div class="form-group col-5 text-center mt-3">
                        <label for="chatName">Chat Name</label>
                        <input type="text" name="chatName"
                               id="chatName" class="form-control"
                               required/>
                        <div class="invalid-feedback">Name is invalid or already used</div>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="form-group col-5 text-center mt-3">
                        <label for="publicPrivate">Type of chat?</label>
                        <select class="form-select"
                                id="publicPrivate" aria-label="Public or Private">
                            <option value="public">Public</option>
                            <option value="private">Private</option>
                        </select>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-auto mt-sm-3 mb-3">
                        <button class="btn btn-light" type="submit">Let's Chat!</button>
                    </div>
                </div>
            </form>
        </div>
    </jsp:body>
</tmpl:mainTemplate>