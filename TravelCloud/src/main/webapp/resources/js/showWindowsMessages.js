window.onload = inicio;

function inicio() {
	
	//UserUpdate i TravelPush - botones de guardar y cancelar 
	
	//YSM - me acabo de dar cuenta que les he puesto el mismo nombre de ID a los botones de ambas paginas, tanto en userUpdate como travelPush,  
	//nose si tengo que ponerle nombres diferentes o al ser diferentes paginas no pasa nada, supongo que dentro de la funcion habria que ver desde que pagina se ha accedido 
	// para que haga una cosa u otra,igual es mas facil si les pongo nombres diferentes, era por reaprovechar el codigo xD
	
	var cancelUpdate = document.getElementById("cancelUpdate");
	cancelUpdate.addEventListener("click", cancelUpdate);
	var savePage = document.getElementById("savePage");
	savePage.addEventListener("click", savePage);
	
	//UserUpdate
	var deleteUserPage = document.getElementById("deleteUserPage");
	deleteUserPage.addEventListener("click", deleteUserPage);
	
	//UserPage - borrar viaje
	var deleteTravel = document.getElementById("deleteTravel");
	deleteTravel.addEventListener("click", deleteTravel);
	
	//WishList - eliminar viaje de la lista
	var deleteTravelWishList = document. getElementById("deleteTravelWishList");
	deleteTravelWishList.addEventListener("click", deleteTravelWishList);
	
	//SendMessage y UserMessageView - boton cancelar envio mensaje
	var cancelMessage = document.getElementById("cancelMessage");
	cancelMessage.addEventListener("click", cancelMessage);
	
	//UserMessageView - boton eliminar mensaje
	var deleteMessage = document.getElementsById("deleteMessage");
	deleteMessage.addEventListener("click", deleteMessage);
} 


//UserUpdate y TravelPush - eventos botones guardar y cancelar
function cancelUpdate() {
	var confirmar = window.confirm("¿Seguro que quieres cancelar? Los cambios realizados no serán guardados");
	if (confirmar) {
		//YSM - si pulsa ok, redirigir a userPage otra vez
		return true;
	} else {
		//YSM - si pulsa cancel, cerrar la ventana de confirm y ya esta
		return false;
	}
}
function savePage(){
	//YSM - llamar a modificarUsuari
	// y si se ha modificado correctamente
	windows.alert("Datos guardados correctamente")
}


//UserUpdate - evento boton eliminar perfil
function deleteUserPage() {
	
	var confimar = window.confirm("¿Seguro que quieres borrar tu perfil? Toda tu información y los viajes publicados serán eliminados");
	if (confirmar) {
		//YSM - si pulsa ok, eliminar usuario de la web y redirigir a index
		return true;
	} else {
		//YSM - si pulsa cancel, cerrar la ventana de confirm y ya esta
		return false;
	}
	
}

//UserPage - evento boton eliminar viaje
function deleteTravel() {
	var confirmar = window.confirm("¿Seguro que quieres borrar el viaje? No podrás recuperar los datos");
	if (confirmar) {
		//si quiere borrarlo, llamar a eliminarViatge
		return true;
	} else {
		//y si pulsa cancel, pues se cierra ventana i ale
		return false;
	}
	
}

//WishList - evento boton eliminar de la lista
function deleteTravelWishList() {
	var confirmar = window.confirm("¿Seguro que quieres borrar el viaje de tu lista de deseos?");
	if(confirmar) {
		//llamar a eliminarDesitjos
		return true;
	} else {
		return false;
	}
}

//SendMessage y UserMessageView - boton cancelar el envio del mensaje
function cancelMessage() {
	var confirmar = window.confirm("¿Seguro que quieres cancelar? El mensaje no será enviado");
	if(confirmar) {
		//volver a la pagina en la que estaba el usuario
		return true;
	} else {
		return false;
	}
}

//UserMessageView - boton eliminar mensaje
function deleteMessage() {
	var confirmar = window.confirm("¿Seguro que quieres borrar el mensaje?");
	if(confirmar) {
		//llamar a eliminarMissatge, supongo que con "this" para que sepa que nos referimos al elemento que ha hecho saltar el evento
		return true;
	} else {
		return false;
	}
}



