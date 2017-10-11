<#import "common.ftl" as c/>
<@c.page css="resources/css/home.css" css2="resources/css/administrator.css" js="resources/js/agreement.js">
<!-- custom page content -->

<!-- Whole content row -->
<div class="row" id="main-content">
  
<!--   https://bootsnipp.com/snippets/featured/resonsive-features-comparison-table-without-js -->

  <div>
 
	    <!-- Terms column -->
    <div class="col-md-3">
    
    <div class="panel panel-default">
		  <div class="panel-body">

    	<!-- Terms Section -->
	    <div class="list-group">
	    
	    <div class="row">
	    	<h2><span class="label label-default terms-header">Corporaciones / Proyectos</span></h2>
	    </div>
	    
		<form class="form-horizontal" name="linkAgreementForm" id="linkAgreementForm" enctype="multipart/form-data">
				<fieldset>
				
				
	    <div class="row dropdown dropdown-container-home">
		  <button class="btn btn-default dropdown-toggle dropdown-button-home" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
		    <span class="glyphicon glyphicon-tasks"></span> Corporaci�n
		    <span class="caret"></span>
		    <div id="corporationIdDiv" hidden></div>
		  </button>
		  <ul class="dropdown-menu dropdown-ul-home" aria-labelledby="dropdownMenu1">
		  		
		    <#list listCorporations as corporation>
					<li onclick="assignCorporation($(this).find('a').text(), $(this).find('div').text())">
						<a href="#">${corporation.corporationName}</a>
						<div hidden>${corporation.corporationId}</div>
					</li>
	  			</#list>
	  			
	  			<li onclick="assignCorporation($(this).find('a').text(), $(this).find('div').text())">
						<a href="#">Procter & Gamble</a>
						<div hidden>1</div>
					</li>
					
					<li onclick="assignCorporation($(this).find('a').text(), $(this).find('div').text())">
						<a href="#">Coca Cola</a>
						<div hidden>1</div>
					</li>
					
					<li onclick="assignCorporation($(this).find('a').text(), $(this).find('div').text())">
						<a href="#">IBM</a>
						<div hidden>1</div>
					</li>
	  			
		  </ul>
		</div>
	    
	    <div class="row dropdown dropdown-container-home">
		  <button class="btn btn-default dropdown-toggle dropdown-button-home" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
		    <span class="glyphicon glyphicon-tasks"></span> Proyecto
		    <span class="caret"></span>
		    <div id="projectIdDiv" hidden></div>
		  </button>
		  <ul class="dropdown-menu dropdown-ul-home" aria-labelledby="dropdownMenu2">
		  		
		    <#list listProjects as project>
				<li onclick="assignProject($(this).find('a').text(), $(this).find('div').text())">
					<a href="#">${project.projectName}</a>
					<div hidden>${project.projectId}</div>
				</li>
  			</#list>
  			
  			<li onclick="assignProject($(this).find('a').text(), $(this).find('div').text())">
						<a href="#">Construcci�n Viviendas Po�s</a>
						<div hidden>1</div>
			</li>
			
			<li onclick="assignProject($(this).find('a').text(), $(this).find('div').text())">
						<a href="#">Construcci�n Viviendas La Tigra</a>
						<div hidden>1</div>
			</li>
			
			<li onclick="assignProject($(this).find('a').text(), $(this).find('div').text())">
						<a href="#">Reparaci�n Viviendas Los Guido</a>
						<div hidden>1</div>
			</li>
  			
		  </ul>
		</div>
		  
		  <br >
		  
		  <div class="text-center">
<!--        		<a href="/DiccionarioLesco/agregar" class="btn btn-info" role="button">Asociar</a> -->
		<button id="linkAgreement" name="linkAgreement" class="btn btn-success">Asociar</button>
       	</div>
		  
		  </fieldset>
			</form>
		  
		</div>
		
		  </div>
		</div>
		
		<div class="panel panel-default">
		  <div class="panel-body">
		
		
		</div>
		</div>
		
		
		    </div>

		 <!-- Video detail column -->
    	<div class="col-md-9">
		<!-- Video Details Section -->
		<div class="panel panel-default">
		  <div class="panel-body">
		  
		  <h2 class="sub-header">Convenio Habitat</h2>
          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>Informaci�n del Contacto</th>
                  <th>Corporaci�n</th>
                  <th>Entidad Implementadora (ON)</th>
                  <th>Oficina de �rea</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>Nombre de la Organizaci�n</td>
                  <td>Procter & Gamble</td>
                  <td>Habitat para la Humanidad Costa Rica</td>
                  <td>HFHI Latin America</td>
                </tr>
                <tr>
                  <td>Nombre del Contacto</td>
                  <td>Daniel Torres Picado</td>
                  <td>Ana Viquez Coronado</td>
                  <td>Cristina Arevalo Quijano</td>
                </tr>
                <tr>
                  <td>Puesto</td>
                  <td>Gerente Desarrollo</td>
                  <td>Coordinadora Regional</td>
                  <td>Resource Development Manager</td>
                </tr>
                <tr>
                  <td>Direcci�n /Localizaci�n</td>
                  <td>550 metros oeste del Mall San Pedro</td>
                  <td>Paseo de las Flores, primer piso, local 22</td>
                  <td>Pozos de Santa Ana, Forum 1</td>
                </tr>
                <tr>
                  <td>Ciudad, Estado, Zip Code</td>
                  <td>San Jos�, Costa Rica, 3245</td>
                  <td>Heredia, Costa Rica, 32432</td>
                  <td>San Jos�, Costa Rica, 23045</td>
                </tr>
                <tr>
                  <td>Tel�fono</td>
                  <td>(+506) - 67657564</td>
                  <td>(+506) - 87565756</td>
                  <td>(+506) - 84846788</td>
                </tr>
<!--                 <tr> -->
<!--                   <td>Fax</td> -->
<!--                   <td>dapibus</td> -->
<!--                   <td>diam</td> -->
<!--                   <td>Sed</td> -->
<!--                 </tr> -->
                <tr>
                  <td>Correo electr�nico</td>
                  <td>d.torres@p&g.com</td>
                  <td>a.viquez@habitatcostarica.org</td>
                  <td>c.arevalo@habitat.org</td>
                </tr>
              </tbody>
            </table>
          </div>

		  </div>
		</div>
		
		<div class="panel panel-default">
		  <div class="panel-body">
		    <h2 class="sub-header">C�digo del Proyecto y Resumen</h2>
          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th class="col-md-4">Aspecto</th>
                  <th class="col-md-8">Valor</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>Ciudad</td>
                  <td>San Jos�</td>
                </tr>
                <tr>
                  <td>Pa�s</td>
                  <td>Costa Rica</td>
                </tr>
                <tr>
                  <td>Puesto</td>
                  <td>Resource Development Manager</td>
                </tr>
                <tr>
                  <td>C�digo</td>
                  <td>CH-01</td>
                </tr>
                <tr>
                  <td>Descripci�n</td>
                  <td>Proyecto de construcci�n de viviendas</td>
                </tr>
                <tr>
                  <td>Convenio Habitat Final</td>
                  <td><a>Ver Convenio</a></td>
                </tr>
              </tbody>
            </table>
          </div>
		  </div>
		</div>
		
		<div class="panel panel-default">
		  <div class="panel-body">
		
		<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
		 <div class="panel panel-info">
    <div class="panel-heading" role="tab" id="headingThree">
      <h4 class="panel-title">
        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
          Requerimientos
        </a>
      </h4>
    </div>
    <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
      <div class="panel-body">

		<h2 class="sub-header">Tipo de Patrocinio y Financiamiento</h2>
		
<!-- 		<a class="btn btn-primary">Agregar Requerimiento -->
<!--                <span class="glyphicon glyphicon-plus"></span> </a> -->
		
          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>Cantidad</th>
                  <th>Tipo de Patrocinio</th>
                  <th>Monto Unitario ($)</th>
                  <th>Total ($)</th>
<!--                   <th>Eliminar</th> -->
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>
                  	<!-- Text input-->
					<div class="form-group">
<!-- 					  <label class="col-md-4 control-label" for="textinput">Text Input</label>   -->
					  <div class="col-md-12">
					  <input id="textinput1-1" name="textinput1-1" type="text" placeholder="" class="form-control input-md">  
					  </div>
					</div>
                  </td>
                  <td>
                  	<!-- Text input-->
					<div class="form-group">
<!-- 					  <label class="col-md-4 control-label" for="textinput">Text Input</label>   -->
					  <div class="col-md-12">
					  <input id="textinput1-2" name="textinput1-2" type="text" placeholder="" class="form-control input-md">  
					  </div>
					</div>
                  </td>
                  <td>
                  	<!-- Text input-->
					<div class="form-group">
<!-- 					  <label class="col-md-4 control-label" for="textinput">Text Input</label>   -->
					  <div class="col-md-12">
					  <input id="textinput1-3" name="textinput1-3" type="text" placeholder="" class="form-control input-md">  
					  </div>
					</div>
                  </td>
                  <td>
                  	<!-- Text input-->
					<div class="form-group">
<!-- 					  <label class="col-md-4 control-label" for="textinput">Text Input</label>   -->
					  <div class="col-md-12">
					  <input id="textinput1-4" name="textinput1-4" type="text" placeholder="" class="form-control input-md">  
					  </div>
					</div>
                  </td>
<!--                   <td> -->
<!-- 					<div class="form-group"> -->
<!-- 					  <div class="col-md-12"> -->
<!-- 					  	<a class="btn btn-danger">Eliminar -->
<!--                				<span class="glyphicon glyphicon-remove"></span>  -->
<!--                			</a>   -->
<!-- 					  </div> -->
<!-- 					</div> -->
<!--                   </td> -->
                </tr>
                
                <tr>
                  <td>
                  	<!-- Text input-->
					<div class="form-group">
<!-- 					  <label class="col-md-4 control-label" for="textinput">Text Input</label>   -->
					  <div class="col-md-12">
					  <input id="textinput1-1" name="textinput1-1" type="text" placeholder="" class="form-control input-md">  
					  </div>
					</div>
                  </td>
                  <td>
                  	<!-- Text input-->
					<div class="form-group">
<!-- 					  <label class="col-md-4 control-label" for="textinput">Text Input</label>   -->
					  <div class="col-md-12">
					  <input id="textinput1-2" name="textinput1-2" type="text" placeholder="" class="form-control input-md">  
					  </div>
					</div>
                  </td>
                  <td>
                  	<!-- Text input-->
					<div class="form-group">
<!-- 					  <label class="col-md-4 control-label" for="textinput">Text Input</label>   -->
					  <div class="col-md-12">
					  <input id="textinput1-3" name="textinput1-3" type="text" placeholder="" class="form-control input-md">  
					  </div>
					</div>
                  </td>
                  <td>
                  	<!-- Text input-->
					<div class="form-group">
<!-- 					  <label class="col-md-4 control-label" for="textinput">Text Input</label>   -->
					  <div class="col-md-12">
					  <input id="textinput1-4" name="textinput1-4" type="text" placeholder="" class="form-control input-md">  
					  </div>
					</div>
                  </td>
<!--                   <td> -->
<!-- 					<div class="form-group"> -->
<!-- 					  <div class="col-md-12"> -->
<!-- 					  	<a class="btn btn-danger">Eliminar -->
<!--                				<span class="glyphicon glyphicon-remove"></span>  -->
<!--                			</a>   -->
<!-- 					  </div> -->
<!-- 					</div> -->
<!--                   </td> -->
                </tr>
                
                                <tr>
                  <td>
                  	<!-- Text input-->
					<div class="form-group">
<!-- 					  <label class="col-md-4 control-label" for="textinput">Text Input</label>   -->
					  <div class="col-md-12">
					  <input id="textinput1-1" name="textinput1-1" type="text" placeholder="" class="form-control input-md">  
					  </div>
					</div>
                  </td>
                  <td>
                  	<!-- Text input-->
					<div class="form-group">
<!-- 					  <label class="col-md-4 control-label" for="textinput">Text Input</label>   -->
					  <div class="col-md-12">
					  <input id="textinput1-2" name="textinput1-2" type="text" placeholder="" class="form-control input-md">  
					  </div>
					</div>
                  </td>
                  <td>
                  	<!-- Text input-->
					<div class="form-group">
<!-- 					  <label class="col-md-4 control-label" for="textinput">Text Input</label>   -->
					  <div class="col-md-12">
					  <input id="textinput1-3" name="textinput1-3" type="text" placeholder="" class="form-control input-md">  
					  </div>
					</div>
                  </td>
                  <td>
                  	<!-- Text input-->
					<div class="form-group">
<!-- 					  <label class="col-md-4 control-label" for="textinput">Text Input</label>   -->
					  <div class="col-md-12">
					  <input id="textinput1-4" name="textinput1-4" type="text" placeholder="" class="form-control input-md">  
					  </div>
					</div>
                  </td>
<!--                   <td> -->
<!-- 					<div class="form-group"> -->
<!-- 					  <div class="col-md-12"> -->
<!-- 					  	<a class="btn btn-danger">Eliminar -->
<!--                				<span class="glyphicon glyphicon-remove"></span>  -->
<!--                			</a>   -->
<!-- 					  </div> -->
<!-- 					</div> -->
<!--                   </td> -->
                </tr>
                
                                <tr>
                  <td>
                  	<!-- Text input-->
					<div class="form-group">
<!-- 					  <label class="col-md-4 control-label" for="textinput">Text Input</label>   -->
					  <div class="col-md-12">
					  <input id="textinput1-1" name="textinput1-1" type="text" placeholder="" class="form-control input-md">  
					  </div>
					</div>
                  </td>
                  <td>
                  	<!-- Text input-->
					<div class="form-group">
<!-- 					  <label class="col-md-4 control-label" for="textinput">Text Input</label>   -->
					  <div class="col-md-12">
					  <input id="textinput1-2" name="textinput1-2" type="text" placeholder="" class="form-control input-md">  
					  </div>
					</div>
                  </td>
                  <td>
                  	<!-- Text input-->
					<div class="form-group">
<!-- 					  <label class="col-md-4 control-label" for="textinput">Text Input</label>   -->
					  <div class="col-md-12">
					  <input id="textinput1-3" name="textinput1-3" type="text" placeholder="" class="form-control input-md">  
					  </div>
					</div>
                  </td>
                  <td>
                  	<!-- Text input-->
					<div class="form-group">
<!-- 					  <label class="col-md-4 control-label" for="textinput">Text Input</label>   -->
					  <div class="col-md-12">
					  <input id="textinput1-4" name="textinput1-4" type="text" placeholder="" class="form-control input-md">  
					  </div>
					</div>
                  </td>
<!--                   <td> -->
<!-- 					<div class="form-group"> -->
<!-- 					  <div class="col-md-12"> -->
<!-- 					  	<a class="btn btn-danger">Eliminar -->
<!--                				<span class="glyphicon glyphicon-remove"></span>  -->
<!--                			</a>   -->
<!-- 					  </div> -->
<!-- 					</div> -->
<!--                   </td> -->
                </tr>
                
                                <tr>
                  <td>
                  	<!-- Text input-->
					<div class="form-group">
<!-- 					  <label class="col-md-4 control-label" for="textinput">Text Input</label>   -->
					  <div class="col-md-12">
					  <input id="textinput1-1" name="textinput1-1" type="text" placeholder="" class="form-control input-md">  
					  </div>
					</div>
                  </td>
                  <td>
                  	<!-- Text input-->
					<div class="form-group">
<!-- 					  <label class="col-md-4 control-label" for="textinput">Text Input</label>   -->
					  <div class="col-md-12">
					  <input id="textinput1-2" name="textinput1-2" type="text" placeholder="" class="form-control input-md">  
					  </div>
					</div>
                  </td>
                  <td>
                  	<!-- Text input-->
					<div class="form-group">
<!-- 					  <label class="col-md-4 control-label" for="textinput">Text Input</label>   -->
					  <div class="col-md-12">
					  <input id="textinput1-3" name="textinput1-3" type="text" placeholder="" class="form-control input-md">  
					  </div>
					</div>
                  </td>
                  <td>
                  	<!-- Text input-->
					<div class="form-group">
<!-- 					  <label class="col-md-4 control-label" for="textinput">Text Input</label>   -->
					  <div class="col-md-12">
					  <input id="textinput1-4" name="textinput1-4" type="text" placeholder="" class="form-control input-md">  
					  </div>
					</div>
                  </td>
<!--                   <td> -->
<!-- 					<div class="form-group"> -->
<!-- 					  <div class="col-md-12"> -->
<!-- 					  	<a class="btn btn-danger">Eliminar -->
<!--                				<span class="glyphicon glyphicon-remove"></span>  -->
<!--                			</a>   -->
<!-- 					  </div> -->
<!-- 					</div> -->
<!--                   </td> -->
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
  
  
  <div class="panel panel-default">
		  <div class="panel-body">
		    <h2 class="sub-header">Requerimientos de los Reportes</h2>
          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th class="col-md-4">Reporte</th>
                  <th class="col-md-4">Descripci�n</th>
                  <th class="col-md-4">Fecha L�mite / Cantidad</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>Informe Previo</td>
                  <td>
                  		<div class="form-group">
						  <div class="col-md-12">
						  <textarea class="form-control" id="textarea" name="textarea"></textarea>
						  </div>
						</div>
                  </td>
                  <td>
	                  <div class="form-group">
						  <div class="col-md-8">
						  <div class="input-group input-append date" id="datePicker">
						    <input type="text" class="form-control" id="availableDate" name="availableDate" value="10/06/2017" />
						    <!-- 			http://www.daterangepicker.com/ -->
						    	<span class="input-group-addon">
						            <span class="glyphicon glyphicon-calendar"></span>
						        </span>
						        </div>
						  </div>
						</div>
                  </td>
                </tr>
                <tr>
                  <td>Informes Parciales</td>
                   <td>
                  		<div class="form-group">
						  <div class="col-md-12">
						 <textarea class="form-control" id="textarea" name="textarea"></textarea>
						  </div>
						</div>
                  </td>
                   <td>
                  		<div class="form-group">
						  <div class="col-md-6">
						  <input id="textinput" name="textinput" type="text" placeholder="" class="form-control input-md">
						  </div>
						</div>
                  </td>
                </tr>
                <tr>
                  <td>Informe Final</td>
                   <td>
                  		<div class="form-group">
						  <div class="col-md-12">
						  <textarea class="form-control" id="textarea" name="textarea"></textarea>
						  </div>
						</div>
                  </td>
                  <td>
	                  <div class="form-group">
						  <div class="col-md-8">
						  <div class="input-group input-append date" id="datePicker">
						    <input type="text" class="form-control" id="availableDate" name="availableDate" value="10/06/2017" />
						    <!-- 			http://www.daterangepicker.com/ -->
						    	<span class="input-group-addon">
						            <span class="glyphicon glyphicon-calendar"></span>
						        </span>
						        </div>
						  </div>
						</div>
                  </td>
                </tr>
              </tbody>
            </table>
          </div>
		  </div>
		</div>
		
		<div class="panel panel-default">
		  <div class="panel-body">
<!-- 		    <h2 class="sub-header">C�digo del Proyecto y Resumen</h2> -->
          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th class="col-md-4">Aspecto</th>
                  <th class="col-md-8">Valor</th>
                </tr>
              </thead>
              <tbody>
              <tr>
                  <td>Fecha de entrega por parte de la corporaci�n</td>
                  <td>
<!-- 		                  <div class="form-group"> -->
<!-- 						  <div class="col-md-5"> -->
<!-- 						  <input id="textinput" name="textinput" type="text" placeholder="" class="form-control input-md"> -->
						    
<!-- 						  </div> -->
<!-- 						</div> -->
						
						<div class="form-group">
<!-- 					  <label class="col-md-4 control-label" for="birthDate">Fecha Disponible</label> -->
					  <div class="col-md-4">
					  <div class="input-group input-append date" id="datePicker">
					    <input type="text" class="form-control" id="availableDate" name="availableDate" value="10/06/2017" />
					    <!-- 			http://www.daterangepicker.com/ -->
					    	<span class="input-group-addon">
					            <span class="glyphicon glyphicon-calendar"></span>
					        </span>
					        </div>
					  </div>
					</div>
						
						
					</td>
                </tr>
                <tr>
                  <td>
	                  <p>Beneficios de la Corporaci�n</p>
	                  <a data-toggle="modal" data-target="#myFooterModal">Ver Mapa de Recursos</a>
				  </td>
                  <td>
	                  <div class="form-group">
						  <div class="col-md-12">                     
						    <textarea class="form-control" id="textarea" name="textarea"></textarea>
						  </div>
						</div>
					</td>
                </tr>
                <tr>
                  <td>Reconocimiento al donante/ Relaciones p�blicas</td>
                  <td>
	                  <div class="form-group">
						  <div class="col-md-12">                     
						    <textarea class="form-control" id="textarea" name="textarea"></textarea>
						  </div>
						</div>
					</td>
                </tr>
                <tr>
                  <td>Confidencialidad</td>
                  <td>
	                  <div class="form-group">
						  <div class="col-md-12">                     
						    <textarea class="form-control" id="textarea" name="textarea"></textarea>
						  </div>
						</div>
					</td>
                </tr>
                <tr>
                  <td>Severidad</td>
                  <td>
	                  <div class="form-group">
						  <div class="col-md-12">                     
						    <textarea class="form-control" id="textarea" name="textarea"></textarea>
						  </div>
						</div>
					</td>
                </tr>
              </tbody>
            </table>
          </div>
		 
		
		
		<div class="panel panel-default">
		  <div class="panel-body">
		
			<div class="text-center">
	<!--        		<a href="/DiccionarioLesco/agregar" class="btn btn-info" role="button">Asociar</a> -->
			<button id="linkSaveAgreement" name="linkSaveAgreement" class="btn btn-success">Guardar</button>
<!-- 			<button id="linkAgreement" name="linkAgreement" class="btn btn-info">Exportar</button> -->
			<a href="/habitat/resources/documents/Convenio-Habitat.pdf" target="_blank" class="btn btn-info" role="button">Exportar</a>
	       	</div>
       	
       	 </div>
		</div>
		
  </div>

	    

	</div>
	
	 <!-- Common loading modal -->
			<#include "/modal/resourcesModal.ftl">
	

</div>
    
</@c.page>