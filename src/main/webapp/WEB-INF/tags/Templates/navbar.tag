<%@ include file="/WEB-INF/jsp/imports.jspf"%>
<%@ tag body-content="empty"
        trimDirectiveWhitespaces="true"
        isELIgnored="false" %>
<%@ attribute name="menuItems" type="java.util.List<java.lang.String>"
              required="true" %>
<nav class="navbar navbar-expand-md navbar-dark bg-dark">
    <a href="#" class="navbar-brand">
        <!--TODO: Add support for "Timmy" icons-->
        <img src="#" alt="Timmy" height="50px" width="50px">
    </a>
    <button class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navMenu"
            aria-controls="navMenu" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navMenu">
        <ul class="navbar-nav">
            <c:forEach items="${menuItems}" var="item">
                <li class="nav-item">
                    <a href="#" class="nav-link">${item}</a>
                </li>
            </c:forEach>
        </ul>
    </div>
</nav>