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
        <img src="{$baseUrl}/templates/portalpadrao/assets/images/banner_periodicos_site.png" alt="" class="image-responsible banner-content">
  
      <!-- slide -->
        <div class="slide-content">
          <div class="fotorama" data-autoplay="true" data-arrows="true" data-navwidth="15%" data-max-width="100%">
          {foreach from=$numConferences key=key item=item}
            <img src="{$baseUrl}/public/conferences/{$item}/homepageImage_pt_BR.jpg" alt="">
          {/foreach}
          </div>
        </div>

        {include file="portalpadrao/index/noticias.tpl"}
        {include file="portalpadrao/index/eventos.tpl"}
        {include file="portalpadrao/index/search.tpl"}
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

    </main> <!-- /main-container -->
  </div>
</div>

