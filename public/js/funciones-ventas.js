$(document).ready(function(){
    /*Formulario Nuevo Usuario*/
	$("button.new_venta").click(function(event) 
	{
		$("#contenido-usuario").load("ventas/form_add_venta.php");
        event.preventDefault();
	});
	/*Agregar venta a BD*/
	$("#add_venta").click(function(event){	
		
		var nombre = $("#nombres").val();
		var apellidos = $("#apellidos").val();
		var id_sucursal = $("#id_sucursal option:selected").val();
		var fecha_v = $("#fecha_v").val();
		var descuento = $("#descuento").val()
		$("#contenido-usuario").load("ventas/save_venta.php?nombres="+nombre+"&apellidos="+apellidos+"&id_sucursal="+id_sucursal+"&fecha_v="+fecha_v+"&descuento="+descuento);
		event.preventDefault();
		
	});	
})