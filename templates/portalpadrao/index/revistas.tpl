{if !$conferences->wasEmpty()}

<!-- Caixa de revistas -->
<div class="content-box mid-8">
  <div id="revistas" class="header-box alert">Eventos</div>
  {iterate from=conferences item=conference}

<h3>{$conference->getConferenceTitle()|escape}</h3>

{if $conference->getLocalizedSetting('description') != ''}
<p>{$conference->getLocalizedSetting('description')|nl2br}</p>
{/if}

<p><a href="{url conference=$conference->getPath() schedConf=""}" class="action">{translate key="site.conferenceView"}</a></p>
{/iterate}
  <div class="footer-box alert"></div>
</div>

{/if}
