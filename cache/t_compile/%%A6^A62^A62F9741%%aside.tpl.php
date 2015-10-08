<?php /* Smarty version 2.6.26, created on 2015-09-22 01:23:08
         compiled from portalpadrao/base/aside.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('block', 'iterate', 'portalpadrao/base/aside.tpl', 11, false),array('function', 'url', 'portalpadrao/base/aside.tpl', 13, false),array('function', 'translate', 'portalpadrao/base/aside.tpl', 38, false),array('modifier', 'escape', 'portalpadrao/base/aside.tpl', 13, false),)), $this); ?>
<!-- sidebar -->
<sidebar id="menu" class="page-sidebar left">
  <div class="sidebar-top">
    <a href="http://www.ifpb.edu.br/" target="_blank">
      <img src="<?php echo $this->_tpl_vars['baseUrl']; ?>
/templates/portalpadrao/assets/images/ifpb.png" alt="Portal IFPB">
    </a>
  </div>
  <!-- Caixa de conteúdo -->
  <ul class="box">
    <li class="item header">Eventos</li>
      <?php $this->_tag_stack[] = array('iterate', array('from' => 'conferences','item' => 'conference')); $_block_repeat=true;$this->_plugins['block']['iterate'][0][0]->smartyIterate($this->_tag_stack[count($this->_tag_stack)-1][1], null, $this, $_block_repeat);while ($_block_repeat) { ob_start(); ?>
        <li class="item">
          <a href="<?php echo $this->_plugins['function']['url'][0][0]->smartyUrl(array('conference' => $this->_tpl_vars['conference']->getPath(),'schedConf' => ""), $this);?>
" class="action"><?php echo ((is_array($_tmp=$this->_tpl_vars['conference']->getConferenceTitle())) ? $this->_run_mod_handler('escape', true, $_tmp) : $this->_plugins['modifier']['escape'][0][0]->smartyEscape($_tmp)); ?>
</a>
        </li>
    <?php $_block_content = ob_get_contents(); ob_end_clean(); $_block_repeat=false;echo $this->_plugins['block']['iterate'][0][0]->smartyIterate($this->_tag_stack[count($this->_tag_stack)-1][1], $_block_content, $this, $_block_repeat); }  array_pop($this->_tag_stack); ?>
  </ul>

  <!-- Portal -->
  <ul class="box">
    <li class="item header">Sobre o Portal</li>
    <li class="item">
      <a href="/public/Portaria de Criação do Portal.pdf" target="_blank">Portaria de Criação</a>
    </li>
    <li class="item">
      <a href="/public/Diretrizes Portal Periódicos IFPB.pdf" target="_blank">Diretrizes do Portal</a>
    </li>
    <li class="item">
      <a href="/public/Diretrizes Portal Periódicos IFPB - APẼNDICES.pdf" target="_blank">Normas</a>
    </li>
  </ul>

  <!-- Usuário -->
  <?php if ($this->_tpl_vars['isUserLoggedIn']): ?>
  <ul class="box">
    <li class="item header">Usuário</li>
    <?php if ($this->_tpl_vars['hasOtherJournals']): ?>
      <li class="item">
        <a href="<?php echo $this->_plugins['function']['url'][0][0]->smartyUrl(array('journal' => 'index','page' => 'user'), $this);?>
"><?php echo $this->_plugins['function']['translate'][0][0]->smartyTranslate(array('key' => "navigation.userHome"), $this);?>
</a>
      </li>
    <?php endif; ?>
    <li class="item">
      <a href="<?php echo $this->_plugins['function']['url'][0][0]->smartyUrl(array('page' => 'user','op' => 'profile'), $this);?>
"><?php echo $this->_plugins['function']['translate'][0][0]->smartyTranslate(array('key' => "plugins.block.user.myProfile"), $this);?>
</a>
    </li>
    <li class="item">
      <a href="<?php echo $this->_plugins['function']['url'][0][0]->smartyUrl(array('page' => 'login','op' => 'signOut'), $this);?>
"><?php echo $this->_plugins['function']['translate'][0][0]->smartyTranslate(array('key' => "plugins.block.user.logout"), $this);?>
</a>
    </li>
  </ul>
  <?php endif; ?>

  <!-- Links uteis -->
  <ul class="box">
    <li class="item header">Links Úteis</li>
    <li class="item">
      <a href="http://www.ifpb.edu.br">Portal IFPB</a>
    </li>
    <li class="item">
      <a href="http://repositorio.ifpb.edu.br">Repositório Digital</a>
    </li>
    <li class="item">
      <a href="http://periodicos.capes.gov.br">Portal periódicos Capes</a>
    </li>
    <li class="item">
      <a href="#">Web Qualis</a>
    </li>
  </ul>
</sidebar>