<a href="{url journal="index" page="index"}">
    <img src="{$baseUrl}/templates/portalpadrao/assets/images/banner_periodicos_site.png" alt="" class="image-responsible banner-content">
</a>
{if $schedConf}
<div class="content-box">
    <div class="header-box">{$schedConf->getFullTitle()|escape}</div>
    {if $homepageImage}
      <div class="xs-1 mid-6">
        <img class="image-responsible" src="{$publicFilesDir}/{$homepageImage.uploadName|escape}"{if $homepageImageAltText != ''}alt="{$homepageImageAltText|escape}"{else}alt="{translate key="common.conferenceHomepageImage.altText"}"{/if} />
      </div>
    {/if}
    <div id="issueDescription" class="text-box-section" style="text-align:justify;"><p>{$schedConf->getLocalizedSetting("introduction")}</p></div>
    <div class="footer-box">
      <div class="footer-content">
         <a href="{url page="issue" op="archive"}"><!--{translate key="issue.issues"}-->Outros</a>
      </div>
    </div>
  </div>
{/if}

{if $currentSchedConfs}
  <div class="content-box">
  <div class="header-box">{translate key="conference.currentConferences"}</div>
  {if not $currentSchedConfs->eof()}
    {iterate from=currentSchedConfs item=schedConf}
      <h4><a href="{url schedConf=$schedConf->getPath()}">{$schedConf->getFullTitle()|escape}</a></h4>
      <p>
        {$schedConf->getSetting('locationName')}<br/>
        {$schedConf->getSetting('locationAddress')|nl2br}<br/>
        {if $schedConf->getSetting('locationCity')}{$schedConf->getSetting('locationCity')|escape}{assign var="needsComma" value=true}{/if}{if $schedConf->getSetting('locationCountry')}{if $needsComma}, {/if}{$schedConf->getSetting('locationCountry')|escape}{/if}
      </p>
      <p>{$schedConf->getSetting('startDate')|date_format:$dateFormatLong} &ndash; {$schedConf->getSetting('endDate')|date_format:$dateFormatLong}</p>

      {if $schedConf->getLocalizedSetting('introduction')}
        <p>{$schedConf->getLocalizedSetting('introduction')|nl2br}</p>
      {/if}

      <p><a href="{url schedConf=$schedConf->getPath()}" class="action">{translate key="site.schedConfView"}</a>
    {/iterate}
  {else}
    <h1>{translate key="conference.noCurrentConferences"}</h1>
  {/if}
{/if}
<!-- Caixa de nóticias -->
{include file="portalpadrao/conferencia/index/noticias.tpl"}
