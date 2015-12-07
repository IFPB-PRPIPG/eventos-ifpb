<?php

/**
 * @file NotifyDAO.inc.php
 *
 * Copyright (c) 2000-2012 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @class NotifyDAO
 * @ingroup notify
 * @see Notify
 *
 * @brief Operations for retrieving and modifying Notify objects.
 */

// $Id$

import('notify.Notify');

class NotifyDAO extends DAO {

  function getNotifyByID($notifyId) {
    $result =& $this->retrieve(
      'SELECT * FROM notify WHERE id = ?', $notifyId
    );

    $returner = null;
    if ($result->RecordCount() != 0) {
      $returner =& $this->_returnNotifyFromRow($result->GetRowAssoc(false));
    }
    $result->Close();
    return $returner;
  }

  function &getAllNotify() {
    $result =& $this->retrieveRange(
      'SELECT * FROM notify ORDER BY id DESC'
    );

    $returner = new DAOResultFactory($result, $this, '_returnNotifyFromRow');
    return $returner;

  }

  function insertNotify($notify) {
    $this->update(
      'INSERT INTO notify
        (title, content)
        VALUES
        (?, ?)',
      array(
        $notify->getTitle(),
        $notify->getContent()
      )
    );
  }

  function updateNotify($notify) {
    $this->update(
      'UPDATE notify 
        SET title=?, content=?
        WHERE id=?',
      array(
        $notify->getTitle(),
        $notify->getContent(),
        $notify->getNotifyId()
      )
    );
  }
  function &_returnNotifyFromRow($row) {
    $notify = new Notify();
    $notify->setNotifyId($row['id']);
    $notify->setNotifyTitle($row['title']);
    $notify->setNotifyContent($row['content']);

    return $notify;
  }

}

?>
