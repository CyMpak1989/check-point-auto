<#import "parts/common.ftl" as c>
<@c.page>
<div class="row h-100 justify-content-center align-items-center">
    <div class="col-lg-4 p-3 bg-light">
        <h2 align="center" class="mb-5">Авторизация</h2>
        <form action="/login" method="post">
            <div class="form-group">
                <label for="InputLogin">Login</label>
                <input type="text" name="username" class="form-control" id="InputLogin" placeholder="Login">
            </div>
            <div class="form-group">
                <label for="InputPassword1">Password</label>
                <input type="password" name="password" class="form-control" id="InputPassword1" placeholder="Password">
            </div>
            <div class="form-group">
                <input type="hidden" name="_csrf" value="${_csrf.token}" class="form-control" id="InputCSRF" placeholder="CSRF">
            </div>
            <button type="submit" class="btn btn-primary">Sign in</button>
        </form>
    </div>
</div>

<#--<div class="position-static">-->
    <#--<form action="/login" method="post">-->
        <#--<div><label> User Name : <input type="text" name="username"/> </label></div>-->
        <#--<div><label> Password: <input type="password" name="password"/> </label></div>-->
        <#--<input type="hidden" name="_csrf" value="${_csrf.token}"/>-->
        <#--<div><input type="submit" value="Sign In"/></div>-->
    <#--</form>-->
    <#--<a href="/registration">Add new user</a>-->
<#--</div>-->
</@c.page>