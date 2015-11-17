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
        {if $resultado}
        <!-- <h1>oi</h1> -->
          <div class="slidew-content">
            <div class="fotorama" data-autoplay="true" data-arrows="true" data-navwidth="15%" data-max-width="100%">-->
            {foreach from=$resultado key=key item=conference}
              <img src="{$baseUrl}/public/conferences/{$conference[0]}/{$conference[1]}" alt="" class="image-responsible banner-content">
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

