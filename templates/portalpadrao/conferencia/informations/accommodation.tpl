<div class="content-box">
  <h2 class="header-box default">Acomodações</h2>
  <p>{$accommodationDescription|nl2br}</p>
  {if !empty($accommodationFiles)}
    <ul class="text-list">
      <li class="text-list-item-header">Arquivos</li>
    {foreach from=$accommodationFiles item=accommodationFile}
      <li class="text-list-item-indent">
        <a href="{$publicSchedConfFilesDir}/{$accommodationFile.uploadName}" target="_blank">{$accommodationFile.title|default:$accommodationFile.name|escape}</a>
      </li>
    {/foreach}
    </ul>
  {/if}
</div>
