{**
 * plugins/generic/staticPages/content.tpl
 *
 * Copyright (c) 2000-2012 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * Display Static Page content
 *
 * $Id$
 *}
{assign var="pageTitleTranslated" value=$title}
{**
 * header.tpl
 *
 * Copyright (c) 2000-2012 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * Common site header.
 *
 *}
{strip}
{if !$pageTitleTranslated}{translate|assign:"pageTitleTranslated" key=$pageTitle}{/if}
{if $pageCrumbTitle}
	{translate|assign:"pageCrumbTitleTranslated" key=$pageCrumbTitle}
{elseif !$pageCrumbTitleTranslated}
	{assign var="pageCrumbTitleTranslated" value=$pageTitleTranslated}
{/if}
{/strip}<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset={$defaultCharset|escape}" />
	<title>{$pageTitleTranslated}</title>
	<meta name="description" content="{$metaSearchDescription|escape}" />
	<meta name="keywords" content="{$metaSearchKeywords|escape}" />
	<meta name="generator" content="{$applicationName} {$currentVersionString|escape}" />
	{$metaCustomHeaders}
	{if $displayFavicon}<link rel="icon" href="{$faviconDir}/{$displayFavicon.uploadName|escape:"url"}" type="{$displayFavicon.mimeType|escape}" />{/if}
	<link rel="stylesheet" href="{$baseUrl}/lib/pkp/styles/common.css" type="text/css" />
	<link rel="stylesheet" href="{$baseUrl}/styles/common.css" type="text/css" />
	
	<!-- Base Jquery -->
	{if $allowCDN}<script src="http://www.google.com/jsapi"></script>
	<script>
		google.load("jquery", "1");
		google.load("jqueryui", "1");
	</script>
	{else}
	<script type="text/javascript" src="{$baseUrl}/lib/pkp/js/lib/jquery/jquery.min.js"></script>
	<script type="text/javascript" src="{$baseUrl}/lib/pkp/js/lib/jquery/plugins/jqueryUi.min.js"></script>
	{/if}
	<!-- Add javascript required for font sizer -->
	<script type="text/javascript" src="{$baseUrl}/lib/pkp/js/jquery.cookie.js"></script>	
	<script type="text/javascript" src="{$baseUrl}/lib/pkp/js/fontController.js" ></script>
	<script type="text/javascript">{literal}
		$(function(){
			fontSize("#sizer", "body", 9, 16, 32, "{/literal}{$baseUrl}{literal}"); // Initialize the font sizer
		});
	{/literal}</script>
	{call_hook|assign:"leftSidebarCode" name="Templates::Common::LeftSidebar"}
	{call_hook|assign:"rightSidebarCode" name="Templates::Common::RightSidebar"}
	{if $leftSidebarCode || $rightSidebarCode}<link rel="stylesheet" href="{$baseUrl}/styles/sidebar.css" type="text/css" />{/if}
	{if $leftSidebarCode}<link rel="stylesheet" href="{$baseUrl}/styles/leftSidebar.css" type="text/css" />{/if}
	{if $rightSidebarCode}<link rel="stylesheet" href="{$baseUrl}/styles/rightSidebar.css" type="text/css" />{/if}
	{if $leftSidebarCode && $rightSidebarCode}<link rel="stylesheet" href="{$baseUrl}/styles/bothSidebars.css" type="text/css" />{/if}

	{foreach from=$stylesheets item=cssUrl}
		<link rel="stylesheet" href="{$cssUrl}" type="text/css" />
	{/foreach}

	<script type="text/javascript" src="{$baseUrl}/lib/pkp/js/general.js"></script>
	{$additionalHeadData}

<link rel="stylesheet" href="http://necolas.github.io/normalize.css/3.0.2/normalize.css">
<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="{$baseUrl}/templates/portalpadrao/assets/stylesheet/style.css">
<link rel="stylesheet" href="{$baseUrl}/templates/portalpadrao/assets/stylesheet/default.css">
</head>
{literal}
  <style>
    #body {
      width: 960px;
      margin: 0 auto;
    }
    #body:after,
    #body:before {
      clear: both;
      display: table;
      content: ' ';
      zoom: 1;
    }

    #sidebar,
    #leftSidebar {
      float: left;
    }

    div#leftSidebar {
      width: 100%;
    }
    #leftSidebar > #menu {
      width: 100% !important;
    }

    #main {
      margin-left: 1% !important;
      border: 0;
      width: 100%;
      padding-left: 0.83333%;
    }

    div#rightSidebar {
    	float: none;
    	display: block;
    	width: 100%;
    }

    a:hover {
    	background: transparent;
    }
    table#customAboutItems-0-content_tbl.mceLayout {
    	// width: 100%;
    }
  </style>
{/literal}
<body>


{include file="portalpadrao/base/header.tpl"}


<div class="page-breadcrumb">
  <div class="content-container">
    <span>

    </span>
  </div>
</div>

<div class="content-container">
	<div id="main">
{if $leftSidebarCode || $rightSidebarCode}
  <div id="sidebar mid-3">
      <div id="leftSidebar mid-12">
            {include file="portalpadrao/conferencia/base/sidebar.tpl"}
      </div>
  </div>
{/if}

<div class="main-content">
	<h2>{$pageTitleTranslated}</h2>

	{if $pageSubtitle && !$pageSubtitleTranslated}{translate|assign:"pageSubtitleTranslated" key=$pageSubtitle}{/if}
	{if $pageSubtitleTranslated}
		<h3>{$pageSubtitleTranslated}</h3>
	{/if}


{$content}

{include file="common/footer.tpl"}

