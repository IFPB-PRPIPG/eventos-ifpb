<?php

/**
 * @file NotifyHandler.inc.php
 *
 * Copyright (c) 2000-2012 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @class NotifyHandler
 * @ingroup pages_notify
 *
 * @brief Handle site notify requests.
 */

//$Id$


import('handler.Handler');
import('classes.notify.Notify');

class NotifyHandler extends Handler {
  /**
   * Constructor
   **/
  function NotifyHandler() {
    parent::Handler();
  }

  /*
  * Index (Cadastro de novos comunicados)
  */
  function index($args) {
    $this->addCheck(new HandlerValidatorRoles($this, true, null, null, array(ROLE_ID_SITE_ADMIN)));
    $this->addCheck(new HandlerValidatorCustom($this, true, null, null, create_function(null, 'return Request::getRequestedConferencePath() == \'index\';')));
    $this->validate();
    $this->setupTemplate();


    $templateMgr =& TemplateManager::getManager();
    $notifyDAO = DAORegistry::getDAO('NotifyDAO');

    $templateMgr->assign('notifyAdmin', true);            
    $templateMgr->display('portalpadrao/layout.tpl');

  }

  /*
  * Vendo
  */
  function view($id) {

    $templateMgr =& TemplateManager::getManager();
    $notifyDAO = DAORegistry::getDAO('NotifyDAO');
    
    // var_dump(is_int($id));
    // exit(0);
    if (isset($id) && intval($id[0])) {
      $notice = $notifyDAO->getNotifyById($id); 
      $templateMgr->assign('notice', $notice);
    }
    
    $templateMgr->assign('notifyView', true);   
    $templateMgr->display('portalpadrao/layout.tpl');

  }

  function update($id) {
    $this->addCheck(new HandlerValidatorRoles($this, true, null, null, array(ROLE_ID_SITE_ADMIN)));
    $this->addCheck(new HandlerValidatorCustom($this, true, null, null, create_function(null, 'return Request::getRequestedConferencePath() == \'index\';')));
    $this->validate();
    $this->setupTemplate();

    $templateMgr =& TemplateManager::getManager();
    $notifyDAO = DAORegistry::getDAO('NotifyDAO');
    
    if (isset($id) && intval($id[0])) {
      $notice = $notifyDAO->getNotifyById($id); 
      $templateMgr->assign('notice', $notice);
    }
    
    $templateMgr->assign('notifyAdmin', true);   
    $templateMgr->display('portalpadrao/layout.tpl');

  }

  /*
  * Visualizando todos
  */
  function showAll() {
    $templateMgr =& TemplateManager::getManager();
    $notifyDAO = DAORegistry::getDAO('NotifyDAO');
    $notices = $notifyDAO->getAllNotify();
    $templateMgr->assign('notifyAdminShow', true);          
    $templateMgr->assign_by_ref('notices', $notices);
    $templateMgr->display('portalpadrao/layout.tpl');
  }

  /*
  * Salvando
  */
  function save(&$request) {
    $notifyDAO = DAORegistry::getDAO('NotifyDAO');
    $id = $_POST['id'];
    $title = $_POST['title'];
    $content = $_POST['content'];


    if (isset($title) && isset($content) && !isset($id)) {
      $notify = new notify();
      $notify->setNotifyTitle($title);
      $notify->setNotifyContent($content);
      $notifyDAO->insertNotify($notify);

    } elseif (isset($title) && isset($content) && isset($id)) {
      $notify = new notify();
      $notify->setNotifyId($id);
      $notify->setNotifyTitle($title);
      $notify->setNotifyContent($content);
      $notifyDAO->updateNotify($notify);

    }

    Request::redirect(null,'index', 'notify', 'showAll');

  }
}

?>
