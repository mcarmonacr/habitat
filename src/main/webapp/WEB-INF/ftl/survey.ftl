<#import "common.ftl" as c/>
<@c.page css="resources/css/home.css" css2="resources/css/administrator.css" js="resources/js/agreement.js">
<!-- custom page content -->

<!-- Whole content row -->
<div class="row" id="main-content">
  
<!--   https://bootsnipp.com/snippets/featured/resonsive-features-comparison-table-without-js -->

  <div>
 
		 <!-- Video detail column -->
    	<div class="col-md-12">
		
		<div class="panel panel-default">
		  <div class="panel-body">
		    <h2 class="sub-header">Registro de encuestas</h2>
          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th class="col-md-3">Corporación</th>
                  <th class="col-md-3">País</th>
                  <th class="col-md-3">Proyecto</th>
                  <th class="col-md-3">Encuesta</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>El Machetazo</td>
                  <td>Panamá</td>
                  <td>"Proyecto integral
a 5 años para insertarse
en la comunidad"</td>
                  <td>
	                  <a data-toggle="modal" data-target="#surveyModal">Ver</a>
				  </td>
                </tr>
                <tr>
                  <td>DHL</td>
                  <td>Alemania</td>
                  <td>Voluntriado, Cash</td>
                  <td>
	                  <a data-toggle="modal" data-target="#surveyModal">Ver</a>
				  </td>
                </tr>
                <tr>
                  <td>Delta Air Lines</td>
                  <td>Atlanta, Estados Unidos</td>
                  <td>Brigadas Regionales</td>
                  <td>
	                  <a data-toggle="modal" data-target="#surveyModal">Ver</a>
				  </td>
                </tr>
                <tr>
                  <td>Votorantim Cimentos</td>
                  <td>Brasil</td>
                  <td>Voluntriado, Cash</td>
                  <td>
	                  <a data-toggle="modal" data-target="#surveyModal">Ver</a>
				  </td>
                </tr>
                <tr>
                  <td>Droga Raia</td>
                  <td>Brasil</td>
                  <td>"Voluntariado Corporativo
 +Construccion"</td>
                  <td>
	                  <a data-toggle="modal" data-target="#surveyModal">Ver</a>
				  </td>
                </tr>
                <tr>
                  <td>Drogasil</td>
                  <td>Brasil</td>
                  <td>"Alianza Campana de
Reciclaje Regional
para construccion"</td>
                  <td>
	                  <a data-toggle="modal" data-target="#surveyModal">Ver</a>
				  </td>
                </tr>
                <tr>
                  <td>Petrobras</td>
                  <td>Brasil</td>
                  <td>Voluntriado</td>
                  <td>
	                  <a data-toggle="modal" data-target="#surveyModal">Ver</a>
				  </td>
                </tr>
                <tr>
                  <td>DirecTV</td>
                  <td>California, Estados Unidos</td>
                  <td>Voluntariado en alianza</td>
                  <td>
	                  <a data-toggle="modal" data-target="#surveyModal">Ver</a>
				  </td>
                </tr>
              </tbody>
            </table>
          </div>
		  </div>
		</div>

	
	 <!-- Common loading modal -->
			<#include "/modal/surveyModal.ftl">
	

</div>
    
</@c.page>