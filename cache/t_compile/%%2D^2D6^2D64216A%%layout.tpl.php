<?php /* Smarty version 2.6.26, created on 2015-09-22 16:27:18
         compiled from portalpadrao/layout.tpl */ ?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Portal de Eventos do IFPB</title>
  <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.css">
  <link rel="stylesheet" href="http://necolas.github.io/normalize.css/3.0.2/normalize.css">
  <link rel="stylesheet" href="<?php echo $this->_tpl_vars['baseUrl']; ?>
/templates/portalpadrao/assets/stylesheet/style.css">
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="http://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="icon" href="<?php echo $this->_tpl_vars['baseUrl']; ?>
/templates/portalpadrao/assets/images/icon-portal.png" type="image/png" sizes="16x16">
</head>
<body>

  <div class="page-container">

    <?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "portalpadrao/base/header.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
    <?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "portalpadrao/index/content.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>
    <?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "portalpadrao/base/footer.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>

  </div> <!-- /page-container -->
</body>
</html>