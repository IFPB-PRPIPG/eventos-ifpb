<?php
// XGH

function getNavItemsByConferenceId($id)
{
    $conferenceSettingsDAO =& DAORegistry::getDAO('ConferenceSettingsDAO');
    $conferenceSettings = $conferenceSettingsDAO->getConferenceSettings($id);

    $navItems = $conferenceSettings['navItems'];

    if (is_null($navItems)) {
        $navItems = array('pt_BR'=> array());
    }

    return $navItems;
}

function getNavItemIndexByStaticPageId($id, $navItems)
{
    $index = -1;
    foreach ($navItems['pt_BR'] as $key => $navItem) {
        if (array_key_exists('staticPage', $navItem) && $navItem['staticPage'] == $id) {
            $index = $key;
            break;
       }
    }
    return $index;
}

function modifyNavItems($staticPage)
{
    $navItems = getNavItemsByConferenceId($staticPage->getConferenceId());

    $item = array(
        'name' => current($staticPage->getTitle()),
        'isLiteral' => '1',
        'url' =>  Request::getBaseUrl() . '/index.php/' . Request::getRequestedConferencePath() . '/' . 'index/pages/view/' . $staticPage->getPath(),
        'isAbsolute' => '1',
        'staticPage' => $staticPage->getStaticPageId()
    );

    $index = getNavItemIndexByStaticPageId($staticPage->getStaticPageId(),  $navItems);

    if ($index < 0) {
        $navItems['pt_BR'][] = $item;
    } else {
        $navItems['pt_BR'][$index] = $item;
    }

    $conferenceSettingsDAO =& DAORegistry::getDAO('ConferenceSettingsDAO');
    $conferenceSettingsDAO->updateSetting($staticPage->getConferenceId(), 'navItems', $navItems, 'object', true);
}

function removeNavItem($conferenceId, $staticPageId)
{
    $navItems = getNavItemsByConferenceId($conferenceId);
    $index = getNavItemIndexByStaticPageId($staticPageId,  $navItems);

    if ($index < 0) {
        return;
    }

    unset($navItems['pt_BR'][$index]);

    $conferenceSettingsDAO =& DAORegistry::getDAO('ConferenceSettingsDAO');
    $conferenceSettingsDAO->updateSetting($conferenceId, 'navItems', $navItems, 'object', true);
}
