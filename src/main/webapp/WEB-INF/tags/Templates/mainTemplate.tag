<%@ include file="/WEB-INF/jsp/imports.jspf"%>
<%@ tag trimDirectiveWhitespaces="true"
        body-content="scriptless"
        isELIgnored="false" %>
<%@attribute name="headerTitle" required="true" rtexprvalue="true"
             type="java.lang.String" %>
<%@attribute name="extraHeaders" required="false" fragment="true"
             description="Optional value to allow extention of HTML head content.
             (Such as CSS stylesheets)" %>
<%@attribute name="extraScripts" required="false" fragment="true"
             description="Optional value to include extra javascript files." %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
              rel="stylesheet"
              integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
              crossorigin="anonymous">
        <jsp:invoke fragment="extraHeaders" />
        <title>${headerTitle}</title>
    </head>
    <body>
        <jsp:doBody/>
        <!--    Footer    -->
        <footer class="footer mt-auto py-3 text-light bg-dark" style="position:absolute; width:100%; bottom:0px;">
            <div class="container">
                <div class="row">
                    <div class="col-auto">
                        Background Image by <a
                            href="https://pixabay.com/users/ethan_zhan-9583454/?utm_source=link-attribution&amp;utm_medium=referral&amp;utm_campaign=image&amp;utm_content=3723726">
                        Ethan Zhan</a>
                        from <a
                            href="https://pixabay.com/?utm_source=link-attribution&amp;utm_medium=referral&amp;utm_campaign=image&amp;utm_content=3723726">
                        Pixabay</a>
                    </div>
                    <div class="col-auto">
                        <div>Icons made by <a
                                href="https://www.flaticon.com/authors/smashicons"
                                title="Smashicons">Smashicons</a>
                            from <a href="https://www.flaticon.com/"
                                    title="Flaticon">www.flaticon.com</a></div>
                    </div>
                </div>
            </div>
        </footer>
        <!--    Footer    -->
        <!--Bootstrap JS dependencies -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
                crossorigin="anonymous"></script>
        <jsp:invoke fragment="extraScripts" />
    </body>
</html>