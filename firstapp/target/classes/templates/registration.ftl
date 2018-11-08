<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
<div align = "center">Registration page</div>
${message?ifExists}
<@l.login "/registration" />
</@c.page>