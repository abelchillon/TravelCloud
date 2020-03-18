<!DOCTYPE html>
<html lang="ca">

    <head>
        <meta charset="UTF-8">
        <title>Registro - TravelCloud</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--Fontawesome para iconos-->
        <script src="https://kit.fontawesome.com/a076d05399.js"></script>
        <!--Bootstrap i jQuery-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <!--Full estils propi-->
        <link rel="stylesheet" href="../../css/style.css">
        <link rel="stylesheet" href="../../css/userRegister.css">
        <!--Icono ico-->
        <link rel="shortcut icon" href="../../img/favicon.ico">
    </head>
    
    <body>
        <!-- Navegació/Header-->
        <?php include '../headerLogin.html'; ?>
        
        <!-- FORMULARIO REGISTRO -->
        <section>
            <div class="callout-inner">
                <h3>Registrate en TravelCloud</h3>
            </div>
            <div class="container">
                <table class="table table-striped">
                    <tbody>
                        <tr>
                            <td colspan="1">
                            <form class="well form-horizontal">
                                <fieldset>
                                    <div class="td-head">
                                        <p>Datos de acceso</p>
                                    </div>
                                    <div class="form-group">
                                            <label class="col-md-4 control-label">Correo electrónico</label>
                                            <div class="col-md-8 inputGroupContainer">
                                                <div class="input-group">
                                                    <span class="input-group-addon">
                                                        <i class="glyphicon glyphicon-envelope"></i>
                                                    </span>
                                                    <input id="email" name="email" placeholder="correo electronico" class="form-control" required="true" value="" type="email">
                                                </div>
                                            </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-4 control-label">Contraseña</label>
                                        <div class="col-md-8 inputGroupContainer">
                                            <div class="input-group">
                                                <span class="input-group-addon">
                                                    <i class="glyphicon glyphicon-eye-open"></i>
                                                </span>
                                                <input id="pasword" name="pasword" class="form-control" value="" type="password" placeholder="contraseña (8 caracters mínimo)" minlength="8" required>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="td-head">
                                            <p>Datos personales</p>
                                        </div>
                                    <div class="form-group">
                                        <label class="col-md-4 control-label">Nombre</label>
                                        <div class="col-md-8 inputGroupContainer">
                                            <div class="input-group">
                                                <span class="input-group-addon">
                                                    <i class="glyphicon glyphicon-user"></i>
                                                </span>
                                                <input id="nom" name="nom" placeholder="Nombre" class="form-control" required="true" value="" type="text">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-4 control-label">Apellidos</label>
                                        <div class="col-md-8 inputGroupContainer">
                                            <div class="input-group">
                                                <span class="input-group-addon">
                                                    <i class="glyphicon glyphicon-user"></i>
                                                </span>
                                                <input id="cognom" name="cognom" placeholder="Apellido" class="form-control" required="true" value="" type="text">
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div class="form-group">
                                        <label class="col-md-4 control-label">Comunidad Autónoma</label>
                                        <div class="col-md-8 inputGroupContainer">
                                            <div class="input-group">
                                                <span class="input-group-addon" style="max-width: 100%;">
                                                    <i class="glyphicon glyphicon-map-marker"></i>
                                                </span>
                                                <select class="selectpicker form-control" name="provincia">
                                                    <option value="NoValid">Selecciona una Comunidad Autónoma ...</option> 
                                                    <option value="Andalucia">Andalucia</option> 
                                                    <option value="Galicia">Galicia</option> 
                                                    <option value="Cataluña">Cataluña</option>
                                                    <option value="Asturias">Asturias</option> 
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-check form-check-inline politica">
                                        <input id="politica" clas="form-check-input" type="checkbox">
                                        <label class="form-check-label" for="politica">Acepto política de privacidad</label>
                                    </div>

                                    <div class="form-group" id="botons">
                                        <input type="submit" class="btn btn-secondary" value="Darse de alta">
                                    </div>
                                </fieldset>
                            </form>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </section>
        
        <!--PIE DE PAGINA-->
        <?php require '../footer.html'; ?>
        
    </body>
</html>