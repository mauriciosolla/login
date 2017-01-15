<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Home</title>

    <script src="/resources/bower_components/webcomponentsjs/webcomponents-lite.js"></script>

    <link rel="import" href="/resources/bower_components/polymer/polymer.html">
    <link rel="import" href="/resources/bower_components/iron-icons/iron-icons.html">
    <link rel="import" href="/resources/bower_components/paper-button/paper-button.html">
    <link rel="import" href="/resources/bower_components/paper-card/paper-card.html">

    <link rel="import" href="/resources/css/styles.html">
    <style include="styles"></style>

    <script>
        function submitForm() {
            document.getElementById('form').submit();
        }
    </script>

</head>
<body>
    <div class="main-home">
        <paper-card heading="Home" image="/resources/images/home.png" alt="Home">
            <div class="card-content">
                Hello ${user}, you are logged.
            </div>
        </paper-card>
        <div class="submit">
            <form is="iron-form" id="form" method="post" action="/logout">
                <paper-button raised onclick="submitForm()"><iron-icon icon="close"></iron-icon>Logout</paper-button>
            </form>
        </div>
    </div>
</body>
</html>