$(function() {
    $('input[name="availableDate"]').daterangepicker({
        singleDatePicker: true,
        showDropdowns: true
//			        locale: {
//			            format: 'YYYY-MM-DD'
//			          },
    }, 
    function(start, end, label) {
        //var years = moment().diff(start, 'years');
        //alert("You are " + years + " years old.");
    });
    
    
    
});

jQuery(document).ready(function($) {

	$("#addCorporationForm").submit(function(event) {
		event.preventDefault();
		submitform();
	});
	
	$("#termsInput").keyup(function(){
		checkTerm();
	});
	
	$('input[type=radio]').change(function(){
        //alert('changed');
		//console.log(this);
		checkDetailAvailability($(this));
    }); 

});


function submitform() {
	
	var formData= new FormData();

	  //Corporation Information
	  var corporationName= document.getElementById("corporationName");
	  var industry= document.getElementById("industry");
	  var scope= document.getElementById("scope");
	  var actionAxis= document.getElementById("actionAxis");
	  var address= document.getElementById("address");
	  var habitatParticipation= document.getElementById("habitatParticipation");
	  var comments= document.getElementById("comments");
	  var availableDate= document.getElementById("availableDate");
	  
	  //Contact Information 
	  var contactName= document.getElementById("contactName");
	  var officePhoneNumber= document.getElementById("officePhoneNumber");
	  var corporateEmail= document.getElementById("corporateEmail");
	  var position= document.getElementById("position");
	  var country= document.getElementById("country");
	  var city= document.getElementById("city");
	  var state= document.getElementById("state");
	  var zipCode= document.getElementById("zipCode");
	  
	  //Resources Information
	  var informationCapture= $("#selectmultiple-1");
	  var humanResource= $("#selectmultiple-2");
	  var relationshipNetwork= $("#selectmultiple-3");
	  var habilities= $("#selectmultiple-4");
	  var informationDifusion= $("#selectmultiple-5");
	  var housing= $("#selectmultiple-6");
	  var environmental= $("#selectmultiple-7");
	  var social= $("#selectmultiple-8");
	  var products= $("#selectmultiple-9");
	  var others= $("#selectmultiple-10");
	  
	  //Resources radio button elements
	  var informationCaptureValue= ($("#radios-1-1").val() == "1") ? informationCapture.serialize() : "";
	  var humanResourceValue= ($("#radios-2-1").val() == "1") ? humanResource.serialize() : "";
	  var relationshipNetworkValue= ($("#radios-3-1").val() == "1") ? relationshipNetwork.serialize() : "";
	  var habilitiesValue= ($("#radios-4-1").val() == "1") ? habilities.serialize() : "";
	  var informationDifusionValue= ($("#radios-5-1").val() == "1") ? informationDifusion.serialize() : "";
	  var housingValue= ($("#radios-6-1").val() == "1") ? housing.serialize() : "";
	  var environmentalValue= ($("#radios-7-1").val() == "1") ? environmental.serialize() : "";
	  var socialValue= ($("#radios-8-1").val() == "1") ? social.serialize() : "";
	  var productsValue= ($("#radios-9-1").val() == "1") ? products.serialize() : "";
	  var othersValue= ($("#radios-10-1").val() == "1") ? others.serialize() : "";
	  
	  //Ejemplo a seguir: https://stackoverflow.com/questions/25521784/send-complex-json-object-to-spring-mvc-controller
	  
	  var corporationParameters = {
        "corporationName":corporationName.value,
        "industry":industry.value,
        "scope":scope.value,
        "actionAxis":actionAxis.value,
        "address":address.value,
        "habitatParticipation":habitatParticipation.value,
        "comments":comments.checked,
        "availableDate":availableDate.value
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
	  
	  var resourcesParameters = {

		"informationCapture":informationCaptureValue,
		"humanResource":humanResourceValue,
		"relationshipNetwork":relationshipNetworkValue,
		"habilities":habilitiesValue,
		"informationDifusion":informationDifusionValue,
		"housing":housingValue,
		"environmental":environmentalValue,
		"social":socialValue,
		"products":productsValue,
		"others":othersValue
	  }
	  
	  
	  formData.append("corporationParameters", new Blob([JSON.stringify(corporationParameters)], { type: "application/json"}));
	  formData.append("contactParameters", new Blob([JSON.stringify(contactParameters)], { type: "application/json"}));
	  formData.append("resourcesParameters", new Blob([JSON.stringify(resourcesParameters)], { type: "application/json"}));
	  
	  
	  var search = {
			"corporationForm":corporationParameters,
			"contactForm":contactParameters,
			"resourcesForm":resourcesParameters
	  }
	  

	  $.ajax({
	  	headers: { 
	        'Accept': 'application/json',
	        'Content-Type': 'application/json' 
	    },
		type: 'post',
	    contentType : "application/json",
	    //url: "http://localhost:8080/DiccionarioLesco/registro/verificarUsuario",
	    url: "/habitat/corporaciones/agregarCorporacion",
	    //data : formData,
	    //processData: false,
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
	    url: "/habitat/corporaciones/obtenerListaCorporaciones",
	    data : JSON.stringify(search),
	    dataType : 'json',
	    success : function(data) {
	    	console.log("SUCCESS: ", data);
	    	if(data != null && data.code == "000"){
	    		updateTermsList(data.content.corporationsList);
	    	}else if(data != null && data.code == "001"){
	    		var corporationListDiv= $("#corporationListDiv");
	    		corporationListDiv.children().remove();
	    		
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

function updateTermsList(corporationList){
	
	//Get the ID wordListDiv
	var corporationListDiv= $("#corporationListDiv");
	
	//Remove all anchors form the wordListDiv
	corporationListDiv.children().remove();
	
	//Insert the new set of word from the query
	for (index = 0; index < corporationList.length; index++) {
		var anchor= $("<a>");
		anchor.attr("href", "#");
		//anchor.attr("onclick", "loadDetail("+ projectList[index].wordId +")");
		anchor.addClass("list-group-item");
		anchor.text(corporationList[index].corporationName);
		
		corporationListDiv.append(anchor);
	}
	
	//Update the total terms counter
	var totalTermsCounter= $("#totalTermsCounter");
	
	totalTermsCounter.text("Total: " + corporationList.length);
}

function checkDetailAvailability(inputRadioButton) {
	var radioName= inputRadioButton.attr('name');
	var radioSplit= radioName.split('-');
	var radioId= radioSplit[1];
	
	var radioValue= inputRadioButton.attr('value');
	
	var selectMultiple= $("#selectmultiple-"+radioId);
	
	//If the value is one means yes, and the user should be able to edit
	if(radioValue == "1"){
		selectMultiple.prop( "disabled", false );
	} else {
		selectMultiple.prop( "disabled", true );
	}
	
	
	
	
}