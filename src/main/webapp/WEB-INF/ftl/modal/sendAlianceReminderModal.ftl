 <!-- Not needed button -->
<!-- 	  <button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#processing-modal"> -->
<!--             <i class="glyphicon glyphicon-play"></i> Start Processing -->
<!--       </button>   -->
  
  <!-- Loading indicator modal. Taken from: http://bootsnipp.com/snippets/d3mxM-->
  <!-- Static Modal -->
<!-- Modal -->
<div class="modal fade bs-example-modal-lg" id="sendAlianceReminderModal" tabindex="-1" role="dialog" aria-labelledby="sendAlianceReminderLabel">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="sendAlianceReminderModalLabel">Completar Tarea</h4>
      </div>
      <div class="modal-body">
       
<div class="container">

      <div class="row starter-template">
      
      <div class="panel panel-default col-md-9">
		  <div class="panel-body">
		  
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
                <tr>
                  <td>Enviar recordatorio para realizar la actividad de alianza a ON</td>
                  <td>Fecha: 10/11/17</td>
                  <td>Todos</td>
                  <td>Fidelización</td>
                </tr>
                </tbody>
            </table>
          </div>
          
          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>Corporaciones</th>
                  <th>Enviar Invitación</th>	
                  <th>¿Se ha enviado la invitación?</th>
                  <th>¿La Corporación ha aceptado?</th>
                  <th>Comentarios</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>EPA</td>
                  <td>
                  	<!-- Button -->
					<div class="form-group">
					  <div class="col-md-4">
					    <button id="singlebutton" name="singlebutton" class="btn btn-primary">Enviar Invitación</button>
					  </div>
					</div>
                  </td>
                  <td>
                  	<!-- Multiple Checkboxes (inline) -->
					<div class="form-group">
					  <label class="col-md-4 control-label" for="checkboxes"></label>
					  <div class="col-md-4">
					    <label class="checkbox-inline" for="checkboxes-0">
					      <input type="checkbox" name="checkboxes" id="checkboxes-0" value="1">
					    </label>
					  </div>
					</div>
				  </td>
				  <td>
                  	<!-- Multiple Checkboxes (inline) -->
					<div class="form-group">
					  <label class="col-md-4 control-label" for="checkboxes"></label>
					  <div class="col-md-4">
					    <label class="checkbox-inline" for="checkboxes-0">
					      <input type="checkbox" name="checkboxes" id="checkboxes-0" value="1">
					    </label>
					  </div>
					</div>
				  </td>
				  <td>
				  	<!-- Textarea -->
					<div class="form-group">
					  <div>                     
					    <textarea class="form-control" id="textarea" name="textarea"></textarea>
					  </div>
					</div>
				  </td>
                </tr>
                <tr>
                  <td>Coca Cola</td>
                  <td>
                  	<!-- Button -->
					<div class="form-group">
					  <div class="col-md-4">
					    <button id="singlebutton" name="singlebutton" class="btn btn-primary">Enviar Invitación</button>
					  </div>
					</div>
                  </td>
                  <td>
                  	<!-- Multiple Checkboxes (inline) -->
					<div class="form-group">
					  <label class="col-md-4 control-label" for="checkboxes"></label>
					  <div class="col-md-4">
					    <label class="checkbox-inline" for="checkboxes-0">
					      <input type="checkbox" name="checkboxes" id="checkboxes-0" value="1">
					    </label>
					  </div>
					</div>
				  </td>
				  <td>
                  	<!-- Multiple Checkboxes (inline) -->
					<div class="form-group">
					  <label class="col-md-4 control-label" for="checkboxes"></label>
					  <div class="col-md-4">
					    <label class="checkbox-inline" for="checkboxes-0">
					      <input type="checkbox" name="checkboxes" id="checkboxes-0" value="1">
					    </label>
					  </div>
					</div>
				  </td>
				  <td>
				  	<!-- Textarea -->
					<div class="form-group">
					  <div>                     
					    <textarea class="form-control" id="textarea" name="textarea"></textarea>
					  </div>
					</div>
				  </td>
                </tr>
                <tr>
                  <td>HP</td>
                  <td>
                  	<!-- Button -->
					<div class="form-group">
					  <div class="col-md-4">
					    <button id="singlebutton" name="singlebutton" class="btn btn-primary">Enviar Invitación</button>
					  </div>
					</div>
                  </td>
                  <td>
                  	<!-- Multiple Checkboxes (inline) -->
					<div class="form-group">
					  <label class="col-md-4 control-label" for="checkboxes"></label>
					  <div class="col-md-4">
					    <label class="checkbox-inline" for="checkboxes-0">
					      <input type="checkbox" name="checkboxes" id="checkboxes-0" value="1">
					    </label>
					  </div>
					</div>
				  </td>
				  <td>
                  	<!-- Multiple Checkboxes (inline) -->
					<div class="form-group">
					  <label class="col-md-4 control-label" for="checkboxes"></label>
					  <div class="col-md-4">
					    <label class="checkbox-inline" for="checkboxes-0">
					      <input type="checkbox" name="checkboxes" id="checkboxes-0" value="1">
					    </label>
					  </div>
					</div>
				  </td>
				  <td>
				  	<!-- Textarea -->
					<div class="form-group">
					  <div>                     
					    <textarea class="form-control" id="textarea" name="textarea"></textarea>
					  </div>
					</div>
				  </td>
                </tr>
                <tr>
                  <td>Microsoft</td>
                  <td>
                  	<!-- Button -->
					<div class="form-group">
					  <div class="col-md-4">
					    <button id="singlebutton" name="singlebutton" class="btn btn-primary">Enviar Invitación</button>
					  </div>
					</div>
                  </td>
                  <td>
                  	<!-- Multiple Checkboxes (inline) -->
					<div class="form-group">
					  <label class="col-md-4 control-label" for="checkboxes"></label>
					  <div class="col-md-4">
					    <label class="checkbox-inline" for="checkboxes-0">
					      <input type="checkbox" name="checkboxes" id="checkboxes-0" value="1">
					    </label>
					  </div>
					</div>
				  </td>
				  <td>
                  	<!-- Multiple Checkboxes (inline) -->
					<div class="form-group">
					  <label class="col-md-4 control-label" for="checkboxes"></label>
					  <div class="col-md-4">
					    <label class="checkbox-inline" for="checkboxes-0">
					      <input type="checkbox" name="checkboxes" id="checkboxes-0" value="1">
					    </label>
					  </div>
					</div>
				  </td>
				  <td>
				  	<!-- Textarea -->
					<div class="form-group">
					  <div>                     
					    <textarea class="form-control" id="textarea" name="textarea"></textarea>
					  </div>
					</div>
				  </td>
                </tr>
                </tbody>
            </table>
          </div>
		  
		  
<!-- 		  <h2 class="sub-header">Mapa de Recursos</h2> -->
 <form class="form-horizontal">
<fieldset>

<!-- Form Name -->
<!-- <legend>Completar Tarea</legend> -->



<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="singlebutton"></label>
  <div class="col-md-6">
    <button id="singlebutton" name="singlebutton" class="btn btn-success">Guardar</button>
  </div>
</div>

</fieldset>
</form>



		  </div>
		</div>
        
      </div>

    </div><!-- /.container -->


      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
<!--         <button type="button" class="btn btn-primary">Save changes</button> -->
      </div>
    </div>
  </div>
</div>