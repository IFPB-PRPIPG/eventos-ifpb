{**
 * reviewForms.tpl
 *
 * Copyright (c) 2000-2012 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * Display list of unpublished review forms in conference management.
 *
 *}
{assign var="pageTitle" value="manager.reviewForms"}
{include file="common/header.tpl"}

<p>{translate key="manager.reviewForms.list.description"}</p>

<div id="reviewForms">
<table width="100%" class="listing">
	<tr>
		<td class="headseparator" colspan="4">&nbsp;</td>
	</tr>
	<tr class="heading" valign="bottom">
		<td width="40%">{translate key="manager.reviewForms.title"}</td>
		<td width="20%">{translate key="manager.reviewForms.inReview"}</td>
		<td width="15%">{translate key="manager.reviewForms.completed"}</td>
		<td width="25%" align="right">{translate key="common.action"}</td>
	</tr>
	<tr>
		<td class="headseparator" colspan="4">&nbsp;</td>
	</tr>
{iterate from=reviewForms item=reviewForm name=reviewForms}
{if $reviewForm->getCompleteCount() == 0 && $reviewForm->getIncompleteCount() == 0}
	{assign var=canEdit value=1}
{else}
	{assign var=canEdit value=0}
{/if}
	<tr valign="top">
		<td>{$reviewForm->getLocalizedTitle()|escape}</td>
		<td>{$reviewForm->getIncompleteCount()|escape}</td>
		<td>{$reviewForm->getCompleteCount()|escape}</td>
		<td align="right" class="nowrap">
			{if $canEdit}<a href="{url op="editReviewForm" path=$reviewForm->getId()}" class="action">{translate key="common.edit"}</a>&nbsp;|{/if}
			{strip}
				{if $reviewForm->getActive()}
					<a href="{url op="deactivateReviewForm" path=$reviewForm->getId()}" class="action">{translate key="common.deactivate"}</a>
				{else}
					<a href="{url op="activateReviewForm" path=$reviewForm->getId()}" class="action">{translate key="common.activate"}</a>
				{/if}
				&nbsp;|
			{/strip}
			{if !$canEdit}<a href="{url op="copyReviewForm" path=$reviewForm->getId()}" class="action">{translate key="common.copy"}</a>&nbsp;|{/if}
			<a href="{url op="previewReviewForm" path=$reviewForm->getId()}" class="action">{translate key="common.preview"}</a>&nbsp;|
			{if $canEdit}<a href="{url op="deleteReviewForm" path=$reviewForm->getId()}" onclick="return confirm('{translate|escape:"jsparam" key="manager.reviewForms.confirmDeleteUnpublished"}')" class="action">{translate key="common.delete"}</a>&nbsp;|{/if}
			<a href="{url op="moveReviewForm" d=u reviewFormId=$reviewForm->getId()}" class="action">&uarr;</a>&nbsp;<a href="{url op="moveReviewForm" d=d reviewFormId=$reviewForm->getId()}" class="action">&darr;</a>
		</td>
	</tr>
	<tr>
		<td colspan="4" class="{if $reviewForms->eof()}end{/if}separator">&nbsp;</td>
	</tr>
{/iterate}

{if $reviewForms->wasEmpty()}
	<tr>
		<td colspan="4" class="nodata">{translate key="manager.reviewForms.noneCreated"}</td>
	</tr>
	<tr>
		<td colspan="4" class="endseparator">&nbsp;</td>
	</tr>
{else}
	<tr>
		<td colspan="2" align="left">{page_info iterator=$reviewForms}</td>
		<td colspan="2" align="right">{page_links anchor="reviewForms" name="reviewForms" iterator=$reviewForms}</td>
	</tr>
{/if}

</table>

<a class="action" href="{url op="createReviewForm"}">{translate key="manager.reviewForms.create"}</a>
</div>
{include file="common/footer.tpl"}
