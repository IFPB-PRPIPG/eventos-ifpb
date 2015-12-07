{**
 * index.tpl
 *
 * Copyright (c) 2000-2012 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * Site administration index.
 *
 * $Id$
 *}
{strip}
{assign var="pageTitle" value="admin.siteAdmin"}
{include file="common/header.tpl"}
{/strip}
<div id="siteManagement">
<h3>{translate key="admin.siteManagement"}</h3>

<ul class="plain">
	<li>&#187; <a href="{url op="settings"}">{translate key="admin.siteSettings"}</a></li>
	<li>&#187; <a href="{url op="conferences"}">{translate key="admin.hostedConferences"}</a></li>
	<li>&#187; <a href="{url op="languages"}">{translate key="common.languages"}</a></li>
	<li>&#187; <a href="{url op="auth"}">{translate key="admin.authSources"}</a></li>
	{call_hook name="Templates::Admin::Index::SiteManagement"}
</ul>
</div>
<div id="adminFunctions">
<h3>{translate key="admin.adminFunctions"}</h3>

<ul class="plain">
	<li>&#187; <a href="{url op="systemInfo"}">{translate key="admin.systemInformation"}</a></li>
	<li>&#187; <a href="{url op="expireSessions"}" onclick="return confirm('{translate|escape:"jsparam" key="admin.confirmExpireSessions"}')">{translate key="admin.expireSessions"}</a></li>
	<li>&#187; <a href="{url op="clearDataCache"}">{translate key="admin.clearDataCache"}</a></li>
	<li>&#187; <a href="{url op="clearTemplateCache"}" onclick="return confirm('{translate|escape:"jsparam" key="admin.confirmClearTemplateCache"}')">{translate key="admin.clearTemplateCache"}</a></li>
	<li>&#187; <a href="{url op="mergeUsers"}">{translate key="admin.mergeUsers"}</a></li>
	{call_hook name="Templates::Admin::Index::AdminFunctions"}
</ul>

<h3>Comunicados</h3>
<ul class="plain">
	<li>
		<a href="{url page="notify" op="index"}">Cadastrar novos comunicados</a>
	</li>
	<li>
		<a href="{url page="notify" op="showAll"}">Visualizar todos os comunicados</a>
	</li>
	</ul>
</div>
{include file="common/footer.tpl"}
