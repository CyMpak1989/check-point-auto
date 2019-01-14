<#include "security.ftl">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="/">КПП</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a class="nav-link" href="#">Главная <span class="sr-only">(current)</span></a>
                </li>
                <#if isAdmin>
                     <li class="nav-item dropdown">
                         <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                            data-toggle="dropdown"
                            aria-haspopup="true" aria-expanded="false">
                             Администратор
                         </a>
                         <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                             <a class="dropdown-item" href="/add">Пропуск</a>
                             <a class="dropdown-item" href="/logpasses">Журнал пропусков</a>
                             <div class="dropdown-divider"></div>
                             <a class="dropdown-item" href="#">Новый пользователь</a>
                             <a class="dropdown-item" href="/user">Журнал пользователей</a>
                         </div>
                     </li>
                </#if>
            </ul>

            <form method="get" action="/index" class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" name="filter" type="search" value="${filter?ifExists}"
                       placeholder="Введите номер авто" aria-label="Введите номер авто">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Найти</button>
            </form>

            <div class="navbar-text mx-2">${name}</div>
            <form action="/logout" method="post">
                <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Sign Out</button>
            </form>
        </div>
    </nav>