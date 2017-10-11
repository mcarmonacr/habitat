<#import "common.ftl" as c/>
<@c.page css="resources/css/home.css" js="resources/js/projects.js">
    <!-- custom page content -->
    
    <!-- Whole content row -->
    <div class="row" id="main-content">
    
    <!-- Terms column -->
    <div class="col-md-5">
    
    <div class="panel panel-default">
		  <div class="panel-body">

    	<!-- Terms Section -->
	    <div class="list-group">
	    
	    <div class="row">
	    	<h1><span class="label label-default terms-header">Proyectos</span></h1>
	    </div>
	    
	    <div class="row input-group search-text-box">
		  <span class="glyphicon glyphicon-search input-group-addon home-search-glyphicon"></span>
<!-- 		   <span class="input-group-addon" id="basic-addon1">@</span> -->
		  <input id="termsInput" name="termsInput" type="text" class="form-control" placeholder="Buscar" aria-describedby="sizing-addon2">
		</div>
	    
	    <div id="projectListDiv" class="row terms-list">
	    
	    <#list projectsList as project>
			<a href="#" class="list-group-item">${project.projectName}</a>
	  	</#list>
	    
	    
<!-- 		  <a href="#" class="list-group-item active"> -->
<!-- 		    Cras justo odio -->
<!-- 		  </a> -->
<!-- 		  <a href="#" class="list-group-item">Proyecto #1</a> -->
<!-- 		  <a href="#" class="list-group-item">Proyecto #2</a> -->
<!-- 		  <a href="#" class="list-group-item">Proyecto #3</a> -->
<!-- 		  <a href="#" class="list-group-item">Proyecto #4</a> -->
<!-- 		  <a href="#" class="list-group-item">Proyecto #5</a> -->
<!-- 		  <a href="#" class="list-group-item">Proyecto #6</a> -->
<!-- 		  <a href="#" class="list-group-item">Proyecto #7</a> -->
<!-- 		  <a href="#" class="list-group-item">Proyecto #8</a> -->
<!-- 		  <a href="#" class="list-group-item">Proyecto #9</a> -->
<!-- 		  <a href="#" class="list-group-item">Proyecto #10</a> -->
<!-- 		  <a href="#" class="list-group-item">Proyecto #11</a> -->
<!-- 		  <a href="#" class="list-group-item">Proyecto #12</a> -->
<!-- 		  <a href="#" class="list-group-item">Proyecto #13</a> -->
<!-- 		  <a href="#" class="list-group-item">Proyecto #14</a> -->
<!-- 		  <a href="#" class="list-group-item">Letra</a> -->
<!-- 		  <a href="#" class="list-group-item">Nunca</a> -->
		  
		  </div>
		  
		  <div class="row">
		  	<h1><span id="totalTermsCounter" class="label label-default terms-header">Total: ${projectsList?size}</span></h1>
		  </div>
		  
		</div>
		
		  </div>
		</div>
		    </div>

		 <!-- Video detail column -->
    	<div class="col-md-7">
		<!-- Video Details Section -->
		<div class="panel panel-default">
		  <div class="panel-body">
		  
		  	<form class="form-horizontal" name="addProjectForm" id="addProjectForm">
				<fieldset>
				
					<!-- Form Name -->
					<legend>Agregar Proyecto</legend>
					
					<!-- Select Basic -->
					<div class="form-group">
					  <label class="col-md-4 control-label" for="scope">Alcance</label>
					  <div class="col-md-4">
					    <select id="scope" name="scope" class="form-control" required="">
					      <option value="Global">Global</option>
					      <option value="Regional">Regional</option>
					      <option value="Local">Local</option>
					    </select>
					  </div>
					</div>
					
					
					<!-- Text input-->
					<div class="form-group">
					  <label class="col-md-4 control-label" for="corporationName">Nombre</label>  
					  <div class="col-md-4">
					  <input id="projectName" name="projectName" type="text" placeholder="Nombre del Proyecto" class="form-control input-md" required="">
					    
					  </div>
					</div>
					
					<!-- Prepended text-->
					<div class="form-group">
					  <label class="col-md-4 control-label" for="prependedtext">Código de Proyecto</label>
					  <div class="col-md-4">
					    <div class="input-group">
					      <span class="input-group-addon">PJ-</span>
					      <input id="projectCode" name="projectCode" class="form-control" placeholder="" type="text" required="" readonly value="${projectsList?size+1}">
					    </div>
					    
					  </div>
					</div>
					
					
					<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingOne">
      <h4 class="panel-title">
        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
          Contacto
        </a>
      </h4>
    </div>
    <div id="collapseOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
      <div class="panel-body">
        <!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="contactName">Nombre</label>  
  <div class="col-md-4">
  <input id="contactName" name="contactName" type="text" placeholder="" class="form-control input-md">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="officePhoneNumber">Teléfono Oficina</label>  
  <div class="col-md-4">
  <input id="officePhoneNumber" name="officePhoneNumber" type="text" placeholder="" class="form-control input-md">
    
  </div>
</div>


<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="corporateEmail">Correo Corporativo</label>  
  <div class="col-md-4">
  <input id="corporateEmail" name="corporateEmail" type="text" placeholder="" class="form-control input-md">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="corporateEmail">Posición/Puesto</label>  
  <div class="col-md-4">
  <input id="position" name="position" type="text" placeholder="" class="form-control input-md">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="corporateEmail">País</label>  
  <div class="col-md-4">
  <input id="country" name="country" type="text" placeholder="" class="form-control input-md">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="corporateEmail">Ciudad</label>  
  <div class="col-md-4">
  <input id="city" name="city" type="text" placeholder="" class="form-control input-md">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="corporateEmail">Estado</label>  
  <div class="col-md-4">
  <input id="state" name="state" type="text" placeholder="" class="form-control input-md">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="corporateEmail">Código Postal</label>  
  <div class="col-md-4">
  <input id="zipCode" name="zipCode" type="text" placeholder="" class="form-control input-md">
    
  </div>
</div>



      </div>
    </div>
  </div>
  
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

		<h2 class="sub-header">Requerimientos</h2>
		
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
					  <input id="quantity-1" name="quantity-1" type="text" placeholder="" class="form-control input-md">  
					  </div>
					</div>
                  </td>
                  <td>
                  	<!-- Text input-->
					<div class="form-group">
<!-- 					  <label class="col-md-4 control-label" for="textinput">Text Input</label>   -->
					  <div class="col-md-12">
					  <input id="sponsorshipType-1" name="sponsorshipType-1" type="text" placeholder="" class="form-control input-md">  
					  </div>
					</div>
                  </td>
                  <td>
                  	<!-- Text input-->
					<div class="form-group">
<!-- 					  <label class="col-md-4 control-label" for="textinput">Text Input</label>   -->
					  <div class="col-md-12">
					  <input id="unitaryCost-1" name="unitaryCost-1" type="text" placeholder="" class="form-control input-md">  
					  </div>
					</div>
                  </td>
                  <td>
                  	<!-- Text input-->
					<div class="form-group">
<!-- 					  <label class="col-md-4 control-label" for="textinput">Text Input</label>   -->
					  <div class="col-md-12">
					  <input id="totalCost-1" name="total-1" type="text" placeholder="" class="form-control input-md">  
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
					  <input id="quantity-2" name="quantity-2" type="text" placeholder="" class="form-control input-md">  
					  </div>
					</div>
                  </td>
                  <td>
                  	<!-- Text input-->
					<div class="form-group">
<!-- 					  <label class="col-md-4 control-label" for="textinput">Text Input</label>   -->
					  <div class="col-md-12">
					  <input id="sponsorshipType-2" name="sponsorshipType-2" type="text" placeholder="" class="form-control input-md">  
					  </div>
					</div>
                  </td>
                  <td>
                  	<!-- Text input-->
					<div class="form-group">
<!-- 					  <label class="col-md-4 control-label" for="textinput">Text Input</label>   -->
					  <div class="col-md-12">
					  <input id="unitaryCost-2" name="unitaryCost-2" type="text" placeholder="" class="form-control input-md">  
					  </div>
					</div>
                  </td>
                  <td>
                  	<!-- Text input-->
					<div class="form-group">
<!-- 					  <label class="col-md-4 control-label" for="textinput">Text Input</label>   -->
					  <div class="col-md-12">
					  <input id="totalCost-2" name="total-2" type="text" placeholder="" class="form-control input-md">  
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
					  <input id="quantity-3" name="quantity-3" type="text" placeholder="" class="form-control input-md">  
					  </div>
					</div>
                  </td>
                  <td>
                  	<!-- Text input-->
					<div class="form-group">
<!-- 					  <label class="col-md-4 control-label" for="textinput">Text Input</label>   -->
					  <div class="col-md-12">
					  <input id="sponsorshipType-3" name="sponsorshipType-3" type="text" placeholder="" class="form-control input-md">  
					  </div>
					</div>
                  </td>
                  <td>
                  	<!-- Text input-->
					<div class="form-group">
<!-- 					  <label class="col-md-4 control-label" for="textinput">Text Input</label>   -->
					  <div class="col-md-12">
					  <input id="unitaryCost-3" name="unitaryCost-3" type="text" placeholder="" class="form-control input-md">  
					  </div>
					</div>
                  </td>
                  <td>
                  	<!-- Text input-->
					<div class="form-group">
<!-- 					  <label class="col-md-4 control-label" for="textinput">Text Input</label>   -->
					  <div class="col-md-12">
					  <input id="totalCost-3" name="total-3" type="text" placeholder="" class="form-control input-md">  
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
					  <input id="quantity-4" name="quantity-4" type="text" placeholder="" class="form-control input-md">  
					  </div>
					</div>
                  </td>
                  <td>
                  	<!-- Text input-->
					<div class="form-group">
<!-- 					  <label class="col-md-4 control-label" for="textinput">Text Input</label>   -->
					  <div class="col-md-12">
					  <input id="sponsorshipType-4" name="sponsorshipType-4" type="text" placeholder="" class="form-control input-md">  
					  </div>
					</div>
                  </td>
                  <td>
                  	<!-- Text input-->
					<div class="form-group">
<!-- 					  <label class="col-md-4 control-label" for="textinput">Text Input</label>   -->
					  <div class="col-md-12">
					  <input id="unitaryCost-4" name="unitaryCost-4" type="text" placeholder="" class="form-control input-md">  
					  </div>
					</div>
                  </td>
                  <td>
                  	<!-- Text input-->
					<div class="form-group">
<!-- 					  <label class="col-md-4 control-label" for="textinput">Text Input</label>   -->
					  <div class="col-md-12">
					  <input id="totalCost-4" name="total-4" type="text" placeholder="" class="form-control input-md">  
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
					  <input id="quantity-5" name="quantity-5" type="text" placeholder="" class="form-control input-md">  
					  </div>
					</div>
                  </td>
                  <td>
                  	<!-- Text input-->
					<div class="form-group">
<!-- 					  <label class="col-md-4 control-label" for="textinput">Text Input</label>   -->
					  <div class="col-md-12">
					  <input id="sponsorshipType-5" name="sponsorshipType-5" type="text" placeholder="" class="form-control input-md">  
					  </div>
					</div>
                  </td>
                  <td>
                  	<!-- Text input-->
					<div class="form-group">
<!-- 					  <label class="col-md-4 control-label" for="textinput">Text Input</label>   -->
					  <div class="col-md-12">
					  <input id="unitaryCost-5" name="unitaryCost-5" type="text" placeholder="" class="form-control input-md">  
					  </div>
					</div>
                  </td>
                  <td>
                  	<!-- Text input-->
					<div class="form-group">
<!-- 					  <label class="col-md-4 control-label" for="textinput">Text Input</label>   -->
					  <div class="col-md-12">
					  <input id="totalCost-5" name="total-5" type="text" placeholder="" class="form-control input-md">  
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
			
			<!-- Button (Double) -->
					<div class="form-group">
<!-- 					  <label class="col-md-4 control-label" for="addProjectForm"></label> -->
					  <div class="col-md-offset-5">
					    <button id="projectsSend" name="projectsSend" class="btn btn-success">Agregar</button>
<!-- 					    <button id="projectsCancel" name="projectsCancel" class="btn btn-danger">Cancelar</button> -->
					  </div>
					</div>
			
				
				</fieldset>
			</form>
		  	
		  	<div class="row">
		    	<div id="addTermModal" class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
				  <div class="modal-dialog modal-md" role="document">
				    <div class="modal-content text-center">
				      ¡Término Agregado Exitosamente!
				      <div class="modal-footer">
				        <div class="row">
				        	<div class="col-md-5 text-center">
				        		<a href="/DiccionarioLesco/agregar" class="btn btn-info" role="button">Agregar Nuevo Término</a>
				        	</div>
				        	<div class="col-md-2"></div>
					        <div class="col-md-5 text-center">
					        	<a href="/DiccionarioLesco/" class="btn btn-info" role="button">Página Principal</a>
					        </div>
				        </div>
				      </div>
				    </div>
				  </div>
				</div>
    		</div> <!-- row div -->

		  </div>
		</div>
  </div>
  
	<!-- Common loading modal -->
	<#include "/modal/loadingModal.ftl">
  
</div>
    
</@c.page>