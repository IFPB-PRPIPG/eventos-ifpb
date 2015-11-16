<?php

/**
 * @file IndexHandler.inc.php
 *
 * Copyright (c) 2000-2012 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @class IndexHandler
 * @ingroup pages_index
 *
 * @brief Handle site index requests.
 */

//$Id$


import('handler.Handler');

class IndexHandler extends Handler {
	/**
	 * Constructor
	 **/
	function IndexHandler() {
		parent::Handler();
	}

	/**
	 * If a scheduled conference in a conference is specified, display it.
	 * If no scheduled conference is specified, display a list of scheduled conferences.
	 * If no conference is specified, display list of conferences.
	 */
	function index($args) {
		$this->validate();
		$this->setupTemplate();
		
		$conference =& Request::getConference();
		$schedConf =& Request::getSchedConf();

		if ($schedConf && $conference) {

			// A scheduled conference was specified; display it.
			import('pages.schedConf.SchedConfHandler');
			SchedConfHandler::index($args);

		} elseif ($conference) {
			$redirect = $conference->getSetting('schedConfRedirect');
			if (!empty($redirect)) {
				$schedConfDao =& DAORegistry::getDAO('SchedConfDAO');
				$redirectSchedConf =& $schedConfDao->getSchedConf($redirect, $conference->getId());
				if ($redirectSchedConf) Request::redirect($conference->getPath(), $redirectSchedConf->getPath());
			}

			// A scheduled conference was specified; display it.
			import('pages.conference.ConferenceHandler');
			ConferenceHandler::index($args);

		} else {

			// Otherwise, display a list of conferences to choose from.
			$templateMgr =& TemplateManager::getManager();

			$conferenceDao =& DAORegistry::getDAO('ConferenceDAO');
			$templateMgr->assign('helpTopicId', 'user.home');

			// If the site specifies that we should redirect to a specific conference
			// by default, do it.

			$site =& Request::getSite();
			$conference = $conferenceDao->getConference($site->getRedirect());

			if ($site->getRedirect() && $conference) {
				Request::redirect($conference->getPath());
			}

			// Otherwise, show a list of hosted conferences.

			//DAOs custom (adicionados especificamente para o projeto do portal)
			$announcementDao =& DAORegistry::getDAO('AnnouncementDAO');
			//Função custom para pegar todas as notícias
			$announcements =& $announcementDao->getAllAm();

			//Função custom para pegar todas as ids e informações referentes a imagens
			$numConferences =& $announcementDao->getAllIdImg();

			$templateMgr->assign('intro', $site->getLocalizedIntro());
			$conferences =& $conferenceDao->getEnabledConferences();
			$templateMgr->assign_by_ref('conferences', $conferences);
			$templateMgr->assign_by_ref('site', $site);
			$templateMgr->assign('announcements', $announcements);
			$templateMgr->setCacheability(CACHEABILITY_PUBLIC);
			$templateMgr->assign('portalIndex', true);
			$templateMgr->assign('confImg', unserialize($numConferences->records->fields[1]));	// Linha onde pego o array com informação da imagem nas homes das conferencia
			$templateMgr->assign('confId', $numConferences->records->fields[0]);				// Linha onde pego o array com informação sobre id das conferencias
			$templateMgr->display('portalpadrao/layout.tpl');
		}
	}
}

?>
