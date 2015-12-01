<div class="text-box">
	<h2 class="header-title large-size">{$conferenceSettings.title.pt_BR}</h2>
	<!-- Section Utilizada para descrição -->
	<div class="text-box-section border-box">
		<p>{$conferenceSettings.description.pt_BR}</p>
	</div>

{if not $showAboutSchedConf and not $currentSchedConfs->eof()}
  <h3 class="text-box-title large-size">
    {translate key="about.currentConferences"}
  </h3>

  <div class="text-box-section border-box">
  <ul class="plain">
    {iterate from=currentSchedConfs item=schedConf}
      <li><a href="{url schedConf=$schedConf->getPath()}">{$schedConf->getFullTitle()}</a></li>
    {/iterate}
  </ul>
  </div>
{/if}
<!-- Contatos e equipe -->
{if not (empty($conferenceSettings.contactTitle) && empty($conferenceSettings.contactAffiliation) && empty($conferenceSettings.contactAffiliation) && empty($conferenceSettings.contactMailingAddress) && empty($conferenceSettings.contactPhone) && empty($conferenceSettings.contactFax) && empty($conferenceSettings.contactEmail))}
<h3 class="text-box-title large-size border-title-light">{translate key="about.contact.principalContact"}</h3>

<ul>
  {if !empty($conferenceSettings.contactName)}
    <li class="text-list-item"> <!-- Titulação antes do nome -->
      {if !empty($conferenceSettings.contactTitle)}
        {$conferenceSettings.contactTitle|escape}
      {/if}
        {$conferenceSettings.contactName|escape}
    </li>
  {/if}
  {if !empty($conferenceSettings.contactAffiliation.$currentLocale)}
    <li class="text-list-item">{$conferenceSettings.contactAffiliation.$currentLocale|escape}</li>
  {/if}
  {if !empty($conferenceSettings.contactMailingAddress)}
    <li class="text-list-item">{$conferenceSettings.contactMailingAddress|nl2br}</li>
  {/if}
  {if !empty($conferenceSettings.contactPhone)}
    <li class="text-list-item">{translate key="about.contact.phone"}: {$conferenceSettings.contactPhone|escape}</li>
  {/if}
  {if !empty($conferenceSettings.contactFax)}
    <li class="text-list-item">{translate key="about.contact.fax"}: {$conferenceSettings.contactFax|escape}</li>
  {/if}
  {if !empty($conferenceSettings.contactEmail)}
    <li class="text-list-item">{translate key="about.contact.email"}: {mailto address=$conferenceSettings.contactEmail|escape encode="hex"}</li>
  {/if}
</ul>
{/if}


{if not (empty($conferenceSettings.supportName) && empty($conferenceSettings.supportPhone) && empty($conferenceSettings.supportEmail))}
<h3 class="text-box-title large-size border-title-light">{translate key="about.contact.supportContact"}</h3>
<div class="border-box">
  <ul>
    {if !empty($conferenceSettings.supportName)}
      <li class="text-list-item">{$conferenceSettings.supportName|escape}</li>
    {/if}
    {if !empty($conferenceSettings.supportPhone)}
      <li class="text-list-item">{translate key="about.contact.phone"}: {$conferenceSettings.supportPhone|escape}</li>
    {/if}
    {if !empty($conferenceSettings.supportEmail)}
      <li class="text-list-item">{translate key="about.contact.email"}: {mailto address=$conferenceSettings.supportEmail|escape encode="hex"}</li>
    {/if}
  </ul>
</div>
{/if}

{foreach from=$groups item=group}
  <h4>{$group->getLocalizedTitle()}</h4>
  {assign var=groupId value=$group->getId()}
  {assign var=members value=$teamInfo[$groupId]}

  <ol class="organizingTeam">
    {foreach from=$members item=member}
      {assign var=user value=$member->getUser()}
      <li><a href="javascript:openRTWindow('{url op="organizingTeamBio" path=$user->getId()}')">{$user->getFullName()|escape}</a>{if $user->getAffiliation()}, {$user->getAffiliation()|escape}{/if}{if $user->getCountry()}{assign var=countryCode value=$user->getCountry()}{assign var=country value=$countries.$countryCode}, {$country|escape}{/if}</li>
    {/foreach}{* $members *}
  </ol>
{/foreach}{* $groups *}

{if count($directors) > 0}
  {if count($directors) == 1}
    <h4>{translate key="user.role.director"}</h4>
  {else}
    <h4>{translate key="user.role.directors"}</h4>
  {/if}

  <ol class="organizingTeam">
    {foreach from=$directors item=director}
      <li><a href="javascript:openRTWindow('{url op="organizingTeamBio" path=$director->getId()}')">{$director->getFullName()|escape}</a>{if $director->getAffiliation()}, {$director->getAffiliation()|escape}{/if}{if $director->getCountry()}{assign var=countryCode value=$director->getCountry()}{assign var=country value=$countries.$countryCode}, {$country|escape}{/if}</li>
    {/foreach}
  </ol>
{/if}

{if count($trackDirectors) > 0}
  {if count($trackDirectors) == 1}
    <h4>{translate key="user.role.trackDirector"}</h4>
  {else}
    <h4>{translate key="user.role.trackDirectors"}</h4>
  {/if}

  <ol class="organizingTeam">
    {foreach from=$trackDirectors item=trackDirector}
      <li><a href="javascript:openRTWindow('{url op="organizingTeamBio" path=$trackDirector->getId()}')">{$trackDirector->getFullName()|escape}</a>{if $trackDirector->getAffiliation()}, {$trackDirector->getAffiliation()|escape}{/if}{if $trackDirector->getCountry()}{assign var=countryCode value=$trackDirector->getCountry()}{assign var=country value=$countries.$countryCode}, {$country|escape}{/if}</li>
    {/foreach}
  </ol>
{/if}

{if $currentSchedConf && $currentSchedConf->getLocalizedSetting('reviewPolicy') != ''}
<div id="peerReviewProcess"><h3>{translate key="about.peerReviewProcess"}</h3>
<p>{$currentSchedConf->getLocalizedSetting('reviewPolicy')|nl2br}</p>

<div class="separator">&nbsp;</div>
</div>
{/if}

{if $currentConference->getLocalizedSetting('archiveAccessPolicy') != ''}
<div id="archiveAccessPolicy"><h3>{translate key="about.archiveAccessPolicy"}</h3>
<p>{$currentConference->getLocalizedSetting('archiveAccessPolicy')|nl2br}</p>

<div class="separator">&nbsp;</div>
</div>
{/if}

{if !empty($conferenceSettings.enableDelayedOpenAccess) || !empty($conferenceSettings.enableAuthorSelfArchive)}
<div id="openAccessPolicy"><h3>{translate key="about.openAccessPolicy"}</h3>
  {if $conferenceSettings.enableDelayedOpenAccess}
    <h4>{translate key="about.delayedOpenAccess"}</h4> 
    <p>{translate key="about.delayedOpenAccessDescription" delayedOpenAccessDuration=$conferenceSettings.delayedOpenAccessDuration|escape}</p>
  {/if}
  {if $conferenceSettings.enableAuthorSelfArchive} 
    <h4>{translate key="about.authorSelfArchive"}</h4> 
    <p>{$currentConference->getLocalizedSetting('authorSelfArchivePolicy')|nl2br}</p>
  {/if}

<div class="separator">&nbsp;</div>
</div>
{/if}

{if $conferenceSettings.enableLockss && $currentConference->getLocalizedSetting('lockssLicense') != ''}
<div id="archiving"><h3>{translate key="about.archiving"}</h3>
<p>{$currentConference->getLocalizedSetting('lockssLicense')|nl2br}</p>

<div class="separator">&nbsp;</div>
</div>
{/if}

{foreach key=key from=$currentConference->getLocalizedSetting('customAboutItems') item=customAboutItem name=customAboutItems}
  {if !empty($customAboutItem.title)}
    <div id="custom-{$key|escape}"></a><h3>{$customAboutItem.title|escape}</h3>
    <p>{$customAboutItem.content|nl2br}</p>
    {if !$smarty.foreach.customAboutItems.last}<div class="separator">&nbsp;</div>{/if}
    </div>
  {/if}
{/foreach}

<!-- Submissoes -->
<div id="onlineSubmissions">
  <h3>{translate key="about.onlineSubmissions"}</h3>
<p>
  {translate key="about.onlineSubmissions.haveAccount" conferenceTitle=$siteTitle|escape}<br />
  <a href="{url page="login"}" class="action">{translate key="about.onlineSubmissions.login"}</a>
</p>
<p>
  {translate key="about.onlineSubmissions.needAccount"}<br />
  <a href="{url page="user" op="account"}" class="action">{translate key="about.onlineSubmissions.registration"}</a>
</p>
<p>{translate key="about.onlineSubmissions.registrationRequired"}</p>
</div>

{if $authorGuidelines != ''}
  <div class="separator">&nbsp;</div>

  <div id="authorGuidelines">
    <h3>{translate key="about.authorGuidelines"}</h3>
  <p>{$authorGuidelines|nl2br}</p>
  </div>
{/if}

{if $submissionChecklist}
  <div class="separator">&nbsp;</div>

  <div id="submissionPreparationChecklist">
    <h3>{translate key="about.submissionPreparationChecklist"}</h3>
  <ol>
    {foreach from=$submissionChecklist item=checklistItem}
      <li>{$checklistItem.content|nl2br}</li> 
    {/foreach}
  </ol>
  </div>
{/if}{* $submissionChecklist *}

{if $copyrightNotice != ''}
  <div class="separator">&nbsp;</div>

  <div id="copyrightNotice">
    <h3>{translate key="about.copyrightNotice"}</h3>
  <p>{$copyrightNotice|nl2br}</p>
  </div>
{/if}

{if $privacyStatement != ''}
  <div id="privacyStatement">
    <h3>{translate key="about.privacyStatement"}</h3>
  <div class="separator">&nbsp;</div>

  <p>{$privacyStatement|nl2br}</p>
  </div>
{/if}
</div>