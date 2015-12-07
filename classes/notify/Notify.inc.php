<?php

/**
 * @defgroup notify
 */
 
/**
 * @file Notify.inc.php
 *
 * Copyright (c) 2000-2012 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @class Notify
 * @ingroup notify 
 * @see NotifyDAO
 *
 * @brief Basic class describing a notify.
 *
 */
import('notify.Notify');

class Notify extends DataObject {
  
  function Notify() {
    parent::DataObject();
  }

  function getNotifyId() {
    if (Config::getVar('debug', 'deprecation_warnings')) trigger_error('Deprecated function.');
    return $this->getId();
  }

  function getTitle() {
    return $this->getData('title');
  }

  function getContent() {
    return $this->getData('content');
  }

  function setNotifyId($notifyId) {
    return $this->setId($notifyId);
  }

  function setNotifyTitle($title) {
    return $this->setData('title', $title);
  }

  function setNotifyContent($content) {
    return $this->setData('content', $content);


  }
}

?>
