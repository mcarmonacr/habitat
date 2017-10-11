 <!-- Not needed button -->
<!-- 	  <button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#processing-modal"> -->
<!--             <i class="glyphicon glyphicon-play"></i> Start Processing -->
<!--       </button>   -->
  
  <!-- Loading indicator modal. Taken from: http://bootsnipp.com/snippets/d3mxM-->
  <!-- Static Modal -->
<!-- Modal -->
<div class="modal fade bs-example-modal-lg" id="uploadAgreementModal" tabindex="-1" role="dialog" aria-labelledby="uploadAgreementLabel">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="uploadAgreementModalLabel">Subio Convenio</h4>
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
                  <td>Subir Convenio a la base de datos</td>
                  <td>Días Disponibles: 1</td>
                  <td>Limpieza de Terreno</td>
                  <td>Solicitud</td>
                </tr>
                </tbody>
            </table>
          </div>
		  
		  
<!-- 		  <h2 class="sub-header">Mapa de Recursos</h2> -->
          <form class="form-horizontal">
<fieldset>

<!-- Form Name -->
<!-- <legend>Encuensta</legend> -->

<!-- Multiple Radios -->
<div class="form-group">
  <label class="col-md-4 control-label" for="radios">¿Se Concretó la Alianza?</label>
  <div class="col-md-4">
  <div class="radio">
    <label for="radios-0">
      <input type="radio" name="radios" id="radios-0" value="1" checked="checked">
      Sí
    </label>
	</div>
  <div class="radio">
    <label for="radios-1">
      <input type="radio" name="radios" id="radios-1" value="2">
      No
    </label>
	</div>
  </div>
</div>

<!-- Multiple Radios -->
<div class="form-group">
  <label class="col-md-4 control-label" for="radios">¿Se Concretó a la Primera?</label>
  <div class="col-md-4">
  <div class="radio">
    <label for="radios-0">
      <input type="radio" name="radios" id="radios-0" value="1" checked="checked">
      Sí
    </label>
	</div>
  <div class="radio">
    <label for="radios-1">
      <input type="radio" name="radios" id="radios-1" value="2">
      No
    </label>
	</div>
  </div>
</div>

<!-- File Button --> 
<div class="form-group">
  <label class="col-md-4 control-label" for="filebutton">Subio Convenio Habitat</label>
  <div class="col-md-4">
    <input id="filebutton" name="filebutton" class="input-file" type="file">
  </div>
</div>

<!-- Textarea -->
<div class="form-group">
  <label class="col-md-4 control-label" for="textarea">Comentarios</label>
  <div class="col-md-4">                     
    <textarea class="form-control" id="textarea" name="textarea"></textarea>
  </div>
</div>

<div class="form-group">
<label class="col-md-4 control-label" for="textarea">Fecha Disponible</label>
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