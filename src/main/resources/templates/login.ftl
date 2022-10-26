<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
    <#if RequestParameters.error??>
<#--<#if Session?? && Session.SPRING_SECURITY_LAST_EXCEPTION??> if using this we see the message Bad credentials-->
    <div class="mb-3 alert alert-ganger" role="alert">
        ${Session.SPRING_SECURITY_LAST_EXCEPTION.message}
    </div>
</#if>
    <#if message??>
        <div class="alert alert-${messageType}" role="alert">
            ${message}
        </div>
    </#if>
    <@l.login "/login" false/>
</@c.page>
