<?php
// XGH

function get_nav_items($dao, $conferenceId, $locale)
{
    $conference = $dao->getConferenceSettings($conferenceId);
    return (array_key_exists('navItems', $conference)
        && !is_null($conference['navItems']))
        ? $conference['navItems']
        : array($locale => array());
}

function get_item_index($staticPageId, $items, $locale)
{
    $index = -1;
    foreach ($items[$locale] as $key => $item) {
        if (array_key_exists('staticPage', $item)
            && $item['staticPage'] == $staticPageId) {
            $index = $key;
            break;
        }
    }
    return $index;
}

function add_item_nav($dao, $page, $locale)
{
    $items = get_nav_items($dao, $page->getConferenceId(), $locale);
    $item = array(
        'name' => $page->getTitle($locale),
        'isLiteral' => '1',
        'isAbsolute' => '1',
        'url' => Request::getRequestedConferencePath()
            . '/index/pages/view/'
            . $page->getPath(),
        'staticPage' => $page->getStaticPageId()
    );
    $index = get_item_index($page->getStaticPageId(), $items, $locale);
    if ($index < 0) {
        $items[$locale][] = $item;
    } else {
        $items[$locale][$index] = $item;
    }
    $dao->updateSetting($page->getConferenceId(), 'navItems', $items, 'object', true);
}

function remove_item_nav($dao, $conferenceId, $staticPageId, $locale)
{
    $items = get_nav_items($dao, $conferenceId, $locale);
    $index = get_item_index($staticPageId, $items, $locale);
    if ($index < 0) {
        return;
    }
    unset($items[AppLocale::getLocale()][$index]);
    $dao->updateSetting($conferenceId, 'navItems', $items, 'object', true);
}
