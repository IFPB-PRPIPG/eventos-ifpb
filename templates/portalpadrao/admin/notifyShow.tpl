<div class="text-box border-box">
  <h2 class="header-title border-title-light mid-size">Todos os comunicados cadastrados</h2>
  <ul class="text-list">
    {iterate from=notices item=notice}
      <li class="text-list-item">
        <a href="{url page="notify" op='view' path=$notice->getNotifyId() }">{$notice->getTitle()}</a> - <a class="btn btn-default" href="{url page="notify" op='update' path=$notice->getNotifyId() }">Editar</a>
      </li>
    {/iterate}
  </ul>

</div>