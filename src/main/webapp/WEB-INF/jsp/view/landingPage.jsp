<%--@elvariable id="varname" type="java.util.List<java.lang.String>"--%>
<%--@elvariable id="username" type="java.lang.String"--%>
<tmpl:mainTemplate headerTitle="Hello World">
    <tmpl:navbar menuItems="${varname}" />
    <h1><c:out value="${username}" /></h1>
</tmpl:mainTemplate>