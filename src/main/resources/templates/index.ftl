<#import "parts/common.ftl" as c>
<@c.page>
    <nav class="navbar navbar-expand-lg navbar-light bg-dark">
        <a class="navbar-brand" href="">КПП</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="#">Главная <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                       aria-haspopup="true" aria-expanded="false">
                        Администратор
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="/add">Пропуск</a>
                        <a class="dropdown-item" href="#">Журнал пропусков</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">Новый пользователь</a>
                        <a class="dropdown-item" href="#">Журнал пользователей</a>
                    </div>
                </li>
            </ul>
            <form method="post" action="filter" class="form-inline my-2 my-lg-0">
                <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                <input class="form-control mr-sm-2" name="filter" type="search" placeholder="Введите номер авто" aria-label="Введите номер авто">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Найти</button>
            </form>

            <form action="/logout" method="post">
                <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Sign Out</button>
            </form>
        </div>
    </nav>

<table class="table table-striped">
    <thead class="thead-dark">
    <tr>
        <th scope="col">Имя</th>
        <th scope="col">Фамилия</th>
        <th scope="col">Отчество</th>
        <th scope="col">Номер авто</th>
        <th scope="col">Марка авто</th>
        <th scope="col">Дата создания</th>
        <th scope="col">Дата окончания</th>
        <th scope="col">Примечание</th>
        <th scope="col">Автор</th>
    </tr>
    </thead>
    <tbody>
    <#list car as c>
        <tr>
            <th scope="row">${c.surname}</th>
            <th scope="row">${c.name}</th>
            <th scope="row">${c.patronymic}</th>
            <th scope="row">${c.carNumber}</th>
            <th scope="row">${c.carMake}</th>
            <th scope="row">${c.creationDate}</th>
            <th scope="row">${c.expiryDate}</th>
            <th scope="row">${c.comment}</th>
            <th scope="row">${c.authorName}</th>
        </tr>
    </#list>
    </tbody>
</table>
</@c.page>