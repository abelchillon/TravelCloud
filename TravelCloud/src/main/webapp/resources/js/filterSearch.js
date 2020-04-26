$('document').ready(function() {	
	$("#comunitat").on("change", function (e) {
		$.ajax({
	    url: "/search_filter",
	    method: "POST",
	    data: { tipo: $(this).val() },
	    success: function (response) {
	    if (response) 
	        $("#provincia option:not(:disabled)").remove();
	        $.each(response, function(index, option) {	
	        	if(option.provincia != null){
	        		$("#provincia").append('<option value="'+ option.id +'">'+ option.provincia +'</option>')         		        		
	        		$("#provincia").change();
	        	}
	        });
	     }
		});
	});
	$("#provincia").on("change", function (e) {
		$.ajax({
	    url: "/search_filter",
	    method: "POST",
	    data: { tipo: $(this).val() },
	    success: function (response) {
	    if (response) 
	        $("#localitat option:not(:disabled)").remove();
	        $.each(response, function(index, option) {
	        	$("#localitat").append('<option value="'+ option.id +'">'+ option.localitat +'</option>') 
	        	$("#localitat").change();
	        });
	     }
		});
	});
	$("#localitat").on("change", function (e) {
		$.ajax({
	    url: "/search_filter_localitat",
	    method: "POST",
	    data: { tipo: $(this).val() },
	    success: function (response) {
	    if (response) 
	        $("#tipus option:not(:disabled)").remove();
	        $.each(response, function(index, option) {
	        	$("#tipus").append('<option value="'+ option.id +'">'+ option.tipus +'</option>') 
	        	$("#tipus").change();
	        });
	     }
		});
	});
	$("#tipus").on("change", function (e) {
		$.ajax({
	    url: "/search_filter_localitat",
	    method: "POST",
	    data: { tipo: $(this).val() },
	    success: function (response) {
	    if (response) 
	        $("#entorn option:not(:disabled)").remove();
	        $.each(response, function(index, option) {
	        	$("#entorn").append('<option value="'+ option.id +'">'+ option.entorn +'</option>')
	        	$("#entorn").change();
	        });
	     }
		});
	});
	$("#entorn").on("change", function (e) {
		$.ajax({
	    url: "/search_filter_localitat",
	    method: "POST",
	    data: { tipo: $(this).val() },
	    success: function (response) {
	    if (response) 
	        $("#durada option:not(:disabled)").remove();
	        $.each(response, function(index, option) {
	        	$("#durada").append('<option value="'+ option.id +'">'+ option.durada +'</option>')    
	        	$("#durada").change();
	        });
	     }
	   });
	});
	$("#durada").on("change", function (e) {
		$.ajax({
	    url: "/search_filter_localitat",
	    method: "POST",
	    data: { tipo: $(this).val() },
	    success: function (response) {
	    if (response) 
	        $("#puntuacio option:not(:disabled)").remove();
	        $.each(response, function(index, option) {
	        	$("#puntuacio").append('<option value="'+ option.id +'">'+ option.puntuacio +'</option>')    
	        	$("#puntuacio").change();
	        });
	     }
	   });
	});	
});
