{include file="portalpadrao/conferencia/base/breadcrumbs.tpl"}
    <div class="page-content">
      <div class="content-container">
        
        <!-- sidebar -->
		    {include file="portalpadrao/conferencia/base/sidebar.tpl"}
		
        <!-- Meio -->
        <main class="main-content">

          

          {* Página inicial *}
          {if $conferenceHome}
            {include file="portalpadrao/conferencia/index/index.tpl"}
          {/if} <!-- fecha a index -->
          
          {* Página de SOBRE *}
          {if $journalAbout}
            {include file="portalpadrao/conferencia/sobre.tpl"}
          {/if}

          {* Página de submissão *}
          {if $journalRegister}
            {include file="portalpadrao/conferencia/register/register.tpl"}
          {/if}

          {*Página de submissão no main da conferencia*}
          {if $about_submission}
            {include file="templates/schedConf/cfp.tpl"}
          {/if}

          {if $about_cfp}
            {include file="templates/schedConf/cfp.tpl"}
          {/if}

          {* Página de Anteriores / Atual*}
          {if $journalArchive}
            {include file="portalpadrao/conferencia/arquivo/list.tpl"}
          {/if}

          {* Página da edição corrente da conferencia + editorial*}
          {if $journalIssue}
            {include file="portalpadrao/conferencia/arquivo/issue.tpl"}
          {/if}

          {* Página de ajuda /diretrizes *}

          {if $journalHelp}
            {include file="portalpadrao/conferencia/help/general.tpl"}
          {/if}

          {* Página de visualização dos artigos*}
          {if $journalArticle}
            {include file="portalpadrao/conferencia/article/article.tpl"}
          {/if}

          {* Página de visualização do processo de submissão *}
          {if $journalPublishing}
            {include file="portalpadrao/conferencia/help/publishingsystem.tpl"}
          {/if}

          {if $registerLogin}
            {include file="portalpadrao/conferencia/register/register.tpl"}
          {/if}

          <!-- footer -->
	    <div class="content-box">{include file="common/footer.tpl"}</div>
		
        </main>
      </div>
   </div> <!-- /page content -->
  </div> <!-- /page-container -->
