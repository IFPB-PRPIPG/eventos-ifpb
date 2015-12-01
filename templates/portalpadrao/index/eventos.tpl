{if !$conferences->wasEmpty()}

<!-- Caixa de revistas -->
<div class="content-box mid-12">
  <div id="revistas" class="header-box alert">Eventos</div>
  <div class="xs-1 mid-6">
  {iterate from=conferences item=conference}
  <a href="{url conference=$conference->getPath() schedConf=""}" class="action">
  <h3>{$conference->getConferenceTitle()|escape}</h3>

  {if $conference->getLocalizedSetting('description') != ''}
    <p>{$conference->getLocalizedSetting('description')|nl2br}</p>
  {/if}
  </a>
  {/iterate}
  </div>
  <div class="footer-box alert"></div>
</div>

{/if}
