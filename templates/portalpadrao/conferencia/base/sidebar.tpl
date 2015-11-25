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

    <li class="item">
      <a href="{url page="manager" op="timeline"}">{translate key="schedConf.overview"}</a>
    </li>

    <li class="item">
      <a href="{url page="about" op="submissions"}">{translate key="paper.submissions"}</a>
    </li>
    
    <li class="item">
      <a href="{url page="schedConf" op="trackPolicies"}">{translate key="schedConf.trackPolicies"}</a>
    </li>

    <li class="item">
      <a href="{url page="schedConf" op="registration"}">{translate key="schedConf.registration"}</a>
    </li>

    <li class="item">
      <a href="{url page="schedConf" op="accommodation"}">{translate key="schedConf.accommodation"}</a>
    </li>

    <li class="item">
        <a href="{url page="about" op="organizingTeam"}">{translate key="schedConf.supporters"}</a>
    </li>

  </ul>

  {if $isUserLoggedIn}
  <ul class="box">
    <li class="item header">Usuario</li>
      <li class="item">
        <a href="{url conference="index" page="user"}">{translate key="navigation.userHome"}</a>
      </li>
  </ul>
  {/if}{* $isUserLoggedIn *}

  <ul class="box">
    <li class="item header">Submissão</li>
    
    <li class="item">
      <a href="">Datas importantes</a>
    </li>

    <li class="item">
      <a href="">Diretrizes</a>
    </li>

    <!--<li class="item">
      <a href="{url page="about"}">{translate key="schedConf.presentations.short"}</a>
    </li>

    <li class="item">
      <a href="{url page="manager" op="timeline"}">{translate key="schedConf.overview"}</a>
    </li>

    <li class="item">
      <a href="{url page="about" op="submissions"}">{translate key="paper.submissions"}</a>
    </li>

    <li class="item">
      <a href="{url page="informations" op="accommodation"}">{translate key="schedConf.accommodation"}</a>
    </li>

    <li class="item">
        <a href="{url page="about" op="organizingTeam"}">{translate key="schedConf.supporters"}</a>
    </li>-->
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
    <!--Menu sobre -->
    <ul class="box">
      <li class="item header">Sobre</li>
      
        <li class="item">
          <a href="{url page="about"}">{translate key="navigation.about"}</a>
        </li>
      
        <li class="item">
          <a href="{url page="about" op="contact"}">Equipe</a>
        </li>

        <li class="item">
          <a href="{url page="about" op="contact"}">{translate key="about.contact"}</a>
        </li>
      
    </ul>
    <!--Menu Eventos anteriores-->

    <ul class="box">
      <li class="item header">Eventos Anteriores</li>
            
    </ul>

</sidebar>
