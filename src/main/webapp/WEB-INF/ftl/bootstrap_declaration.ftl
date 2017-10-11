<head>
  <title>Habitat</title>
  <meta charset="ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  
  <script type="text/javascript" src="//cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
  
<!-- Global site js -->
   <script type="text/javascript" src="/DiccionarioLesco/resources/js/global.js"></script>
  
  <!-- Include Date Range Picker -->
<script type="text/javascript" src="//cdn.jsdelivr.net/bootstrap.daterangepicker/2/daterangepicker.js"></script>

<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.6.0/Chart.bundle.min.js"></script>




<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/bootstrap.daterangepicker/2/daterangepicker.css" />
  
<!--   <link rel="stylesheet" type="text/css" href="resources/css/common.css"> -->

<link rel="stylesheet" type="text/css" href="/DiccionarioLesco/resources/css/jumbotron.css">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">


	<#if (parameters??)>
		<#if (parameters?size > 0)>

			<#list parameters?values as v>
				<#if v?contains("css")>
					<link rel="stylesheet" type="text/css" href=${v}>
				</#if>
		    </#list>

		</#if>
	</#if>


</head>