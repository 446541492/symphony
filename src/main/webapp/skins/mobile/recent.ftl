<#include "macro-head.ftl">
<#include "macro-list.ftl">
<#include "macro-pagination.ftl">
<!DOCTYPE html>
<html>
    <head>
        <@head title="${recentArticleLabel} - ${symphonyLabel}">
        <meta name="description" content="${recentArticleLabel}"/>
        </@head>
    </head>
    <body>
        <#include "header.ftl">
        <div class="main">
            <div class="content fn-clear">
                <div class="domains fn-clear">
                    <#list domains as domain>
                    <a href='/domain/${domain.domainURI}'>${domain.domainTitle}</a>
                    <#if 10 < domain?counter>
                    <#break>
                    </#if>
                    </#list>
                    <a href="/">${hotLabel}</a>
                    <a href="/recent" class="selected">${latestLabel}</a>
                    <#if isLoggedIn && "" != currentUser.userCity>
                    <a href="/city/my">${currentUser.userCity}</a>
                    </#if>
                    <a href="/timeline">${timelineLabel}</a>
                </div>
                <@list listData=latestArticles/>
                <@pagination url="/recent"/>
            </div>
            <div class="side wrapper">
                <#include "side.ftl">
            </div>
        </div>
        <#include "footer.ftl">
    </body>
</html>
