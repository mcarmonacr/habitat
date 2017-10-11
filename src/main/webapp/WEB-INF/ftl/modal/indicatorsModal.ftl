 <!-- Not needed button -->
<!-- 	  <button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#processing-modal"> -->
<!--             <i class="glyphicon glyphicon-play"></i> Start Processing -->
<!--       </button>   -->
  
  <!-- Loading indicator modal. Taken from: http://bootsnipp.com/snippets/d3mxM-->
  <!-- Static Modal -->
<!-- Modal -->
<div class="modal fade bs-example-modal-lg" id="indicatorsModal" tabindex="-1" role="dialog" aria-labelledby="indicatorsLabel">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="indicatorsModalLabel">Tiempo entre el registro del prospecto y presentación de la propuesta</h4>
      </div>
      <div class="modal-body">
       
<div class="container">

      <div class="row starter-template">
      
      <div class="panel panel-default col-md-9">
		  <div class="panel-body">
		  
<!-- 		  <div class="table-responsive"> -->
<!--             <table class="table table-striped"> -->
<!--               <thead> -->
<!--                 <tr> -->
<!--                   <th>Tarea</th> -->
<!--                   <th>Información</th> -->
<!--                   <th>Proyecto</th> -->
<!--                   <th>Proceso</th> -->
<!--                 </tr> -->
<!--               </thead> -->
<!--               <tbody> -->
<!--                 <tr> -->
<!--                   <td>Presentar propuesta a la corporación Procter & Gamble</td> -->
<!--                   <td>Días Disponibles: 4</td> -->
<!--                   <td>Construcción Trocha</td> -->
<!--                   <td>Solicitud</td> -->
<!--                 </tr> -->
<!--                 </tbody> -->
<!--             </table> -->
<!--           </div> -->
		  
		  
<!-- 		  <h2 class="sub-header">Mapa de Recursos</h2> -->

<!-- Taken from: http://www.chartjs.org/docs/latest/ -->

<canvas id="myChart" width="400" height="400"></canvas>
<script>
var ctx = document.getElementById("myChart").getContext('2d');
var myChart = new Chart(ctx, {
    type: 'bar',
    data: {
        labels: ["Sherwin Williams"],
        datasets: [{
            label: 'Corporaciones',
            data: [9.6],
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(255, 159, 64, 0.2)'
            ],
            borderColor: [
                'rgba(255,99,132,1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(153, 102, 255, 1)',
                'rgba(255, 159, 64, 1)'
            ],
            borderWidth: 1
        }]
    },
    options: {
        scales: {
            yAxes: [{
                ticks: {
                    beginAtZero:true,
                    suggestedMax:12
                }
            }]
        },
	    title: {
	        display: true,
	        text: 'Meses',
	        position:'left'
	    }
    }
});
</script>



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