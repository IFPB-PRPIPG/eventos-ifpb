<?php /* Smarty version 2.6.26, created on 2015-09-19 16:08:17
         compiled from admin/importOCS1.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'url', 'admin/importOCS1.tpl', 17, false),array('function', 'translate', 'admin/importOCS1.tpl', 23, false),array('function', 'fieldLabel', 'admin/importOCS1.tpl', 34, false),array('modifier', 'escape', 'admin/importOCS1.tpl', 25, false),)), $this); ?>
<?php echo ''; ?><?php $this->assign('pageTitle', "admin.conferences.importOCS1"); ?><?php echo ''; ?><?php $this->assign('helpTopicId', "site.siteManagement"); ?><?php echo ''; ?><?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "common/header.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?><?php echo ''; ?>


<form method="post" action="<?php echo $this->_plugins['function']['url'][0][0]->smartyUrl(array('page' => 'admin','op' => 'doImportOCS1'), $this);?>
">

<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "common/formErrors.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>

<?php if ($this->_tpl_vars['importError']): ?>
<p>
	<span class="formError"><?php echo $this->_plugins['function']['translate'][0][0]->smartyTranslate(array('key' => "admin.conferences.importErrors"), $this);?>
:</span>
	<ul class="formErrorList">
		<li><?php echo ((is_array($_tmp=$this->_tpl_vars['importError'])) ? $this->_run_mod_handler('escape', true, $_tmp) : $this->_plugins['modifier']['escape'][0][0]->smartyEscape($_tmp)); ?>
</li>
	</ul>
</p>
<?php endif; ?>

<p><span class="instruct"><?php echo $this->_plugins['function']['translate'][0][0]->smartyTranslate(array('key' => "admin.conferences.importOCS1Instructions"), $this);?>
</span></p>

<table class="data" width="100%">
	<tr valign="top">
		<td width="20%" class="label"><?php echo $this->_plugins['function']['fieldLabel'][0][0]->smartyFieldLabel(array('name' => 'title','key' => "common.path",'required' => 'true'), $this);?>
</td>
		<td width="80%" class="value">
			<input type="text" id="conferencePath" name="conferencePath" value="<?php echo ((is_array($_tmp=$this->_tpl_vars['conferencePath'])) ? $this->_run_mod_handler('escape', true, $_tmp) : $this->_plugins['modifier']['escape'][0][0]->smartyEscape($_tmp)); ?>
" size="16" maxlength="32" class="textField" />
			<br />
			<span class="instruct"><?php echo $this->_plugins['function']['translate'][0][0]->smartyTranslate(array('key' => "admin.conference.pathImportInstructions"), $this);?>
</span>
		</td>
	</tr>
	<tr valign="top">
		<td class="label"><?php echo $this->_plugins['function']['fieldLabel'][0][0]->smartyFieldLabel(array('name' => 'title','key' => "admin.conference.importPath",'required' => 'true'), $this);?>
</td>
		<td class="value">
			<input type="text" id="importPath" name="importPath" value="<?php echo ((is_array($_tmp=$this->_tpl_vars['importPath'])) ? $this->_run_mod_handler('escape', true, $_tmp) : $this->_plugins['modifier']['escape'][0][0]->smartyEscape($_tmp)); ?>
" size="60" maxlength="255" class="textField" />
			<br />
			<span class="instruct"><?php echo $this->_plugins['function']['translate'][0][0]->smartyTranslate(array('key' => "admin.conference.importPathInstructions"), $this);?>
</span>
		</td>
	</tr>
	<tr valign="top">
		<td class="label"><?php echo $this->_plugins['function']['translate'][0][0]->smartyTranslate(array('key' => "common.options"), $this);?>
</td>
		<td class="value">
			<input type="checkbox" name="options[]" id="options-importRegistrations" value="importRegistrations"<?php if ($this->_tpl_vars['options'] && in_array ( 'importRegistrations' , $this->_tpl_vars['options'] )): ?> checked="checked"<?php endif; ?> /> <label for="options-importRegistrations"><?php echo $this->_plugins['function']['translate'][0][0]->smartyTranslate(array('key' => "admin.conferences.importRegistrations"), $this);?>
</label><br/>
			<input type="checkbox" name="options[]" id="options-emailUsers" value="emailUsers"<?php if ($this->_tpl_vars['options'] && in_array ( 'emailUsers' , $this->_tpl_vars['options'] )): ?> checked="checked"<?php endif; ?> /> <label for="options-emailUsers"><?php echo $this->_plugins['function']['translate'][0][0]->smartyTranslate(array('key' => "admin.conferences.emailUsers"), $this);?>
</label><br/>
			<input type="checkbox" name="options[]" id="options-transcode" value="transcode"<?php if ($this->_tpl_vars['options'] && in_array ( 'transcode' , $this->_tpl_vars['options'] )): ?> checked="checked"<?php endif; ?> /> <label for="options-transcode"><?php echo $this->_plugins['function']['translate'][0][0]->smartyTranslate(array('key' => "admin.conferences.transcode"), $this);?>
</label>
		</td>
	</tr>
</table>

<p><input type="submit" value="<?php echo $this->_plugins['function']['translate'][0][0]->smartyTranslate(array('key' => "common.import"), $this);?>
" class="button defaultButton" /> <input type="button" value="<?php echo $this->_plugins['function']['translate'][0][0]->smartyTranslate(array('key' => "common.cancel"), $this);?>
" class="button" onclick="document.location.href='<?php echo $this->_plugins['function']['url'][0][0]->smartyUrl(array('page' => 'admin','op' => 'conferences'), $this);?>
'" /></p>

</form>

<p><span class="formRequired"><?php echo $this->_plugins['function']['translate'][0][0]->smartyTranslate(array('key' => "common.requiredField"), $this);?>
</span></p>

<?php $_smarty_tpl_vars = $this->_tpl_vars;
$this->_smarty_include(array('smarty_include_tpl_file' => "common/footer.tpl", 'smarty_include_vars' => array()));
$this->_tpl_vars = $_smarty_tpl_vars;
unset($_smarty_tpl_vars);
 ?>