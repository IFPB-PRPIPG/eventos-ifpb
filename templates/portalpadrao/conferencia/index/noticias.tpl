{if $enableAnnouncementsHomepage}
<div class="content-box">
  <div class="header-box">{translate key="announcement.announcementsHome"}</div>
    <div>
      {iterate from=announcements item=announcement}
        <div class="xs-1 mid-4">
          <!-- Se houver link -->
          {if $announcement->getLocalizedDescription() != null}
            <a href="{url page="announcement" op="view" path=$announcement->getId()}">
          {/if}
          {if $announcement->getTypeId()}  
            <h3>{$announcement->getAnnouncementTypeName()}: {$announcement->getLocalizedTitle()}</h3>
          {else}
            <h3>{$announcement->getLocalizedTitle()}</h3>
          {/if}
          
          <p>{$announcement->getLocalizedDescriptionShort()|nl2br}</p>
          {if $announcement->getLocalizedDescription() != null}
            <span>{translate key="announcement.viewLink"}</span>
            </a>
          {/if}
        </div>
      {/iterate}
    </div>
  <div class="footer-box">
    <div class="footer-content">
      <a href="{url page="announcement"}">{translate key="announcement.moreAnnouncements"}</a>
    </div>
  </div>
</div>
{/if}
