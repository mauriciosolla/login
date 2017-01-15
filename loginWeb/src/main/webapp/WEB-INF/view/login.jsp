<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login App</title>

    <script src="/resources/bower_components/webcomponentsjs/webcomponents-lite.js"></script>

    <link rel="import" href="/resources/bower_components/polymer/polymer.html">
    <link rel="import" href="/resources/bower_components/iron-form/iron-form.html">
    <link rel="import" href="/resources/bower_components/iron-icons/iron-icons.html">
    <link rel="import" href="/resources/bower_components/paper-button/paper-button.html">
    <link rel="import" href="/resources/bower_components/paper-input/paper-input.html">
    <link rel="import" href="/resources/bower_components/paper-header-panel/paper-header-panel.html">

    <link rel="import" href="/resources/css/styles.html">
    <style include="styles"></style>

    <script>
        function submitForm() {
            document.getElementById('form').submit();
        }
    </script>

</head>
<body>
    <div class="main-login">
        <paper-header-panel>
            <div class="paper-header">Login App</div>
            <div class="content-login">
                <form id="form" method="post" action="/login">
                    <paper-input id="username" name="username" label="username"></paper-input>
                    <paper-input id="password" name="password" label="password" type="password"></paper-input>
                </form>
                <div class="msg">
                    <c:if test="${param.error != null}">Invalid username and password.</c:if>
                    <c:if test="${param.logout != null}">You have been logged out successfully.</c:if>
                </div>
            </div>
        </paper-header-panel>
        <div class="submit">
            <paper-button raised onclick="submitForm()"><iron-icon icon="check"></iron-icon>Login</paper-button>
        </div>
    </div>
</body>
</html>