<!--   <div class ="footer"> -->
	 
	 			 <!-- Common loading modal -->
			<#-- <#include "/modal/termsAndConditionsModal.ftl"> -->
	 
	 <div  class="row" id="footer">
		<footer class="navbar navbar-default navbar-fixed-bottom">
			<div class="container-fluid">
			  <div class="row">
<!-- 			  	<hr> -->
			    <div class="col-lg-12">
			      <div class="col-md-8">
<!-- 			      <a data-toggle="modal" data-target="#myFooterModal">T�rminos Y Condiciones</a> | -->
<!-- 			      <a data-toggle="modal" data-target="#myFooterModal">Privacidad</a> -->
<!-- 			        <a href="/DiccionarioLesco/legal/terminos-de-servicio">T�rminos Y Condiciones</a> | <a href="/DiccionarioLesco/legal/privacidad">Privacidad</a> -->
			      </div>
			      <div class="col-md-4">
			        <p class="muted pull-right">� ${year} Habitat. Todos los derechos reservados</p>
			      </div>
			    </div>
			  </div>
			 </div>

		</footer>  
	
	<!-- For performance it is a good practice to place the scripts at the end of the page -->
	
	<#if (parameters??)>
		<#if (parameters?size > 0)>
			<#if parameters.js??>
		 	 	 <script type="text/javascript" src=${parameters.js}></script>
			</#if>
		</#if>
	</#if>

	
</div>