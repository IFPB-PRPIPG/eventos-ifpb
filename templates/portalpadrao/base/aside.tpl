<!-- sidebar -->
<sidebar id="menu" class="page-sidebar left">
  <div class="sidebar-top">
    <a href="http://www.ifpb.edu.br/" target="_blank">
      <img src="{$baseUrl}/templates/portalpadrao/assets/images/ifpb.png" alt="Portal IFPB">
    </a>
  </div>
  <!-- Caixa de conteúdo -->
  <ul class="box">
    <li class="item header">Eventos</li>
      {iterate from=conferencias item=conferencia}
        <li class="item">
          <a href="{url conference=$conferencia->getPath() schedConf=""}" class="action">{$conferencia->getConferenceTitle()|escape}</a>
        </li>
    {/iterate}
  </ul>


  <!-- Usuário -->
  {if $isUserLoggedIn}
  <ul class="box">
    <li class="item header">Usuário</li>
      <li class="item">
        <a href="{url journal="index" page="user"}">{translate key="navigation.userHome"}</a>
      </li>
    <li class="item">
      <a href="{url page="login" op="signOut"}">{translate key="plugins.block.user.logout"}</a>
    </li>
  </ul>
  {/if}

  <!-- Links uteis -->
  <ul class="box">
    <li class="item header">Links Úteis</li>
    <li class="item">
      <a href="http://periodicos.ifpb.edu.br">Periódicos IFPB</a>
    </li>
    <li class="item">
      <a href="http://www.ifpb.edu.br">Portal IFPB</a>
    </li>
    <li class="item">
      <a href="http://repositorio.ifpb.edu.br">Repositório Digital</a>
    </li>
    <li class="item">
      <a href="http://periodicos.capes.gov.br">Portal periódicos Capes</a>
    </li>
    <li class="item">
      <a href="#">Web Qualis</a>
    </li>
  </ul>
</sidebar>
