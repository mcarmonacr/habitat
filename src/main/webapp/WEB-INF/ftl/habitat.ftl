<#import "common.ftl" as c/>
<@c.page css="resources/css/home.css" js="resources/js/home.js">
    <!-- custom page content -->
    
    
    <div class="row">
    	<!-- Terms column -->
<!--     <div class="col-md-4 col-md-offset-4"> -->
<div class="col-md-5">

<div class="panel-group" id="accordion2" role="tablist" aria-multiselectable="true">
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingOne2">
      <h4 class="panel-title">
        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion2" href="#collapseOne2" aria-expanded="false" aria-controls="collapseOne2">
          Reporte de Proyectos
        </a>
      </h4>
    </div>
    <div id="collapseOne2" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne2">
      <div class="panel-body">
        <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
<!--                   <th>Tarea</th> -->
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>
                  	<a data-toggle="modal" data-target="#onGoingProjectsModal">Ver Reporte de Proyectos en Marcha</a>
                  </td>
                </tr>
                <tr>
                  <td>
                  	<a data-toggle="modal" data-target="#pastProjectsModal">Ver Reporte de Proyectos en Pasados</a>
                  </td>
                </tr>
              </tbody>
            </table>
          </div>
      </div>
    </div>
  </div>
</div>


		    </div>
		    
<!-- 		    Indicators Column  -->
		    		 <!-- Video detail column -->
    	
    				<div class="panel-group col-md-7" id="accordion" role="tablist" aria-multiselectable="true">
					  <div class="panel panel-default">
					    <div class="panel-heading" role="tab" id="headingOne">
					      <h4 class="panel-title">
					        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
					          Tareas Generales
					        </a>
					      </h4>
					    </div>
					    <div id="collapseOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
					      <div class="panel-body">
<!-- 					        <div class="col-md-7 text-info bg-info"> -->
					        <div>
							<!-- Video Details Section -->
							<div class="panel panel-default">
							  <div class="panel-body">
							  
<!-- 							  	<h2 class="sub-header">Tareas Generales</h2> -->
					          <div class="table-responsive">
					            <table class="table table-striped">
					              <thead>
					                <tr>
					                  <th>Tarea</th>
					                  <th>Información</th>
					                  <th>Indicador(es)</th>
					                  <th>Acción</th>
					                </tr>
					              </thead>
					              <tbody>
					                <tr>
					                  <td>Recopilar información de prospectos</td>
					                  <td></td>
					                  <td></td>
					                  <td>
									  	<a href="/habitat/corporaciones">Formulario de Prospectos</a>
									  </td>
					                </tr>
					                <tr>
					                  <td>Recopilar información de proyectos</td>
					                  <td></td>
					                  <td></td>
					                  <td>
									  	<a href="/habitat/proyectos">Formulario de Proyectos</a>
									  </td>
					                </tr>
					                <tr>
					                  <td>Comenzar Prospección Coca Cola</td>
					                  <td>Último Contacto: 24/17/16</td>
					                  <td></td>
					                  <td>
									  	<a href="/habitat/proyectos">Formulario de investigación Corporativa</a>
									  </td>
					                </tr>
					                <tr>
					                  <td>Registrar 2 prospectos más antes de finalizar este período</td>
					                  <td>Actual: 4 - Meta 6</td>
					                  <td></td>
					                  <td>
									  	<a href="/habitat/proyectos">Formulario de investigación Corporativa</a>
									  </td>
					                </tr>
					              </tbody>
					            </table>
					          </div>
							  </div>
							</div>
							</div>
					      </div>
					    </div>
					  </div>
					</div>
    </div>
    
    <div class="row">
    	    
    <div class="panel panel-body col-md-4 col-md-offset-4">
<!-- 		  <div class="panel-body"> -->

    	<!-- Terms Section -->
	    <div class="list-group">
	    
<!-- 	    <div class="row"> -->
<!-- 	    	<h2><span class="label label-default terms-header">Corporaciones</span></h2> -->
<!-- 	    	<h2><span class="label label-default terms-header">Proyectos</span></h2> -->
<!-- 	    </div> -->
	    
<!-- 	    <div class="row input-group search-text-box"> -->
<!-- 		  <span class="glyphicon glyphicon-search input-group-addon home-search-glyphicon"></span> -->
<!-- 		  <input type="text" class="form-control" placeholder="Buscar" aria-describedby="sizing-addon2"> -->
<!-- 		</div> -->
		
	    <div class="row dropdown dropdown-container-home">
		  <button class="btn btn-default dropdown-toggle dropdown-button-home" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
		    <span class="glyphicon glyphicon-tasks"></span> Corporación
		    <span class="caret"></span>
		    <div id="categoryIdDiv" hidden></div>
		  </button>
		  <ul class="dropdown-menu dropdown-ul-home" aria-labelledby="dropdownMenu1">
		  		
		  		
		  		<#list listCorporations as corporation>
					<li onclick="assignCorporation($(this).find('a').text(), $(this).find('div').text())">
						<a href="#">${corporation.corporationName}</a>
						<div hidden>${corporation.corporationId}</div>
					</li>
	  			</#list>
		  		
<!-- 		  		<li onclick="assignCorporation($(this).find('a').text(), $(this).find('div').text())"> -->
<!-- 					<a href="#">EPA</a> -->
<!-- 					<div hidden>1</div> -->
<!-- 				</li> -->
				
<!-- 				<li onclick="assignCorporation($(this).find('a').text(), $(this).find('div').text())"> -->
<!-- 					<a href="#">Coca Cola</a> -->
<!-- 					<div hidden>2</div> -->
<!-- 				</li> -->
				
<!-- 				<li onclick="assignCorporation($(this).find('a').text(), $(this).find('div').text())"> -->
<!-- 					<a href="#">IBM</a> -->
<!-- 					<div hidden>3</div> -->
<!-- 				</li> -->
				
<!-- 				<li onclick="assignCorporation($(this).find('a').text(), $(this).find('div').text())"> -->
<!-- 		  			<a href="#">Cualquiera</a> -->
<!-- 		  			<div hidden></div> -->
<!-- 		  		</li> -->
	
<!-- 			    <li><a href="#">EPA</a></li> -->
<!-- 			    <li><a href="#">Coca Cola</a></li> -->
<!-- 			    <li><a href="#">IBM</a></li> -->
<!-- 			    <li role="separator" class="divider"></li> -->
<!-- 			    <li><a href="#">Cualquiera</a></li> -->
		    
		  </ul>
		</div>
		
		<div class="row dropdown dropdown-container-home">
		  <button class="btn btn-default dropdown-toggle dropdown-button-home" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
		    <span class="glyphicon glyphicon-tasks"></span> Proyecto
		    <span class="caret"></span>
		    <div id="categoryIdDiv" hidden></div>
		  </button>
		  <ul class="dropdown-menu dropdown-ul-home" aria-labelledby="dropdownMenu2">
		  		
		  		
		  		<#list listProjects as project>
					<li onclick="assignProject($(this).find('a').text(), $(this).find('div').text())">
						<a href="#">${project.projectName}</a>
						<div hidden>${project.projectId}</div>
					</li>
	  			</#list>
		  		
<!-- 		  	<li onclick="assignProject($(this).find('a').text(), $(this).find('div').text())"> -->
<!-- 				<a href="#">Talamanca</a> -->
<!-- 				<div hidden>3</div> -->
<!-- 			</li> -->
			
<!-- 			<li onclick="assignProject($(this).find('a').text(), $(this).find('div').text())"> -->
<!-- 				<a href="#">Villas del Valle</a> -->
<!-- 				<div hidden>3</div> -->
<!-- 			</li> -->
			
<!-- 			<li onclick="assignProject($(this).find('a').text(), $(this).find('div').text())"> -->
<!-- 				<a href="#">Bajo Los Ledezma</a> -->
<!-- 				<div hidden>3</div> -->
<!-- 			</li> -->
			
<!-- 			<li onclick="assignProject($(this).find('a').text(), $(this).find('div').text())"> -->
<!-- 	  			<a href="#">Cualquiera</a> -->
<!-- 	  			<div hidden></div> -->
<!-- 	  		</li>	 -->
		  		
<!-- 		    <li><a href="#">Talamanca</a></li> -->
<!-- 		    <li><a href="#">Villas del Valle</a></li> -->
<!-- 		    <li><a href="#">Bajo Los Ledezma</a></li> -->
<!-- 		    <li role="separator" class="divider"></li> -->
<!-- 		    <li><a href="#">Cualquiera</a></li> -->
		  </ul>
		</div>
	    
<!-- 	    <div class="row terms-list"> -->
<!-- 		  <a href="#" class="list-group-item active"> -->
<!-- 		    Cras justo odio -->
<!-- 		  </a> -->
<!-- 		  <a href="#" class="list-group-item">Proyecto #1</a> -->
<!-- 		  <a href="#" class="list-group-item">Proyecto #2</a> -->
<!-- 		  <a href="#" class="list-group-item">Proyecto #3</a> -->
<!-- 		  <a href="#" class="list-group-item">Proyecto #4</a> -->
<!-- 		  <a href="#" class="list-group-item">Proyecto #5</a> -->
<!-- 		  <a href="#" class="list-group-item">Proyecto #6</a> -->
		  
<!-- 		  </div> -->
		  
<!-- 		  <div class="row"> -->
<!-- 		  	<h1><span class="label label-default terms-header">Total: 250</span></h1> -->
<!-- 		  </div> -->
		  
		</div>
		
<!-- 		  </div> -->
		</div>
    </div>
    
    
    <!-- Whole content row -->
    <div class="row" id="main-content">
    
    

		 <!-- Video detail column -->
    	<div class="col-md-4 text-success bg-success">
		<!-- Video Details Section -->
		<div class="panel panel-default">
		  <div class="panel-body">
		  
		  <h2 class="sub-header">Tareas Presentes</h2>
          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>Tarea</th>
                  <th>Información</th>
                  <th>Proyecto</th>
                  <th>Proceso</th>
                </tr>
              </thead>
              <tbody>
                <tr class='clickable-row' data-toggle="modal" data-target="#completeTaskModal" data-href='#'>
                  <td>Presentar propuesta a la corporación Procter & Gamble</td>
                  <td>Días Disponibles: 4</td>
                  <td>Construcción Trocha</td>
                  <td>Solicitud</td>
                </tr>
                <tr class='clickable-row' data-toggle="modal" data-target="#uploadAgreementModal" data-href='#'>
                  <td>Subir Convenio a la base de datos</td>
                  <td>Días Disponibles: 1</td>
                  <td>Limpieza de Terreno</td>
                  <td>Solicitud</td>
                </tr>
                <tr>
                  <td>Presentar propuesta a la corporación BAC San José</td>
                  <td>Días disponibles: 2</td>
                  <td>Construcción Piletas</td>
                  <td>Solicitud</td>
                </tr>
                <tr class='clickable-row' data-toggle="modal" data-target="#sendReportModal" data-href='#'>
                  <td>Asegurar el informe parcial</td>
                  <td>Fecha: 12/12/16</td>
                  <td>Construcción Colegios</td>
                  <td>Involucramiento</td>
                </tr>
                <tr>
                  <td>Presentar propuesta a la corporación HP</td>
                  <td>Días disponibles: 3</td>
                  <td>Cosntrucción Piletas</td>
                  <td>Solicitud</td>
                </tr>
                <tr class='clickable-row' data-toggle="modal" data-target="#sendReportModal" data-href='#'>
                  <td>Asegurar el informe parcial</td>
                  <td>Fecha: 12/12/16</td>
                  <td>Construcción Colegios</td>
                  <td>Involucramiento</td>
                </tr>
                <tr>
                  <td>Presentar propuesta a la corporación Barceló</td>
                  <td>Días disponibles: 2</td>
                  <td>Cosntrucción Piletas</td>
                  <td>Solicitud</td>
                </tr>
                <tr class='clickable-row' data-toggle="modal" data-target="#sendReportModal" data-href='#'>
                  <td>Asegurar el informe parcial</td>
                  <td>Fecha: 12/12/16</td>
                  <td>Construcción Colegios</td>
                  <td>Involucramiento</td>
                </tr>
              </tbody>
            </table>
          </div>
		  	
<!-- 		  	<div class="row"> -->
<!-- 		    	<div id="addTermModal" class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel"> -->
<!-- 				  <div class="modal-dialog modal-md" role="document"> -->
<!-- 				    <div class="modal-content text-center"> -->
<!-- 				      ¡Término Agregado Exitosamente! -->
<!-- 				      <div class="modal-footer"> -->
<!-- 				        <div class="row"> -->
<!-- 				        	<div class="col-md-5 text-center"> -->
<!-- 				        		<a href="/DiccionarioLesco/agregar" class="btn btn-info" role="button">Agregar Nuevo Término</a> -->
<!-- 				        	</div> -->
<!-- 				        	<div class="col-md-2"></div> -->
<!-- 					        <div class="col-md-5 text-center"> -->
<!-- 					        	<a href="/DiccionarioLesco/" class="btn btn-info" role="button">Página Principal</a> -->
<!-- 					        </div> -->
<!-- 				        </div> -->
<!-- 				      </div> -->
<!-- 				    </div> -->
<!-- 				  </div> -->
<!-- 				</div> -->
<!--     		</div>  -->

		  </div>
		</div>
  </div>
  
  
  <!-- Video detail column -->
    	<div class="col-md-4 text-warning bg-warning">
		<!-- Video Details Section -->
		<div class="panel panel-default">
		  <div class="panel-body">
		  
		  <h2 class="sub-header">Tareas Futuras</h2>
          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>Tarea</th>
                  <th>Información</th>
                  <th>Proyecto</th>
                  <th>Proceso</th>
                </tr>
              </thead>
              <tbody>
                <tr class='clickable-row' data-toggle="modal" data-target="#sendPollModal" data-href='#'>
                  <td>Enviar encuesta de percepción de la gestión del aporte</td>
                  <td>Días Disponibles: 10</td>
                  <td>Construcción Escuelas</td>
                  <td>Solicitud</td>
                </tr>
                <tr class='clickable-row' data-toggle="modal" data-target="#sendReportModal" data-href='#'>
                  <td>Asegurar el informe parcial</td>
                  <td>Fecha: 24/01/17</td>
                  <td>Edificación de Viviendas</td>
                  <td>Involucramiento</td>
                </tr>
                <tr class='clickable-row' data-toggle="modal" data-target="#sendAlianceReminderModal" data-href='#'>
                  <td>Enviar recordatorio para realizar la actividad de alianza a ON</td>
                  <td>Fecha: 10/11/17</td>
                  <td>Todos</td>
                  <td>Fidelización</td>
                </tr>
                <tr>
                  <td>Asegurar el informe Final</td>
                  <td>Fecha: 24/08/17</td>
                  <td>Construcción</td>
                  <td>Involucramiento</td>
                </tr>
              </tbody>
            </table>
          </div>
		  	
<!-- 		  	<div class="row"> -->
<!-- 		    	<div id="addTermModal" class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel"> -->
<!-- 				  <div class="modal-dialog modal-md" role="document"> -->
<!-- 				    <div class="modal-content text-center"> -->
<!-- 				      ¡Término Agregado Exitosamente! -->
<!-- 				      <div class="modal-footer"> -->
<!-- 				        <div class="row"> -->
<!-- 				        	<div class="col-md-5 text-center"> -->
<!-- 				        		<a href="/DiccionarioLesco/agregar" class="btn btn-info" role="button">Agregar Nuevo Término</a> -->
<!-- 				        	</div> -->
<!-- 				        	<div class="col-md-2"></div> -->
<!-- 					        <div class="col-md-5 text-center"> -->
<!-- 					        	<a href="/DiccionarioLesco/" class="btn btn-info" role="button">Página Principal</a> -->
<!-- 					        </div> -->
<!-- 				        </div> -->
<!-- 				      </div> -->
<!-- 				    </div> -->
<!-- 				  </div> -->
<!-- 				</div> -->
<!--     		</div>  -->

		  </div>
		</div>
  </div>
  
  
  <!-- Video detail column -->
    	<div class="col-md-4 text-danger bg-danger">
		<!-- Video Details Section -->
		<div class="panel panel-default">
		  <div class="panel-body">
		  
		  	<h2 class="sub-header">Tareas Pasadas</h2>
          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>Tarea</th>
                  <th>Información</th>
                  <th>Proyecto</th>
                  <th>Proceso</th>
                </tr>
              </thead>
              <tbody>
                <tr class='clickable-row' data-toggle="modal" data-target="#sendContributionReminderModal" data-href='#'>
                  <td>Enviar correo a la corporación IBM recordando el aporte acordado para el 15/09/17 </td>
                  <td>Días disponibles: 0</td>
                  <td>Entrega Lotes</td>
                  <td>Solicitud</td>
                </tr>
                <tr class='clickable-row' data-toggle="modal" data-target="#sendReportModal" data-href='#'>
                  <td>Asegurar el informe parcial</td>
                  <td>Fecha: 24/01/16</td>
                  <td>Cosntrucción Colegios</td>
                  <td>Involucramiento</td>
                </tr>
                <tr class='clickable-row' data-toggle="modal" data-target="#uploadAgreementModal" data-href='#'>
                  <td>Subir Convenio a la base de datos</td>
                  <td>Días Disponibles: 1</td>
                  <td>Limpieza de Terreno</td>
                  <td>Solicitud</td>
                </tr>
              </tbody>
            </table>
          </div>
		  	
<!-- 		  	<div class="row"> -->
<!-- 		    	<div id="addTermModal" class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel"> -->
<!-- 				  <div class="modal-dialog modal-md" role="document"> -->
<!-- 				    <div class="modal-content text-center"> -->
<!-- 				      ¡Término Agregado Exitosamente! -->
<!-- 				      <div class="modal-footer"> -->
<!-- 				        <div class="row"> -->
<!-- 				        	<div class="col-md-5 text-center"> -->
<!-- 				        		<a href="/DiccionarioLesco/agregar" class="btn btn-info" role="button">Agregar Nuevo Término</a> -->
<!-- 				        	</div> -->
<!-- 				        	<div class="col-md-2"></div> -->
<!-- 					        <div class="col-md-5 text-center"> -->
<!-- 					        	<a href="/DiccionarioLesco/" class="btn btn-info" role="button">Página Principal</a> -->
<!-- 					        </div> -->
<!-- 				        </div> -->
<!-- 				      </div> -->
<!-- 				    </div> -->
<!-- 				  </div> -->
<!-- 				</div> -->
<!--     		</div>  -->

		  </div>
		</div>
  </div>
  
	<!-- Common loading modal -->
	<#include "/modal/loadingModal.ftl">
	
	<#include "/modal/pastProjectsModal.ftl">
	<#include "/modal/onGoingProjectsModal.ftl">
	
	<#include "/modal/uploadAgreementModal.ftl">
	<#include "/modal/completeTaskModal.ftl">
	<#include "/modal/sendPollModal.ftl">
	<#include "/modal/sendContributionReminderModal.ftl">
	<#include "/modal/sendReportModal.ftl">
	<#include "/modal/sendAlianceReminderModal.ftl">
  
</div>
    
</@c.page>