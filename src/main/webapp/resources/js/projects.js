jQuery(document).ready(function($) {

	$("#addProjectForm").submit(function(event) {
		event.preventDefault();
		submitform();
		});
	
		$("#termsInput").keyup(function(){
			checkTerm();
		});

});


function submitform() {

	  //Project Information
	  var scope=document.getElementById("scope");
	  var projectName=document.getElementById("projectName");
	  var projectCode=document.getElementById("projectCode");
	  
	  //Contact Information 
	  var contactName= document.getElementById("contactName");
	  var officePhoneNumber= document.getElementById("officePhoneNumber");
	  var corporateEmail= document.getElementById("corporateEmail");
	  var position= document.getElementById("position");
	  var country= document.getElementById("country");
	  var city= document.getElementById("city");
	  var state= document.getElementById("state");
	  var zipCode= document.getElementById("zipCode");
	  
	  //Requirements Information
	  var quantity_1= document.getElementById("quantity-1");
	  var sponsorshipType_1= document.getElementById("sponsorshipType-1");
	  var unitaryCost_1= document.getElementById("unitaryCost-1");
	  var totalCost_1= document.getElementById("totalCost-1");
	  
	  var quantity_2= document.getElementById("quantity-2");
	  var sponsorshipType_2= document.getElementById("sponsorshipType-2");
	  var unitaryCost_2= document.getElementById("unitaryCost-2");
	  var totalCost_2= document.getElementById("totalCost-2");
	  
	  var quantity_3= document.getElementById("quantity-3");
	  var sponsorshipType_3= document.getElementById("sponsorshipType-3");
	  var unitaryCost_3= document.getElementById("unitaryCost-3");
	  var totalCost_3= document.getElementById("totalCost-3");
	  
	  var quantity_4= document.getElementById("quantity-4");
	  var sponsorshipType_4= document.getElementById("sponsorshipType-4");
	  var unitaryCost_4= document.getElementById("unitaryCost-4");
	  var totalCost_4= document.getElementById("totalCost-4");
	  
	  var quantity_5= document.getElementById("quantity-5");
	  var sponsorshipType_5= document.getElementById("sponsorshipType-5");
	  var unitaryCost_5= document.getElementById("unitaryCost-5");
	  var totalCost_5= document.getElementById("totalCost-5");

	  
	  var projectParameters = {
	            "scope":scope.value,
	            "projectName":projectName.value,
	            "projectCode":projectCode.value
	  }
	  
	  var contactParameters = {
				"contactName":contactName.value,
		        "officePhoneNumber":officePhoneNumber.value,
		        "corporateEmail":corporateEmail.checked,
		        "position":position.value,
		        "country":country.value,
		        "city":city.value,
		        "state":state.value,
		        "zipCode":zipCode.value
	  }
	  
	  var requirementsParameters = {
			  "quantity1":quantity_1.value,
			  "sponsorshipType1":sponsorshipType_1.value,
			  "unitaryCost1":unitaryCost_1.value,
			  "totalCost1":totalCost_1.value,
			  
			  "quantity2":quantity_2.value,
			  "sponsorshipType2":sponsorshipType_2.value,
			  "unitaryCost2":unitaryCost_2.value,
			  "totalCost2":totalCost_2.value,
			  
			  "quantity3":quantity_3.value,
			  "sponsorshipType3":sponsorshipType_3.value,
			  "unitaryCost3":unitaryCost_3.value,
			  "totalCost3":totalCost_3.value,
			  
			  "quantity4":quantity_4.value,
			  "sponsorshipType4":sponsorshipType_4.value,
			  "unitaryCost4":unitaryCost_4.value,
			  "totalCost4":totalCost_4.value,
			  
			  "quantity5":quantity_5.value,
			  "sponsorshipType5":sponsorshipType_5.value,
			  "unitaryCost5":unitaryCost_5.value,
			  "totalCost5":totalCost_5.value
	  }
	  
	  var search = {
				"projectForm":projectParameters,
				"contactForm":contactParameters,
				"requirementsForm":requirementsParameters
		  }

	  $.ajax({
	  	headers: { 
	        'Accept': 'application/json',
	        'Content-Type': 'application/json' 
	    },
		type: 'post',
	    contentType : "application/json",
	    //url: "http://localhost:8080/DiccionarioLesco/registro/verificarUsuario",
	    url: "/habitat/proyectos/agregarProyecto",
	    data : JSON.stringify(search),
	    dataType : 'json',
	    success : function(data) {
			console.log("SUCCESS: ", data);
			
			//The true parameter forces the page to release it's cache.
			window.location.reload(true);
			
			//display(data);
		},
		error : function(e) {
			console.log("ERROR: ", e);
			//display(e);
		},
		done : function(e) {
			console.log("DONE");
			//enableSearchButton(true);
		}
	  });
	  //return false;
	}


function checkTerm() {

	  var termsInput= document.getElementById("termsInput");
	  
	  var search= {
	            "termsInput":termsInput.value
	    }

	  $.ajax({
	  	headers: { 
	        'Accept': 'application/json',
	        'Content-Type': 'application/json' 
	    },
		type: 'post',
	    contentType : "application/json",
	    url: "/habitat/proyectos/obtenerListaProyectos",
	    data : JSON.stringify(search),
	    dataType : 'json',
	    success : function(data) {
	    	console.log("SUCCESS: ", data);
	    	if(data != null && data.code == "000"){
	    		updateTermsList(data.content.projectsList);
	    	}else if(data != null && data.code == "001"){
	    		var projectListDiv= $("#projectListDiv");
	    		projectListDiv.children().remove();
	    		
	    		//Update the total terms counter
	    		var totalTermsCounter= $("#totalTermsCounter");
	    		
	    		totalTermsCounter.text("Total: 0");
	    		
	    		//TO DO Update counter when there is an empty list
	    		
	    	} else {
	    		
	    	}
		},
		error : function(e) {
			console.log("ERROR: ", e);
			//display(e);
		},
		done : function(e) {
			//console.log("DONE");
			//enableSearchButton(true);
		}
	  });
	  //return false;
}

function updateTermsList(projectList){
	
	//Get the ID wordListDiv
	var projectListDiv= $("#projectListDiv");
	
	//Remove all anchors form the wordListDiv
	projectListDiv.children().remove();
	
	//Insert the new set of word from the query
	for (index = 0; index < projectList.length; index++) {
		var anchor= $("<a>");
		anchor.attr("href", "#");
		//anchor.attr("onclick", "loadDetail("+ projectList[index].wordId +")");
		anchor.addClass("list-group-item");
		anchor.text(projectList[index].projectName);
		
		projectListDiv.append(anchor);
	}
	
	//Update the total terms counter
	var totalTermsCounter= $("#totalTermsCounter");
	
	totalTermsCounter.text("Total: " + projectList.length);
}