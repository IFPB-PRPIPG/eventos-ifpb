<?php /* Smarty version 2.6.26, created on 2015-09-21 23:58:42
         compiled from portalpadrao/index/content.tpl */ ?>
<div class="page-breadcrumb">
  <div class="content-container">
    <span></span>
  </div>
</div>

<!-- Conteúdo central + sidebar -->
<div class="page-content">
  <div class="content-container">
    <?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "portalpadrao/base/aside.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>

    <!-- Meio -->
    <main class="main-content">

      <?php if ($this->_tpl_vars['portalIndex']): ?>
        <img src="<?php echo $this->_tpl_vars['baseUrl']; ?>
/templates/portalpadrao/assets/images/banner_periodicos_site.png" alt="" class="image-responsible banner-content">

        <!-- slide -->
        <?php if ($this->_tpl_vars['showSlide'] == 'true'): ?>
          <div class="slide-content">
            <div class="fotorama" data-autoplay="true" data-arrows="true" data-navwidth="15%" data-max-width="100%">
            <?php $_from = $this->_tpl_vars['slideItems']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['key'] => $this->_tpl_vars['item']):
?>
              <div data-img="<?php echo $this->_tpl_vars['item']['imagem']; ?>
" data-caption="">
                <a href="<?php echo $this->_tpl_vars['item']['link']; ?>
"></a>
              </div>
            <?php endforeach; endif; unset($_from); ?>
            </div>
          </div>
        <?php endif; ?>

        <?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "portalpadrao/index/noticias.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
        <?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "portalpadrao/index/revistas.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
        <?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "portalpadrao/index/search.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
      <?php endif; ?>

      <?php if ($this->_tpl_vars['readNews']): ?>
        <?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "portalpadrao/news/read.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
      <?php endif; ?>

      <?php if ($this->_tpl_vars['listNews']): ?>
        <?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "portalpadrao/news/list.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
      <?php endif; ?>

      <?php if ($this->_tpl_vars['adminSlider']): ?>
        <?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "portalpadrao/admin/index.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
      <?php endif; ?>

    </main> <!-- /main-container -->
  </div>
</div>
