<div class="content-box">
  <h2 class="header-box default">Política das Modalidades</h2>
  <!--<p>{$accommodationDescription|nl2br}</p>
  {if !empty($accommodationFiles)}
    <ul class="text-list">
      <li class="text-list-item-header">Arquivos</li>
    {foreach from=$accommodationFiles item=accommodationFile}
      <li class="text-list-item-indent">
        <a href="{$publicSchedConfFilesDir}/{$accommodationFile.uploadName}" target="_blank">{$accommodationFile.title|default:$accommodationFile.name|escape}</a>
      </li>
    {/foreach}
    </ul>
  {/if} -->
</div>





{foreach from=$tracks key=trackKey item=track}{if !$track->getHideAbout()}
  <div id="track{$trackKey|escape}">
  <h4>{$track->getLocalizedTitle()}</h4>
  {if strlen($track->getLocalizedPolicy()) > 0}
    <p>{$track->getLocalizedPolicy()|nl2br}</p>
  {/if}

  {assign var="hasDirectors" value=0}
  {foreach from=$trackDirectors item=trackTrackDirectors key=key}
    {if $key == $track->getId()}
      {foreach from=$trackTrackDirectors item=trackDirector}
        {if 0 == $hasDirectors++}
        {translate key="user.role.directors"}
        <ul class="plain">
        {/if}
        <li>{$trackDirector->getFirstName()|escape} {$trackDirector->getLastName()|escape}{if strlen($trackDirector->getAffiliation()) > 0}, {$trackDirector->getAffiliation()|escape}{/if}</li>
      {/foreach}
    {/if}
  {/foreach}
  {if $hasDirectors}</ul>{/if}

  <table class="plain" width="50%">
    <tr>
      <td width="50%">{if !$track->getDirectorRestricted()}{icon name="checked"}{else}{icon name="unchecked"}{/if} {translate key="manager.tracks.open"}</td>
      <td width="50%">{if $track->getMetaReviewed()}{icon name="checked"}{else}{icon name="unchecked"}{/if} {translate key="manager.tracks.peerReviewed"}</td>
    </tr>
  </table>
</div>{/if}{/foreach}