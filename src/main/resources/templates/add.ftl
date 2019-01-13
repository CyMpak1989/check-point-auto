<#import "parts/common.ftl" as c>
<@c.page>
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