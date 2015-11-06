<sidebar class="page-sidebar left">
  <div class="sidebar-top">
    <a href="http://www.ifpb.edu.br/" target="_blank">
      <img src="{$baseUrl}/templates/portalpadrao/assets/images/ifpb.png" alt="">
    </a>
  </div>
  <!-- Caixa de conteúdo -->
  <ul class="box">
    <li class="item header">Sobre o evento</li>
    <li class="item">
      <a href="{url context=$homeContext op="index"}">{translate key="navigation.home"}</a>
    </li>
    <li class="item">
      <a href="{url page="about"}">{translate key="navigation.about"}</a>
    </li>
    {if $isUserLoggedIn}
      <li class="item">
        <a href="{url conference="index" page="user"}">{translate key="navigation.userHome"}</a>
      </li>
    {else}
      <li class="item">
        <a href="{url page="login"}">{translate key="navigation.login"}</a>
      </li>
      <li class="item">
        <a href="{url page="user" op="account"}">{translate key="navigation.account"}</a>
      </li>
    {/if}{* $isUserLoggedIn *}

    <li class="item">
      <a href="{url page="search"}">{translate key="navigation.search"}</a>
    </li>

    {if $currentConference}
      {if $currentSchedConfsExist}
        <li class="item">
          <a href="{url schedConf="index" page="schedConfs" op="current"}">{translate key="navigation.current"}</a>
        </li>
      {/if}
      {if $archivedSchedConfsExist}
        <li class="item">
          <a href="{url schedConf="index" page="schedConfs" op="archive"}">
            {translate key="navigation.archive"}
          </a>
        </li>
      {/if}
      {if $enableAnnouncements}
        <li class="item">
          <a href="{url page="announcement"}">
            {translate key="announcement.announcements"}
          </a>
        </li>
      {/if}{* $enableAnnouncements *}

      {call_hook name="Templates::Common::Header::Navbar::CurrentConference"}
    {/if}{* $currentConference *}

    {foreach from=$navMenuItems item=navItem}
      {if $navItem.url != '' && $navItem.name != ''}
        <li class="item">
          <a href="{if $navItem.isAbsolute}{$navItem.url|escape}{else}{$navItem.url|escape}{/if}">
            {if $navItem.isLiteral}
              {$navItem.name|escape}
            {else}
              {translate key=$navItem.name}
            {/if}
          </a>
        </li>
      {/if}
    {/foreach}

    <li class="item">
      <a href="{url page="about"}">{translate key="schedConf.presentations.short"}</a>
    </li>

    <li class="item">
      <a href="{url page="about"}">{translate key="schedConf.overview"}</a>
    </li>

    <li class="item">
      <a href="{url page="about"}">{translate key="paper.submissions"}</a>
    </li>

    <li class="item">
      <a href="{url page="about"}">{translate key="schedConf.accommodation"}</a>
    </li>

    <li class="item">
        <a href="{url page="about" op="organizingTeam"}">{translate key="schedConf.supporters"}</a>
    </li>
  </ul>

  <ul class="box">
    <li class="item header">Sobre</li>
    <li class="item">
      <a href="{url page="about"}">{translate key="navigation.about"}</a>
    </li>
  </ul>
  {if $isUserLoggedIn}
    <!-- Menu de login-->
    <ul class="box">
      <li class="item header">Usuário</li>
      {if $hasOtherJournals}
        <li class="item">
          <a href="{url journal="index" page="user"}">{translate key="navigation.userHome"}</a>
        </li>
      {/if}
      <li class="item">
        <a href="{url page="user" op="profile"}">{translate key="plugins.block.user.myProfile"}</a>
      </li>
      <li class="item">
        <a href="{url page="login" op="signOut"}">{translate key="plugins.block.user.logout"}</a>
      </li>
    </ul>
  {/if}<!-- Fim Menu de login-->
</sidebar>
