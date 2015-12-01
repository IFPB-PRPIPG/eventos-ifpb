{if $enableAnnouncementsHomepage}
{php}
  $var = $this->get_template_vars('announcements');
  $showNews = isset($var->records);
  $this->assign_by_ref('showNews', $showNews);
{/php}
  {if $showNews}
  <div class="content-box">
    <div class="header-box">{translate key="announcement.announcementsHome"}</div>
      <div>
        {iterate from=announcements item=announcement}
          <div class="xs-1 mid-4">
            <!-- Se houver link -->
            {if $announcement->getLocalizedDescription() != null}
              <a href="{url page="announcement" op="show" path=$announcement->getId()}">
            {/if}
            {if $announcement->getTypeId()}  
              <h3>{$announcement->getAnnouncementTypeName()}: {$announcement->getLocalizedTitle()}</h3>
            {else}
              <h3>{$announcement->getLocalizedTitle()}</h3>
            {/if}
            
            <p>{$announcement->getLocalizedDescriptionShort()|strip_tags|nl2br|truncate:250}</p>
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
{/if}
