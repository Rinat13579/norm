<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>

<@c.page>
<div>
    <@l.logout />
    <span><a href="/user">User List</a></span>
</div>
<div>
    <form method="post">
        <input type="text" name="text" placeholder="Введите что нибудь" />
        <input type="text" name="tag" placeholder="tag" />
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <button type="submit">Добавить</button>
    </form>
</div>

<div>Список сообщений</div>
<form method="get" action="/main">
    <input type="text" name="filter" value="${filter}">
    <button type="submit">Search</button>
</form>

<#list messages as message>
    <div>
        <b>${message.id}</b>
        <span>${message.text}</span>
        <i>${message.tag}</i>
        <strong>${ message.authorName}</strong>
    </div>
    <#else>
    No messages
</#list>
</@c.page>