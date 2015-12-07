<?php

/**
 * @defgroup pages_notify
 */
 
/**
 * @file pages/notify/index.php
 *
 * Copyright (c) 2000-2012 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @brief Handle site notify requests.
 *
 * @ingroup pages_index
 */

//$Id$


switch ($op) {
  case 'index':
  case 'save':
  case 'showAll':
  case 'view':
  case 'update':
    define('HANDLER_CLASS', 'NotifyHandler');
    import('pages.notify.NotifyHandler');
    break;

}

?>
