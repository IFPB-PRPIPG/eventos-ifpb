<div class="text-box border-box">
  <h2 class="header-title border-title-light mid-size">Publique Comunicados</h2>

<form action="{url page="notify" op="save"}" method="POST" class="form-control">

  <fieldset>
    <label for="title" class="label-control-block">Título</label>
    <input id="title" type="text" class="input-control" name="title" {if $notice} value="{$notice->getTitle()}" {/if}>
  </fieldset>

  <fieldset>
    <input id="x" type="hidden" name="content" {if $notice} value='{$notice->getContent()}' {/if} />
    <trix-editor input="x"></trix-editor>
  </fieldset>

  {if $notice}
    <input type="hidden" name="id" value="{$notice->getNotifyId()}" />
    <button class="btn btn-submit">Atualizar</button>
  {else}
    <button class="btn btn-submit">Cadastrar</button>
  {/if}
</form>

</div>