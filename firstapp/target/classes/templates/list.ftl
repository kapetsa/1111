<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
<style>
    body{
        background: linear-gradient(lightseagreen,lightskyblue);
    }
</style>
<div>
   <@l.logout/>
   </div>
   <div>All Users</div>


  <table border="1" width="100%" cellpadding="5">
      <tr>
          <th><input type="Checkbox"></th>
          <th>Username</th>
          <th>Date of registration</th>
          <th>Date of last enter</th>
          <th>Active</th>
          <th></th>
      </tr>

    <#list allUsers as user>
      <tr>
          <th><input type="Checkbox" name="ch"> </th>
          <th>${user.username}</th>
          <th>${user.dateOfReg}</th>
          <th>${user.lastEnter}</th>
          <th>${user.active?then("Active", "Blocked")}</th>
          <th>**</th>
      </tr>
    </#list>
  </table>


</@c.page>