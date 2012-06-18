// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require_tree .

$(document).ready(function() {
	$('div.tipo_paciente').addClass("hidden");
	$('div.tipo_medico').addClass("hidden");
	$('div.tipo_farmacia').addClass("hidden");
	$('div.endereco').addClass("hidden");
	$('#user_tipo').change(function(){
		var tipo = $('#user_tipo :selected').val();

		if (tipo == 1){
			$('div.tipo_paciente').removeClass("hidden");
			$('div.endereco').removeClass("hidden");
			$('div.tipo_paciente').addClass("show");
			$('div.endereco').addClass("show");
			$('div.tipo_medico').addClass("hidden");
			$('div.tipo_farmacia').addClass("hidden");
		}
		else if (tipo == 2){
			$('div.tipo_medico').removeClass("hidden");
			$('div.endereco').removeClass("hidden");
			$('div.tipo_medico').addClass("show");
			$('div.tipo_paciente').addClass("hidden");
			$('div.tipo_farmacia').addClass("hidden");
		}
		else if (tipo == 3){
			$('div.tipo_farmacia').removeClass("hidden");
			$('div.endereco').removeClass("hidden");
			$('div.tipo_farmacia').addClass("show");
			$('div.tipo_medico').addClass("hidden");
			$('div.tipo_paciente').addClass("hidden");
		}
		else{
			$('div.tipo_paciente').addClass("hidden");
			$('div.tipo_medico').addClass("hidden");
			$('div.tipo_farmacia').addClass("hidden");
			$('div.endereco').addClass("hidden");
		}
	});

	$('.add-medicamento').click(function(){
		$('p').
	});
});
