<div class="page-breadcrumb">
  <div class="content-container">
    <span></span>
  </div>
</div>

<!-- Conteúdo central + sidebar -->
<div class="page-content">
  <div class="content-container">
    {include file="portalpadrao/base/aside.tpl"}

    <!-- Meio -->
    <main class="main-content">
      {if $portalIndex}

        <!-- slide -->
        {if $confImg}
          <div class="slidew-content">
            <div class="fotorama" data-autoplay="true" data-arrows="true" data-navwidth="15%" data-max-width="100%">-->
            {foreach from=$confId key=ke item=ite}
              {foreach from=$confImg key=key item=item}
                {if $key == uploadName}
                  <img src="{$baseUrl}/public/conferences/{$ite}/{$item}" alt="" class="image-responsible banner-content">
                {/if}
              {/foreach}
            {/foreach}
            </div>
          </div>
          <br>
        {/if}

        {include file="portalpadrao/index/noticias.tpl"}
        {include file="portalpadrao/index/eventos.tpl"}
        {include file="portalpadrao/index/search.tpl"}
      {/if}

      {if $readAccomodation}
        {include file="portalpadrao/conferencia/schedConf/accommodation.tpl"}
      {/if}

      {if $readNews}
        {include file="portalpadrao/news/read.tpl"}
      {/if}

      {if $listNews}
        {include file="portalpadrao/news/list.tpl"}
      {/if}

      {if $adminSlider}
        {include file="portalpadrao/admin/index.tpl"}
      {/if}

      {if $about_submission}
        {include file="templates/about/submissions.tpl"}
      {/if}
      
      {if $about_cfp}
        {include file="templates/about/submissions.tpl"}
      {/if}  

    </main> <!-- /main-container -->
  </div>
</div>

