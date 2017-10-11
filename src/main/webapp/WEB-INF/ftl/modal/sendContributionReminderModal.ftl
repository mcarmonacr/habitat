 <!-- Not needed button -->
<!-- 	  <button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#processing-modal"> -->
<!--             <i class="glyphicon glyphicon-play"></i> Start Processing -->
<!--       </button>   -->
  
  <!-- Loading indicator modal. Taken from: http://bootsnipp.com/snippets/d3mxM-->
  <!-- Static Modal -->
<!-- Modal -->
<div class="modal fade bs-example-modal-lg" id="sendContributionReminderModal" tabindex="-1" role="dialog" aria-labelledby="sendContributionReminderLabel">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="sendContributionReminderModalLabel">Completar Tarea</h4>
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
                  <td>Enviar correo a la corporación IBM recordando el aporte acordado para el 15/09/17 </td>
                  <td>Días disponibles: 0</td>
                  <td>Entrega Lotes</td>
                  <td>Solicitud</td>
                </tr>
                </tbody>
            </table>
          </div>
		  
		  
<!-- 		  <h2 class="sub-header">Mapa de Recursos</h2> -->
 <form class="form-horizontal">
<fieldset>

<!-- Form Name -->
<!-- <legend>Completar Tarea</legend> -->

<!-- Textarea -->
<div class="form-group">
  <label class="col-md-4 control-label" for="textarea">Comentarios</label>
  <div class="col-md-4">                     
    <textarea class="form-control" id="textarea" name="textarea"></textarea>
  </div>
</div>

<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="singlebutton"></label>
  <div class="col-md-4">
    <button id="singlebutton" name="singlebutton" class="btn btn-primary">Enviar Recordatorio</button>
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