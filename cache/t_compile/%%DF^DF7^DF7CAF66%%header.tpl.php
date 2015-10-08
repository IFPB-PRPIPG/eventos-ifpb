<?php /* Smarty version 2.6.26, created on 2015-10-02 08:20:08
         compiled from portalpadrao/base/header.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'url', 'portalpadrao/base/header.tpl', 48, false),array('function', 'call_hook', 'portalpadrao/base/header.tpl', 49, false),array('function', 'html_options_translate', 'portalpadrao/base/header.tpl', 52, false),array('function', 'translate', 'portalpadrao/base/header.tpl', 71, false),array('modifier', 'escape', 'portalpadrao/base/header.tpl', 71, false),)), $this); ?>
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
          <?php if ($this->_tpl_vars['portalIndex']): ?>
            <li class="item first"><a href="#revistas">Ir para revistas</a></li>
          <?php endif; ?>
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
            <h1 class="page-name">Eventos</h1>
            <span>Instituto Federal de Educação Ciência e Tecnologia da Paraíba</span>
          </div>
          <form id="simpleSearchForm" method="post" action="<?php echo $this->_plugins['function']['url'][0][0]->smartyUrl(array('page' => 'search','op' => 'search'), $this);?>
" class="form-control form-search-header">
            <?php ob_start(); ?><?php echo $this->_plugins['function']['call_hook'][0][0]->smartyCallHook(array('name' => "Templates::Search::SearchResults::FilterInput",'filterName' => 'simpleQuery','filterValue' => "",'size' => 15), $this);?>
<?php $this->_smarty_vars['capture']['default'] = ob_get_contents();  $this->assign('filterInput', ob_get_contents());ob_end_clean(); ?>
            <input name="query" class="search-input-header" type="text">
            <select id="searchField" name="searchField" size="1" style="display: none;">
              <?php echo $this->_plugins['function']['html_options_translate'][0][0]->smartyHtmlOptionsTranslate(array('options' => $this->_tpl_vars['articleSearchByOptions']), $this);?>

            </select>
            <button class="search-button"></button>
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
          <?php if ($this->_tpl_vars['isUserLoggedIn']): ?>
            <?php echo $this->_plugins['function']['translate'][0][0]->smartyTranslate(array('key' => "plugins.block.user.loggedInAs"), $this);?>
 <strong><?php echo ((is_array($_tmp=$this->_tpl_vars['loggedInUsername'])) ? $this->_run_mod_handler('escape', true, $_tmp) : $this->_plugins['modifier']['escape'][0][0]->smartyEscape($_tmp)); ?>
</strong>
          <?php else: ?>
            <span>Acesso do usuário</span>
            <form class="form-control form-login" id="signinForm" name="login" method="post" action="<?php echo $this->_tpl_vars['loginUrl']; ?>
">
              <label for="loginUsername"><?php echo $this->_plugins['function']['translate'][0][0]->smartyTranslate(array('key' => "user.username"), $this);?>

                <input type="text" id="loginUsername" name="username">
              </label>
              <label for="loginPassword"><?php echo $this->_plugins['function']['translate'][0][0]->smartyTranslate(array('key' => "user.password"), $this);?>

                <input type="password" id="loginPassword" name="password" value="<?php echo ((is_array($_tmp=$this->_tpl_vars['password'])) ? $this->_run_mod_handler('escape', true, $_tmp) : $this->_plugins['modifier']['escape'][0][0]->smartyEscape($_tmp)); ?>
">
              </label>
              <button class="btn btn-submit">Acessar</button>
            </form>
            <form class="form-control form-login">
              <button class="btn btn-submit"><a href="<?php echo $this->_plugins['function']['url'][0][0]->smartyUrl(array('page' => 'user'), $this);?>
">Cadastrar</a></button>
            </form>
          <?php endif; ?>
        </div>
      </div>
    </header> <!-- fim do header -->