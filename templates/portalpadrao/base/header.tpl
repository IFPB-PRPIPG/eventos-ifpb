    <!-- header -->
    <div class="government-bar">
      <div class="content-container">
        <a href="http://brasil.gov.br/" class="brazil-flag mid-1">Brasil</a>
        <a href="http://brasil.gov.br/barra#acesso-informacao" class="mid-7">Acesso à informação</a>
        <a href="http://brasil.gov.br/barra#participe" class="mid-1">Participe</a>
        <a href="http://www.servicos.gov.br/?pk_campaign=barrabrasil" class="mid-1">Serviços</a>
        <a href="http://www.planalto.gov.br/legislacao" class="mid-1">Legislação</a>
        <a href="http://brasil.gov.br/barra#orgaos-atuacao-canais" class="mid-1">Canais</a>

      </div>
    </div>
    <header class="page-header portal">
      <div class="content-container">

        <!-- barra de idiomas -->
        <div class="accessibility-bar">
          <ul class="link-list first">
          {if $portalIndex}
            <li class="item first"><a href="#revistas">Ir para revistas</a></li>
          {/if}
            <li class="item"><a href="#menu">Ir para menu</a></li>
            <li class="item"><a href="#busca">Ir para busca</a></li>
            <li class="item"><a href="#rodape">Ir para rodapé</a></li>
          </ul>
        </div>

        <!-- barra de idiomas -->
        <div class="language-bar">
          <ul class="link-list">
            <li class="item"><a href="#">Acessibilidade</a></li>
            <li class="item"><a href="#">Contraste</a></li>
            <li class="item"><a href="#">Mapa do site</a></li>
          </ul>
          <ul class="link-list">
            <li class="item"><a href="#">English</a></li>
            <li class="item"><a href="#">Español</a></li>
          </ul>
        </div>
        
        <!-- page logo -->
        <div class="center-content">
          <div class="header-logo">
            <span>Portal de</span>
            <a href="{$baseUrl}/" style="text-transform:none;">
            <h1 class="page-name">Eventos</h1>
            </a>
            <span>Instituto Federal de Educação Ciência e Tecnologia da Paraíba</span>
          </div>
          <form id="simpleSearchForm" method="post" action="{url page="search" op="search"}" class="form-control form-search-header">
            {capture assign="filterInput"}{call_hook name="Templates::Search::SearchResults::FilterInput" filterName="simpleQuery" filterValue="" size=15}{/capture}
            <!--<input name="query" class="search-input-header" type="text">
            <select id="searchField" name="searchField" size="1" style="display: none;">
              {html_options_translate options=$articleSearchByOptions}
            </select>
            <button class="search-button"></button>-->
          </form>
        </div>

        <!-- social media -->
        <div class="media-container">
          <a href="https://www.flickr.com/search/?text=ifpb" target="_blank"><div class="social flikr"></div></a>
          <a href="https://www.youtube.com/user/TVIFPB" target="_blank"><div class="social youtube"></div></a>
          <a href="https://twitter.com/ifpboficial" target="_blank"><div class="social twitter"></div></a>
          <a href="https://pt-br.facebook.com/pages/IFPB-Oficial/261855270518349" target="_blank"><div class="social facebook"></div></a>
        </div>
      </div>

      <!-- actions-bar login/logout -->
      <div class="actions-bar">
        <div class="content-container">
          {if $isUserLoggedIn}
            {translate key="plugins.block.user.loggedInAs"} <strong>{$loggedInUsername|escape}</strong>
          {else}
            <span>Acesso do usuário</span>
            <form class="form-control form-login" id="signinForm" name="login" method="post" action="{$userBlockLoginUrl}">
              <label for="loginUsername">{translate key="user.username"}
                <input type="text" id="loginUsername" name="username">
              </label>
              <label for="loginPassword">{translate key="user.password"}
                <input type="password" id="loginPassword" name="password" value="{$password|escape}">
              </label>
              <button class="btn btn-submit">Acessar</button>
              {include file="conferencia/layout.tpl"}
            </form>
            <form class="form-control form-login" action="{url page="user"}">
              <button class="btn btn-submit">Cadastrar</button>
            </form>
          {/if}
        </div>
      </div>
    </header> <!-- fim do header -->
