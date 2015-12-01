<sidebar class="page-sidebar left">
  <div class="sidebar-top">
    <a href="http://www.ifpb.edu.br/" target="_blank">
      <img src="{$baseUrl}/templates/portalpadrao/assets/images/ifpb.png" alt="">
    </a>
  </div>
  <!-- Caixa de conteúdo -->
  <ul class="box">
    <li class="item header">Evento</li>
    <li class="item">
      <a href="{url context=$homeContext op="index"}">{translate key="navigation.home"}</a>
    </li>
    <li class="item">
      <a href="{url page="about"}">{translate key="schedConf.presentations.short"}</a>
    </li>
    {if $archivedSchedConfsExist} <!-- Se existe conferencia, existe um arquivo de conferencias -->
      <li class="item">
        <a href="{url schedConf="index" page="schedConfs" op="archive"}">{translate key="navigation.archive"}
        </a>
      </li>
    {/if}
  </ul>

  {if not $showAboutSchedConf and not $conferencias->eof() and not $showConferences}
  <ul class="box">
    <li class="item header">{translate key="about.currentConferences"}</li>
    {iterate from=conferencias item=conferencia}
    <li class="item">
      <a href="{url schedConf=$conferencia->getPath()}">{$conferencia->getFullTitle()}</a>
    </li>
    {/iterate}
  </ul>
  {/if}

  {if $isUserLoggedIn}
    <!-- Menu de login-->
    <ul class="box">
      <li class="item header">Usuário</li>
      <li class="item">
        <a href="{url conference="index" page="user"}">{translate key="navigation.userHome"}</a>
      </li>
      <li class="item">
        <a href="{url page="user" op="profile"}">{translate key="plugins.block.user.myProfile"}</a>
      </li>
      <li class="item">
        <a href="{url page="login" op="signOut"}">{translate key="plugins.block.user.logout"}</a>
      </li>
    </ul>
  {/if}<!-- Fim Menu de login-->

  {if $schedConfPostOverview || $schedConfShowCFP
        || $schedConfPostPolicies || $schedConfShowProgram ||  $schedConfPostPresentations || $schedConfPostSchedule 
        || $schedConfPostPayment  || $schedConfPostAccommodation || $schedConfPostSupporters  || $schedConfPostTimeline}

  <ul class="box">
    <li class="item header">{translate key="schedConf.contents"}</li>
    {if $schedConfPostOverview}
      <li class="item">
        <a href="{url page="schedConf" op="overview"}">{translate key="schedConf.overview"}</a></li>{/if}
    {if $schedConfShowCFP}    
        <li class="item">
          <a href="{url page="schedConf" op="cfp"}">{translate key="schedConf.cfp"}</a>
          {if $submissionsOpenDate} ({$submissionsOpenDate|date_format:$dateFormatLong} - {$submissionsCloseDate|date_format:$dateFormatLong}){/if}</li>
    {/if}
    {if $schedConfPostTrackPolicies}
      <li class="item">
        <a href="{url page="schedConf" op="trackPolicies"}">{translate key="schedConf.trackPolicies"}</a></li>{/if}
    {if $schedConfShowProgram}
      <li class="item">
        <a href="{url page="schedConf" op="program"}">{translate key="schedConf.program"}</a></li>{/if}
    {if $schedConfPostPresentations}
      <li class="item">
        <a href="{url page="schedConf" op="presentations"}">{translate key="schedConf.presentations.short"}</a></li>{/if}
    {if $schedConfPostSchedule}
      <li class="item">
        <a href="{url page="schedConf" op="schedule"}">{translate key="schedConf.schedule"}</a></li>{/if}
    {if $schedConfPostPayment}
      <li class="item">
        <a href="{url page="schedConf" op="registration"}">{translate key="schedConf.registration"}</a></li>{/if}
    {if $schedConfPostAccommodation}
      <li class="item">
        <a href="{url page="schedConf" op="accommodation"}">{translate key="schedConf.accommodation"}</a></li>{/if}
    {if $schedConfPostSupporters}
      <li class="item">
        <a href="{url page="about" op="organizingTeam"}">{translate key="schedConf.supporters"}</a></li>{/if}
    {if $schedConfPostTimeline}
      <li class="item">
        <a href="{url page="schedConf" op="timeline"}">{translate key="schedConf.timeline"}</a></li>{/if}
  </ul>
  {/if}

  <!--Menu sobre -->
  <ul class="box">
    <li class="item header">Sobre</li>    
    <li class="item">
      <a href="{url page="about"}">{translate key="navigation.about"}</a>
    </li>     
    <li class="item">
      <a href="{url page="about" op="contact"}">{translate key="about.contact"}</a>
    </li>  
  </ul>
</sidebar>
