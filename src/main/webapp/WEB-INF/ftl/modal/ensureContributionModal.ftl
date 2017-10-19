 <!-- Not needed button -->
<!-- 	  <button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#processing-modal"> -->
<!--             <i class="glyphicon glyphicon-play"></i> Start Processing -->
<!--       </button>   -->
  
  <!-- Loading indicator modal. Taken from: http://bootsnipp.com/snippets/d3mxM-->
  <!-- Static Modal -->
<!-- Modal -->
<div class="modal fade bs-example-modal-lg" id="ensureContributionModal" tabindex="-1" role="dialog" aria-labelledby="ensureContributionLabel">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="ensureContributionModalLabel">Completar Tarea</h4>
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
                  <td>Asegurar el Aporte</td>
                  <td>Días Disponibles: 2</td>
                  <td>Construcción Escuelas</td>
                  <td>Solicitud</td>
                </tr>
                </tbody>
            </table>
          </div>
	
	
	
	  <div class="panel-body">

		<h2 class="sub-header">Requerimientos</h2>
          <div class="table-responsive">
            <table class="table table-striped contribution">
              <thead>
                <tr>
                  <th class="contribution">Cantidad</th>
                  <th class="contribution">Tipo de Patrocinio</th>
                  <th class="contribution">¿Asegurado?</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>25</td>
                  <td>Voluntarios</td>
                  <td><i class="glyphicon glyphicon-check"></i></td>
                </tr>
                <tr>
                  <td>100</td>
                  <td>Sistemas de Iluminación</td>
                  <td><i class="glyphicon glyphicon-check"></i></td>
                </tr>
                <tr>
                  <td>450</td>
                  <td>Sacos de Cemento</td>
                  <td><i class="glyphicon glyphicon-remove"></i></td>
                </tr>
                <tr>
                  <td>50</td>
                  <td>Electrodomésticos</td>
                  <td><i class="glyphicon glyphicon-check"></i></td>
                </tr>
                <tr>
                  <td>200</td>
                  <td>Postes de Madera</td>
                  <td><i class="glyphicon glyphicon-check"></i></td>
                </tr>
                <tr>
                  <td>125</td>
                  <td>Tarros de Pintura</td>
                  <td><i class="glyphicon glyphicon-check"></i></td>
                </tr>
              </tbody>
            </table>
          </div>
				
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
<!--     <button id="singlebutton" name="singlebutton" class="btn btn-primary">Enviar Encuesta</button> -->
    
    <a href="mailto:someone@example.com?cc=someoneelse@example.com&bcc=andsomeoneelse@example.com
&subject=Encuesta&body=Para realizar la encuesta siga el siguiente link: http://habitat-mcarmona.rhcloud.com/habitat/encuesta?proyecto=viviendas-corporacion=Pipasa" id="singlebutton" name="singlebutton" class="btn btn-primary">Completar</a>
    
    
    
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