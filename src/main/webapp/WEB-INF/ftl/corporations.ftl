<#import "common.ftl" as c/>
<@c.page css="resources/css/home.css" js="resources/js/corporations.js">
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
	    	<h1><span class="label label-default terms-header">Corporaciones</span></h1>
	    </div>
	    
	    <div class="row input-group search-text-box">
		  <span class="glyphicon glyphicon-search input-group-addon home-search-glyphicon"></span>
<!-- 		   <span class="input-group-addon" id="basic-addon1">@</span> -->
		  <input id="termsInput" name="termsInput" type="text" class="form-control" placeholder="Buscar" aria-describedby="sizing-addon2">
		</div>
	    
	    <div id="corporationListDiv" class="row terms-list">
	    
	    <#list corporationsList as corporation>
			<a href="#" class="list-group-item">${corporation.corporationName}</a>
	  	</#list>
	    
<!-- 		  <a href="#" class="list-group-item active"> -->
<!-- 		    Cras justo odio -->
<!-- 		  </a> -->
<!-- 		  <a href="#" class="list-group-item">Coca Cola</a> -->
<!-- 		  <a href="#" class="list-group-item">EPA</a> -->
<!-- 		  <a href="#" class="list-group-item">Procter & Gamble</a> -->
<!-- 		  <a href="#" class="list-group-item">IBM</a> -->
<!-- 		  <a href="#" class="list-group-item">Imperial</a> -->
<!-- 		  <a href="#" class="list-group-item">Intel</a> -->
<!-- 		  <a href="#" class="list-group-item">Microsoft</a> -->
<!-- 		  <a href="#" class="list-group-item">Oracle</a> -->
<!-- 		  <a href="#" class="list-group-item">Nike</a> -->
<!-- 		  <a href="#" class="list-group-item">Televisa</a> -->
<!-- 		  <a href="#" class="list-group-item">Toyota</a> -->
<!-- 		  <a href="#" class="list-group-item">Sony</a> -->
<!-- 		  <a href="#" class="list-group-item">Adidas</a> -->
<!-- 		  <a href="#" class="list-group-item">Samsung</a> -->
<!-- 		  <a href="#" class="list-group-item">Letra</a> -->
<!-- 		  <a href="#" class="list-group-item">Nunca</a> -->
		  
		  </div>
		  
		  <div class="row">
		  	<h1><span id="totalTermsCounter" class="label label-default terms-header">Total: ${corporationsList?size}</span></h1>
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
		  
		  	<form class="form-horizontal" name="addCorporationForm" id="addCorporationForm" enctype="multipart/form-data">
				<fieldset>
				
					<!-- Form Name -->
					<legend>Agregar Corporación</legend>
					

					<!-- Text input-->
					<div class="form-group">
					  <label class="col-md-4 control-label" for="corporationName">Nombre</label>  
					  <div class="col-md-4">
					  <input id="corporationName" name="corporationName" type="text" placeholder="Nombre de la Corporación" class="form-control input-md" required="">
					    
					  </div>
					</div>
					
					<!-- Text input-->
					<div class="form-group">
					  <label class="col-md-4 control-label" for="industry">Industria</label>  
					  <div class="col-md-4">
					  <input id="industry" name="industry" type="text" placeholder="" class="form-control input-md">
					    
					  </div>
					</div>
					
					<!-- Select Basic -->
					<div class="form-group">
					  <label class="col-md-4 control-label" for="scope">Alcance</label>
					  <div class="col-md-4">
					    <select id="scope" name="scope" class="form-control">
					      <option value="1">Global</option>
					      <option value="2">Regional</option>
					      <option value="3">Local</option>
					    </select>
					  </div>
					</div>
					
					<!-- Select Basic -->
					<div class="form-group">
					  <label class="col-md-4 control-label" for="actionAxis">Eje de Acción</label>
					  <div class="col-md-4">
					    <select id="actionAxis" name="actionAxis" class="form-control">
					      <option value="1">Desarrollo de Talento Humano</option>
					      <option value="2">Alianzas Sociales</option>
					      <option value="3">Inclusión Financiera</option>
					      <option value="4">Asesoría y Consultoría</option>
					    </select>
					  </div>
					</div>
					
					<!-- Textarea -->
					<div class="form-group">
					  <label class="col-md-4 control-label" for="address">Dirección</label>
					  <div class="col-md-4">                     
					    <textarea class="form-control" id="address" name="address"></textarea>
					  </div>
					</div>
					
					<!-- Text input-->
					<div class="form-group">
					  <label class="col-md-4 control-label" for="habitatParticipation">Participación en Habitat</label>  
					  <div class="col-md-4">
					  <input id="habitatParticipation" name="habitatParticipation" type="text" placeholder="" class="form-control input-md">
					    
					  </div>
					</div>
					
					<!-- Textarea -->
					<div class="form-group">
					  <label class="col-md-4 control-label" for="comments">Comentarios</label>
					  <div class="col-md-4">                     
					    <textarea class="form-control" id="comments" name="comments"></textarea>
					  </div>
					</div>
					
					<div class="form-group">
					  <label class="col-md-4 control-label" for="birthDate">Fecha Disponible</label>
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
          Mapa de Recursos
        </a>
      </h4>
    </div>
    <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
      <div class="panel-body">
      
<!-- 		<h2 class="sub-header">Actividades</h2> -->
          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>Aporte</th>
                  <th>Sí / No</th>
                  <th>Detalle</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>1. Captura de Información</td>
                  <td>
	                  	<!-- Multiple Radios (inline) -->
						<div class="form-group">
<!-- 						  <label class="col-md-4 control-label" for="radios">Inline Radios</label> -->
<!-- 						  <div class="col-md-4"> -->
						  <div> 
						    <label class="radio-inline" for="radios-1-1">
						      <input type="radio" name="radios-1" id="radios-1-1" value="1">
						      Sí
						    </label> 
						    <label class="radio-inline" for="radios-1-2">
						      <input type="radio" name="radios-1" id="radios-1-2" value="2" checked="checked">
						      No
						    </label>
						  </div>
						</div>
					</td>
                  <td>
                  	<!-- Select Multiple -->
					<div class="form-group">
<!-- 					  <label class="col-md-4 control-label" for="selectmultiple">Select Multiple</label> -->
					  <div class="col-md-12">
<!-- 					  <div> -->
					    <select id="selectmultiple-1" name="selectmultiple-1" class="form-control" multiple="multiple" disabled>
					      <option value="Asesorías Estadísticas/Legales">Asesorías Estadísticas/Legales</option>
					      <option value="Análisis de Mercados y Pronósticos">Análisis de Mercados y Pronósticos</option>
					      <option value="Conocimiento Local de Condiciones Sociales">Conocimiento Local de Condiciones Sociales</option>
					    </select>
					    
<!-- 					    <div class="input-group"> -->
<!-- 					      <span class="input-group-addon"> -->
<!-- 					        <input type="checkbox" aria-label="..."> -->
<!-- 					      </span> -->
<!-- 					      <input type="text" class="form-control" aria-label="..."> -->
<!-- 					    </div>/input-group -->

					  </div>
					</div>
                  </td>
                </tr>
                <tr>
                  <td>2. Recurso Humano</td>
                  <td>
	                  	<!-- Multiple Radios (inline) -->
						<div class="form-group">
<!-- 						  <label class="col-md-4 control-label" for="radios">Inline Radios</label> -->
<!-- 						  <div class="col-md-4"> -->
						  <div> 
						    <label class="radio-inline" for="radios-2-1">
						      <input type="radio" name="radios-2" id="radios-2-1" value="1">
						      Sí
						    </label> 
						    <label class="radio-inline" for="radios-2-2">
						      <input type="radio" name="radios-2" id="radios-2-2" value="2" checked="checked">
						      No
						    </label>
						  </div>
						</div>
					</td>
                  <td>
                  	<!-- Select Multiple -->
					<div class="form-group">
<!-- 					  <label class="col-md-4 control-label" for="selectmultiple">Select Multiple</label> -->
					  <div class="col-md-12">
<!-- 					  <div> -->
					    <select id="selectmultiple-2" name="selectmultiple-2" class="form-control" multiple="multiple" disabled>
					      <option value="Personal Especialista">Personal Especialista</option>
					      <option value="Voluntarios">Voluntarios</option>
					      <option value="Estudiantes/Interinos">Estudiantes/Interinos</option>
					      <option value="Soporte Administrativo">Soporte Administrativo</option>
					      <option value="Funcionarios">Funcionarios</option>
					    </select>
					  </div>
					</div>
                  </td>
                </tr>
                <tr>
                  <td>3. Red de Relaciones con:</td>
                  <td>
	                  	<!-- Multiple Radios (inline) -->
						<div class="form-group">
<!-- 						  <label class="col-md-4 control-label" for="radios">Inline Radios</label> -->
<!-- 						  <div class="col-md-4"> -->
						  <div> 
						    <label class="radio-inline" for="radios-3-1">
						      <input type="radio" name="radios-3" id="radios-3-1" value="1">
						      Sí
						    </label> 
						    <label class="radio-inline" for="radios-3-2">
						      <input type="radio" name="radios-3" id="radios-3-2" value="2" checked="checked">
						      No
						    </label>
						  </div>
						</div>
					</td>
                  <td>
                  	<!-- Select Multiple -->
					<div class="form-group">
<!-- 					  <label class="col-md-4 control-label" for="selectmultiple">Select Multiple</label> -->
					  <div class="col-md-12">
<!-- 					  <div> -->
					    <select id="selectmultiple-3" name="selectmultiple-3" class="form-control" multiple="multiple" disabled>
					      <option value="Donantes">Donantes</option>
					      <option value="Legisladores/Formadores de Políticas">Legisladores/Formadores de Políticas</option>
					      <option value="Organizaciones/Proveedores laborales">Organizaciones/Proveedores laborales</option>
					      <option value="Instituciones Religiosas">Instituciones Religiosas</option>
					      <option value="Público en General">Público en General</option>
					      <option value="Medios de Comunicación">Medios de Comunicación</option>
					    </select>
					  </div>
					</div>
                  </td>
                </tr>
                <tr>
                  <td>4. Habilidades</td>
                  <td>
	                  	<!-- Multiple Radios (inline) -->
						<div class="form-group">
<!-- 						  <label class="col-md-4 control-label" for="radios">Inline Radios</label> -->
<!-- 						  <div class="col-md-4"> -->
						  <div> 
						    <label class="radio-inline" for="radios-4-1">
						      <input type="radio" name="radios-4" id="radios-4-1" value="1">
						      Sí
						    </label> 
						    <label class="radio-inline" for="radios-4-2">
						      <input type="radio" name="radios-4" id="radios-4-2" value="2" checked="checked">
						      No
						    </label>
						  </div>
						</div>
					</td>
                  <td>
                  	<!-- Select Multiple -->
					<div class="form-group">
<!-- 					  <label class="col-md-4 control-label" for="selectmultiple">Select Multiple</label> -->
					  <div class="col-md-12">
<!-- 					  <div> -->
					    <select id="selectmultiple-4" name="selectmultiple-4" class="form-control" multiple="multiple" disabled>
					      <option value="Expertos Técnicos">Expertos Técnicos</option>
					      <option value="Desarrollo de Proyectos">Desarrollo de Proyectos</option>
					      <option value="Capacitación/Creación de capacidad">Capacitación/Creación de capacidad</option>
					      <option value="Gestión">Gestión</option>
					      <option value="Marketing">Marketing</option>
					      <option value="Facilitación">Facilitación</option>
					      <option value="Convocatoria">Convocatoria</option>
					    </select>
					  </div>
					</div>
                  </td>
                </tr>
                <tr>
                  <td>5. Difusión de Información</td>
                  <td>
	                  	<!-- Multiple Radios (inline) -->
						<div class="form-group">
<!-- 						  <label class="col-md-4 control-label" for="radios">Inline Radios</label> -->
<!-- 						  <div class="col-md-4"> -->
						  <div> 
						    <label class="radio-inline" for="radios-5-1">
						      <input type="radio" name="radios-5" id="radios-5-1" value="1">
						      Sí
						    </label> 
						    <label class="radio-inline" for="radios-5-2">
						      <input type="radio" name="radios-5" id="radios-5-2" value="2" checked="checked">
						      No
						    </label>
						  </div>
						</div>
					</td>
                  <td>
                  	<!-- Select Multiple -->
					<div class="form-group">
<!-- 					  <label class="col-md-4 control-label" for="selectmultiple">Select Multiple</label> -->
					  <div class="col-md-12">
<!-- 					  <div> -->
					    <select id="selectmultiple-5" name="selectmultiple-5" class="form-control" multiple="multiple" disabled>
					      <option value="Sistemas de comunicaciones electrónicas">Sistemas de comunicaciones electrónicas</option>
					      <option value="Boca en boca">Boca en boca</option>
					      <option value="Materiales publicados">Materiales publicados</option>
					      <option value="Redes">Redes</option>
					    </select>
					  </div>
					</div>
                  </td>
                </tr>
                <tr>
                  <td>6. Alojamiento para:</td>
                  <td>
	                  	<!-- Multiple Radios (inline) -->
						<div class="form-group">
<!-- 						  <label class="col-md-4 control-label" for="radios">Inline Radios</label> -->
<!-- 						  <div class="col-md-4"> -->
						  <div> 
						    <label class="radio-inline" for="radios-6-1">
						      <input type="radio" name="radios-6" id="radios-6-1" value="1">
						      Sí
						    </label> 
						    <label class="radio-inline" for="radios-6-2">
						      <input type="radio" name="radios-6" id="radios-6-2" value="2" checked="checked">
						      No
						    </label>
						  </div>
						</div>
					</td>
                  <td>
                  	<!-- Select Multiple -->
					<div class="form-group">
<!-- 					  <label class="col-md-4 control-label" for="selectmultiple">Select Multiple</label> -->
					  <div class="col-md-12">
<!-- 					  <div> -->
					    <select id="selectmultiple-6" name="selectmultiple-6" class="form-control" multiple="multiple" disabled>
					      <option value="Oficinas para la gestión de la Alianza/Proyecto">Oficinas para la gestión de la Alianza/Proyecto</option>
					      <option value="Reuniones/Talleres">Reuniones/Talleres</option>
					      <option value="Eventos de alto perfil">Eventos de alto perfil</option>
					      <option value="Almacenamiento">Almacenamiento</option>
					      <option value="Actividades del proyecto">Actividades del proyecto</option>
					      <option value="Punto de información pública">Punto de información pública</option>
					    </select>
					  </div>
					</div>
                  </td>
                </tr>
                <tr>
                  <td>7. Ambiental</td>
                  <td>
	                  	<!-- Multiple Radios (inline) -->
						<div class="form-group">
<!-- 						  <label class="col-md-4 control-label" for="radios">Inline Radios</label> -->
<!-- 						  <div class="col-md-4"> -->
						  <div> 
						    <label class="radio-inline" for="radios-7-1">
						      <input type="radio" name="radios-7" id="radios-7-1" value="1">
						      Sí
						    </label> 
						    <label class="radio-inline" for="radios-7-2">
						      <input type="radio" name="radios-7" id="radios-7-2" value="2" checked="checked">
						      No
						    </label>
						  </div>
						</div>
					</td>
                  <td>
                  	<!-- Select Multiple -->
					<div class="form-group">
<!-- 					  <label class="col-md-4 control-label" for="selectmultiple">Select Multiple</label> -->
					  <div class="col-md-12">
<!-- 					  <div> -->
					    <select id="selectmultiple-7" name="selectmultiple-7" class="form-control" multiple="multiple" disabled>
					      <option value="Campañas de reforestación">Campañas de reforestación</option>
					      <option value="Programas de reciclaje">Programas de reciclaje</option>
					      <option value="Desarrollo sostenible">Desarrollo sostenible</option>
					      <option value="Productos / Servicios ambientales">Productos / Servicios ambientales</option>
					    </select>
					  </div>
					</div>
                  </td>
                </tr>
                <tr>
                  <td>8. Social</td>
                  <td>
	                  	<!-- Multiple Radios (inline) -->
						<div class="form-group">
<!-- 						  <label class="col-md-4 control-label" for="radios">Inline Radios</label> -->
<!-- 						  <div class="col-md-4"> -->
						  <div> 
						    <label class="radio-inline" for="radios-8-1">
						      <input type="radio" name="radios-8" id="radios-8-1" value="1">
						      Sí
						    </label> 
						    <label class="radio-inline" for="radios-8-2">
						      <input type="radio" name="radios-8" id="radios-8-2" value="2" checked="checked">
						      No
						    </label>
						  </div>
						</div>
					</td>
                  <td>
                  	<!-- Select Multiple -->
					<div class="form-group">
<!-- 					  <label class="col-md-4 control-label" for="selectmultiple">Select Multiple</label> -->
					  <div class="col-md-12">
<!-- 					  <div> -->
					    <select id="selectmultiple-8" name="selectmultiple-8" class="form-control" multiple="multiple" disabled>
					      <option value="Programas de apoyo a la educación">Programas de apoyo a la educación</option>
					      <option value="Programas de apoyo a Fundaciones/ Organizaciones No Gubernamentales">Programas de apoyo a Fundaciones/ Organizaciones No Gubernamentales</option>
					      <option value="Programas de apoyo a actividades deportivas/ culturales">Programas de apoyo a actividades deportivas/ culturales</option>
					    </select>
					  </div>
					</div>
                  </td>
                </tr>
                <tr>
                  <td>9. Productos</td>
                  <td>
	                  	<!-- Multiple Radios (inline) -->
						<div class="form-group">
<!-- 						  <label class="col-md-4 control-label" for="radios">Inline Radios</label> -->
<!-- 						  <div class="col-md-4"> -->
						  <div> 
						    <label class="radio-inline" for="radios-9-1">
						      <input type="radio" name="radios-9" id="radios-9-1" value="1">
						      Sí
						    </label> 
						    <label class="radio-inline" for="radios-9-2">
						      <input type="radio" name="radios-9" id="radios-9-2" value="2" checked="checked">
						      No
						    </label>
						  </div>
						</div>
					</td>
                  <td>
                  	<!-- Select Multiple -->
					<div class="form-group">
<!-- 					  <label class="col-md-4 control-label" for="selectmultiple">Select Multiple</label> -->
					  <div class="col-md-12">
<!-- 					  <div> -->
					    <select id="selectmultiple-9" name="selectmultiple-9" class="form-control" multiple="multiple" disabled>
					      <option value="Medicinas">Medicinas</option>
					      <option value="Materiales de construcción">Materiales de construcción</option>
					      <option value="Comida">Comida</option>
					      <option value="Tecnologías de Información">Tecnologías de Información</option>
					      <option value="Suministros de energía">Suministros de energía</option>
					    </select>
					  </div>
					</div>
                  </td>
                </tr>
                <tr>
                  <td>10. Otros</td>
                  <td>
	                  	<!-- Multiple Radios (inline) -->
						<div class="form-group">
<!-- 						  <label class="col-md-4 control-label" for="radios">Inline Radios</label> -->
<!-- 						  <div class="col-md-4"> -->
						  <div> 
						    <label class="radio-inline" for="radios-10-1">
						      <input type="radio" name="radios-10" id="radios-10-1" value="1">
						      Sí
						    </label> 
						    <label class="radio-inline" for="radios-10-2">
						      <input type="radio" name="radios-10" id="radios-10-2" value="2" checked="checked">
						      No
						    </label>
						  </div>
						</div>
					</td>
                  <td>
                  	<!-- Select Multiple -->
					<div class="form-group">
<!-- 					  <label class="col-md-4 control-label" for="selectmultiple">Select Multiple</label> -->
					  <div class="col-md-12">
<!-- 					  <div> -->
					    <select id="selectmultiple-10" name="selectmultiple-10" class="form-control" multiple="multiple" disabled>
					      <option value="Transporte">Transporte</option>
					      <option value="Equipo">Equipo</option>
					      <option value="Menaje">Menaje</option>
					    </select>
					  </div>
					</div>
                  </td>
                </tr>
              </tbody>
            </table>
          </div>

      </div>
    </div>
  </div>

</div>
					
<!-- 					Text input -->
<!-- 					<div class="form-group"> -->
<!-- 					  <label class="col-md-4 control-label" for="availableDate">Fecha Disponible</label>   -->
<!-- 					  <div class="col-md-4"> -->
<!-- 					  <input id="availableDate" name="availableDate" type="text" placeholder="" class="form-control input-md"> -->
					    
<!-- 					  </div> -->
<!-- 					</div> -->
					
					<!-- Password input-->
			
					
					<!-- Button (Double) -->
					<div class="form-group">
<!-- 					  <label class="col-md-6 control-label" for="corporationsSend"></label> -->
					  <div class="col-md-offset-5">
					    <button id="corporationsSend" name="corporationsSend" class="btn btn-success">Agregar</button>
<!-- 					    <button id="corporationsCancel" name="corporationsCancel" class="btn btn-danger">Cancelar</button> -->
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