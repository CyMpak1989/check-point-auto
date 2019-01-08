<#import "parts/common.ftl" as c>
<@c.page>
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