jQuery(document).ready(function($) {

	$("#linkAgreementForm").submit(function(event) {
		event.preventDefault();
		submitLinkAgreementForm();
		});
	
		$("#termsInput").keyup(function(){
			checkTerm();
		});

});

function assignCorporation(category, categoryId)
{
    $("#dropdownMenu1").html('<span class="glyphicon glyphicon-tasks"></span> '+ category +' <span class="caret"></span>' + '<div id="categoryIdDiv" hidden>' + categoryId+ '</div>');
    //$("#categoryIdDiv").text(categoryId);
    
    //Check the term lists
    //checkTerm();
}

function assignProject(category, categoryId)
{
    $("#dropdownMenu2").html('<span class="glyphicon glyphicon-tasks"></span> '+ category +' <span class="caret"></span>' + '<div id="categoryIdDiv" hidden>' + categoryId+ '</div>');
    //$("#categoryIdDiv").text(categoryId);
    
    //Check the term lists
    //checkTerm();
}


function submitform() {

	  //Project Information
	  var projectIdDiv=document.getElementById("projectIdDiv");
	  var corporationIdDiv=document.getElementById("corporationIdDiv");
	  
	  var search = {
				"projectId":projectIdDiv.value,
				"corporationId":corporationIdDiv.value
		  }

	  $.ajax({
	  	headers: { 
	        'Accept': 'application/json',
	        'Content-Type': 'application/json' 
	    },
		type: 'post',
	    contentType : "application/json",
	    //url: "http://localhost:8080/DiccionarioLesco/registro/verificarUsuario",
	    url: "/habitat/convenios/asociarProyectoCorporacion",
	    data : JSON.stringify(search),
	    dataType : 'json',
	    success : function(data) {
			console.log("SUCCESS: ", data);
			
			//The true parameter forces the page to release it's cache.
			//window.location.reload(true);
			
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