$(document).ready(function(){
    /*Formulario Nuevo Usuario*/
	$("button.new_venta").click(function(event) 
	{
		$("#contenido-usuario").load("ventas/menu_venta.php");
        event.preventDefault();
	});
	//Cargar ventas vista de cliente nuevo
	$("a.new-client").click(function(event){	
		$("#form_venta").load("ventas/form_new_venta.php");
        event.preventDefault();
		
	});
	
	//Cargar ventas vista de cliente nuevo
	$("a.client").click(function(event){	
		$("#form_venta").load("ventas/form_client_venta.php");
        event.preventDefault();
		
	});

	/*Agregar venta a BD*/
	$("#add_venta").click(function(event){	
		var dui = $("#dui").val();
		var nombre = $("#nombres").val();
		var apellidos = $("#apellidos").val();
		var id_sucursal = $("#id_sucursal option:selected").val();
		var fecha_v = $("#fecha_v").val();
		var descuento = $("#descuento").val()
		if(dui == "" || dui.length < 9){
			alertify.alert("Registro venta","El DUI debe tener 9 números...");
		}else if(nombre == ""){
			alertify.alert("Registro venta","Nombre esta vacio");
		}
		else if(apellidos == ""){
			alertify.alert("Registro venta","Apellido esta vacio");
		}
		else if(id_sucursal == ""){
			alertify.alert("Registro venta","Sucursal no selecionado");
		}else{
			$("#contenido-usuario").load("ventas/save_venta.php?nombres="+nombre+"&apellidos="+apellidos+"&id_sucursal="+id_sucursal+"&fecha_v="+fecha_v+"&descuento="+descuento+"&dui="+dui+"&option=1");
			event.preventDefault();
		}
	});
	$("#cliente_venta").click(function(event){
		var id_sucursal = $("#id_sucursal option:selected").val();
		var id_client = $("#id_client option:selected").val();
		var descuento = $("#descuento").val();
		if(id_client == ""){
			alertify.alert("Registro venta","Cliente no selecionado");
		}else if(id_sucursal == ""){
			alertify.alert("Registro venta","Sucursal no selecionado");
		}else{
			$("#contenido-usuario").load("ventas/save_venta.php?id_sucursal="+id_sucursal+"&descuento="+descuento+"&dui="+id_client+"&option=2");
			event.preventDefault();
		}
	});	
})