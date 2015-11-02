<a href="{url journal="index" page="index"}">
    <img src="{$baseUrl}/templates/portalpadrao/assets/images/banner_periodicos_site.png" alt="" class="image-responsible banner-content">
</a>

<div class="content-box">
    <div class="header-box">{$schedConf->getFullTitle()|escape}</div>
    {if $homepageImage}
      <div class="xs-1 mid-6">
        <img class="image-responsible" src="{$publicFilesDir}/{$homepageImage.uploadName|escape}" width="{$homepageImage.width}" height="{$homepageImage.height}" {if $homepageImageAltText != ''}alt="{$homepageImageAltText|escape}"{else}alt="{translate key="common.conferenceHomepageImage.altText"}"{/if} />
      </div>
    {/if}
    <div id="issueDescription" class="text-box-section" style="text-align:justify;"><p>{$schedConf->getLocalizedSetting("introduction")}</p></div>
    <div class="footer-box">
      <div class="footer-content">
         <a href="{url page="issue" op="archive"}"><!--{translate key="issue.issues"}-->Outros</a>
      </div>
    </div>
  </div>
<!-- Caixa de nóticias -->
{include file="portalpadrao/conferencia/index/noticias.tpl"}
