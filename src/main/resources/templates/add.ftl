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
        <form class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
    </div>
</nav>

<form method="post" action="add">
    <div class="form-row">
        <div class="form-group col-md-4">
            <label for="inputSurName">Фамилия</label>
            <input type="text" class="form-control" name="surname" placeholder="Фамилия">
        </div>
        <div class="form-group col-md-4">
            <label for="inputName">Имя</label>
            <input type="text" class="form-control" name="name" placeholder="Имя">
        </div>
        <div class="form-group col-md-4">
            <label for="inputPatronymic">Отчество</label>
            <input type="text" class="form-control" name="patronymic" placeholder="Отчество">
        </div>
    </div>
    <div class="form-row">
        <div class="form-group col-md-2">
            <label for="inputCarNumber">Номер авто</label>
            <input type="text" class="form-control" name="carNumber" placeholder="Номер авто">
        </div>
        <div class="form-group col-md-2">
            <label for="inputCarMake">Марка авто</label>
            <input type="text" class="form-control" name="carMake" placeholder="Марка авто">
        </div>
        <div class="form-group col-md-4">
            <label for="inputCreationDate">Дата создания</label>
            <input type="text" class="form-control" name="creationDate" placeholder="Дата создания">
        </div>
        <div class="form-group col-md-4">
            <label for="inputExpiryDate">Дата окончания</label>
            <input type="text" class="form-control" name="expiryDate" placeholder="Дата окончания">
        </div>
    </div>
    <div class="form-group">
        <label for="textArea1Comment">Комментарий</label>
        <textarea class="form-control" name="comment" rows="3"></textarea>
    </div>
    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
    <button type="submit" class="btn btn-primary">Добавить пропуск</button>
</form>
</@c.page>