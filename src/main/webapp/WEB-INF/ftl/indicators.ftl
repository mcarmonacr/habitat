<#import "common.ftl" as c/>
<@c.page css="resources/css/home.css" css2="resources/css/administrator.css" js="resources/js/projects.js">
<!-- custom page content -->

<!-- Whole content row -->
<div class="row" id="main-content">
  
<!--   https://bootsnipp.com/snippets/featured/resonsive-features-comparison-table-without-js -->

<div class="col-md-8 col-md-offset-2">   




<div class="widget stacked widget-table action-table">
    				
				<div class="widget-header">
					<i class="icon-th-list"></i>
<!-- 					<h2>Indicadores</h2> -->
				</div> <!-- /widget-header -->
				
				
				
				
				<div class="widget-content">
					
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
								<th class="col-md-8">Indicador</th>
								<th class="col-md-3">Valor</th>
								<th class="col-md-1">Detalle</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>Tiempo entre el registro del prospecto y presentación de la propuesta</td>
								<td>
									 <div class="progress" data-label="0%" title="Meta: 95%">
  <span class="value" style="width:95%;"></span>
</div>
								</td>
								<td>
									<a data-toggle="modal" data-target="#indicatorsModal" data-href='#' href="#" class="btn btn-default" role="button">Ver</a>
								</td>
							</tr>
							<tr>
								<td>Tiempo entre la conclusión del proyecto y la entrega del informe final</td>
								<td>
									 <div class="progress" data-label="0%" title="Meta: 95%">
  <span class="value" style="width:95%;" ></span>
</div>
								</td>
								<td>
									<a data-toggle="modal" data-target="#indicatorsModal2" data-href='#' href="#" class="btn btn-default" role="button">Ver</a>
								</td>
							</tr>
							<tr>
								<td>Porcentaje de Respuesta de la Encuesta de satisfacción</td>
								<td>
									 <div class="progress-grey" data-label="0%">
  <span class="value-grey" style="width:0%;"></span>
</div>
								</td>
								<td>
									<a data-href='#' href="#" class="btn btn-default" role="button">Ver</a>
								</td>
							</tr>
							<tr>
								<td>Tiempo hacia la renovación de alianza</td>
								<td>
									 <div class="progress-grey" data-label="0%">
  <span class="value-grey" style="width:0%;"></span>
</div>
								</td>
								<td>
									<a data-href='#' href="#" class="btn btn-default" disabled role="button">Ver</a>
								</td>
							</tr>
							
							
							
							
<!-- 							Old data -->
							
<!-- 							<tr> -->
<!-- 								<td>Máximo Prospectos/Proyectos</td> -->
<!-- 								<td> -->
<!-- 									 <input id="textinput1-4" name="textinput1-4" value="5" type="text" placeholder="" class="form-control input-md">   -->
<!-- 								</td> -->
<!-- 								<td> -->
<!-- 									<a data-toggle="modal" data-target="#indicatorsModal" data-href='#' href="#" class="btn btn-default" role="button">Ver</a> -->
<!-- 								</td> -->
<!-- 							</tr> -->
<!-- 							<tr> -->
<!-- 								<td>Días antes para presentar propuesta a la corporación</td> -->
<!-- 								<td> -->
<!-- 									 <input id="textinput1-4" name="textinput1-4" value="5" type="text" placeholder="" class="form-control input-md">   -->
<!-- 								</td> -->
<!-- 								<td> -->
<!-- 									<a data-toggle="modal" data-target="#indicatorsModal" data-href='#' href="#" class="btn btn-default" role="button">Ver</a> -->
<!-- 								</td> -->
<!-- 							</tr> -->
<!-- 							<tr> -->
<!-- 								<td>Próxima Renovación de Alianza</td> -->
<!-- 								<td> -->
<!-- 									 <div> -->
<!-- 									  <div> -->
<!-- 									  <div class="input-group input-append date" id="datePicker"> -->
<!-- 									    <input type="text" class="form-control" id="availableDate" name="availableDate" value="10/06/2017" /> -->
<!-- 									    			http://www.daterangepicker.com/ -->
<!-- 									    	<span class="input-group-addon"> -->
<!-- 									            <span class="glyphicon glyphicon-calendar"></span> -->
<!-- 									        </span> -->
<!-- 									        </div> -->
<!-- 									  </div> -->
<!-- 									</div> -->
<!-- 								</td> -->
<!-- 								<td> -->
<!-- 									<a data-toggle="modal" data-target="#indicatorsModal" data-href='#' href="#" class="btn btn-default" role="button">Ver</a> -->
<!-- 								</td> -->
<!-- 							</tr> -->
							</tbody>
						</table>
					
				</div> <!-- /widget-content -->
			
			</div> <!-- /widget -->
            </div>

</div>

<br >

<div class="text-center">
<!-- 				        		<a href="#" class="btn btn-info" role="button">Guardar</a> -->
				        	</div>
				        	
				        	<#include "/modal/indicatorsModal.ftl">
				        	<#include "/modal/indicatorsModal2.ftl">
    
</@c.page>