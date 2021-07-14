<%--@elvariable id="failedRegister" type="java.lang.Boolean"--%>
<tmpl:mainTemplate headerTitle="Welcome">
    <jsp:attribute name="extraHeaders">
        <link rel="stylesheet"
              href="<c:url
              value="/resources/stylesheets/register.css"
              />">
    </jsp:attribute>
    <jsp:body>
        <!--TODO: Container needs to be adapted for mobile -->
        <div class="container text-light align-items-center big-box" >
            <div class="row justify-content-center">
                <h1 class="col-auto">WELCOME!</h1>
            </div>
            <form action="<c:url value="/register" />"
                  method="POST"
                  novalidate>
                <div class="row justify-content-center">
                    <img src="${pageContext.request.contextPath}/resources/icons/026-bot.svg"
                         alt="welcome_timmy"
                         style="width: 125px;
                    height: 125px;">
                </div>
                <div class="row justify-content-center">
                    <div class="form-group col-5 text-center mt-3">
                        <label for="username">What should we call you?</label>
                        <input type="text" name="username"
                               class="form-control <c:if
                               test="${failedRegister}" >
                                    <c:out value="is-invalid"/>
                                </c:if>"
                               id="username" required/>
                        <div class="invalid-feedback">Name is required!</div>
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
