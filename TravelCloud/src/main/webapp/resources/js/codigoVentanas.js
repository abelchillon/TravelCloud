document.getElementById("").addEventListener('click', confirmacio);

public void confirmacio() {
    int confirmar = JOptionPane.showConfirmDialog(null,"¿Seguro que desea cancelar?","Aviso Importante",JOptionPane.YES_NO_OPTION, JOptionPane.QUESTION_MESSAGE);
    if(confirmar = 0) {
        //al apretar si
    } else if(confirmar = 1) {
        //al apretar no
    } else if(confirmar = -1) {
        //al apretar x
    }
}

//
//userPage 

//botonesViajesUserPage
@RequestMapping(params = "viewTravel", method = RequestMethod.POST)
public String cancelUpdate() {
    document.getElementById("borrarTravel").addEventListener('click', borrarTravel);
    public void borrarTravel() {
        int confirmar = JOptionPane.showConfirmDialog(null,"¿Seguro que quieres borrar de forma definitiva el viaje?","Alerta!",JOptionPane.YES_NO_OPTION, JOptionPane.QUESTION_MESSAGE);
        if(confirmar ==JOptionPane.YES_OPTION) {
            viatgeService.eliminarViatge(viatge);
            
        }
        return "redirect:/travelView";
}
    
}
document.getElementById("borrarTravel").addEventListener('click', borrarTravel);
public void borrarTravel() {
    int confirmar = JOptionPane.showConfirmDialog(null,"¿Seguro que quieres borrar de forma definitiva el viaje?","Alerta!",JOptionPane.YES_NO_OPTION, JOptionPane.QUESTION_MESSAGE);
    if(confirmar ==JOptionPane.YES_OPTION) {
        viatgeService.eliminarViatge(viatge);
    }
}

document.getElementById("borrarTravelAdmin").addEventListener('click', borrarTravelAdmin);
public void borrarTravelAdmin() {
    int confirmar = JOptionPane.showConfirmDialog(null,"¿Seguro que quieres borrar de forma definitiva el viaje de este usuario?","Alerta!",JOptionPane.YES_NO_OPTION, JOptionPane.QUESTION_MESSAGE);
    if(confirmar ==JOptionPane.YES_OPTION) {
        viatgeService.eliminarViatge(viatge);
    }
}

//
//travelView

//botonesTravelView
document.getElementById("deleteTravel").addEventListener('click', borrarTravel);

document.getElementById("deleteValoracioAdmin").addEventListener('click', borrarValoracio);
public void borrarValoracio() {
    int confirmar = JOptionPane.showConfirmDialog(null,"¿Seguro que quieres borrar la valoración de este usuario?","Alerta!",JOptionPane.YES_NO_OPTION, JOptionPane.QUESTION_MESSAGE);
    if(confirmar ==JOptionPane.YES_OPTION) {
        valoracioService.eliminarValoracio(valoracio);
    }
}

//
//userUpdate

//updateUser
document.getElementById("cancelarCambiosUser").addEventListener('click', cancelarCambios);
public void cancelarCambios() {
    int confirmar = JOptionPane.showConfirmDialog(null,"¿Seguro que quieres cancelar? Los cambios realizados no se guardarán.","Alerta!",JOptionPane.YES_NO_OPTION, JOptionPane.QUESTION_MESSAGE);
    if(confirmar ==JOptionPane.YES_OPTION) {
        respone.sendRedirect("userPage"); //ni idea de si esto se hace asi
    }
}

document.getElementById("eliminarCuenta").addEventListener('click', eliminarCuenta);
public void eliminarCuenta() {
    int confirmar = JOptionPane.showConfirmDialog(null,"¿Seguro que quieres borrar tu cuenta de forma definitiva?","Alerta!",JOptionPane.YES_NO_OPTION, JOptionPane.QUESTION_MESSAGE);
    if(confirmar ==JOptionPane.YES_OPTION) {
        usuariService.eliminarUsuari(usuari);
    }
}


//
//userMessageView

//botonsMissatge
document.getElementByClass("deleteMessage").addEventListener('click', eliminarMissatge);

