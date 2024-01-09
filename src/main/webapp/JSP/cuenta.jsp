<!DOCTYPE html>
<html lang="es">

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:directive.page contentType="text/html" pageEncoding="UTF-8"/>
<c:set var="usuario" value="${sessionScope.usuario}"/>
<head>
    <jsp:directive.include file="/INC/metas.inc"/>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet" />
  <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet" />
  <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/7.1.0/mdb.min.css" rel="stylesheet" />
  <link rel="stylesheet"  href="${css}">
  <link rel="icon" href="${icono}">
  <script src="${contexto}/JS/Busqueda.js" defer></script>
  <script src="${contexto}/JS/Carrito.js" defer></script>
  <script src="${contexto}/JS/EditarPerfil.js" defer></script>
  <title>InnovaTech</title>
</head>

<body class="seccion-central">

<jsp:directive.include file="/INC/navbar.jsp"/>
  <section >
    <div class="container my-5 ">
      <div class="row d-flex justify-content-center align-items-center h-100  ">
        <div class=" col-xl-9 ">
          <h1 class="text-white text-center mb-4">Editar Informac&oacute;n</h1>
            <form action="${contexto}/EditarPerfil" method="post" enctype="multipart/form-data">
                <div class="card form-container " style="border-radius: 15px;">
                    <div class="card-body">
                    <h5 class="card-title text-center">Datos Personales</h5>
                    <div class="row align-items-center pt-4 pb-3">
                        <div class="col-md-3 ps-5">

                        <h6 class="mb-0">Nombre</h6>

                        </div>
                        <div class="col-md-9 pe-5">

                        <input type="text" class="form-control form-control-lg input-box" name="nombre" value="${usuario.nombre}" />

                        </div>
                    </div>
                    <div class="row align-items-center pt-4 pb-3">
                        <div class="col-md-3 ps-5">

                        <h6 class="mb-0">Apellidos</h6>

                        </div>
                        <div class="col-md-9 pe-5">

                        <input type="text" class="form-control form-control-lg input-box" name="apellidos" value="${usuario.apellidos}" />

                        </div>
                    </div>


                    <div class="row align-items-center py-3">
                        <div class="col-md-3 ps-5">

                        <h6 class="mb-0">Email </h6>

                        </div>
                        <div class="col-md-9 pe-5">

                        <input type="email" disabled class="form-control form-control-lg input-box" name="email" value="${usuario.email}" />

                        </div>
                    </div>

                    <div class="row align-items-center pt-4 pb-3">
                        <div class="col-md-3 ps-5">

                        <h6 class="mb-0">NIF</h6>

                        </div>
                        <div class="col-md-9 pe-5">

                        <input type="text" disabled class="form-control form-control-lg input-box" name="nif" value="${usuario.NIF}" />

                        </div>

                    </div>

                    <div class="row align-items-center pt-4 pb-3">
                        <div class="col-md-3 ps-5">

                        <h6 class="mb-0">Tel&eacute;fono</h6>

                        </div>
                        <div class="col-md-9 pe-5">

                        <input type="number" maxlength="9" class="form-control form-control-lg input-box" name="telefono" value="${usuario.telefono}" />

                        </div>
                    </div>

                    <hr class="mx-n3">
                    <h5 class="card-title text-center">Datos de Env&iacute;o</h5>
                    <div class="row align-items-center pt-4 pb-3">
                        <div class="col-md-3 ps-5">

                        <h6 class="mb-0">Direcci&oacute;n</h6>

                        </div>
                        <div class="col-md-9 pe-5">

                        <input type="text" class="form-control form-control-lg input-box" name="direccion" value="${usuario.direccion}" />

                        </div>
                    </div>

                    <div class="row align-items-center pt-4 pb-3">
                        <div class="col-md-3 ps-5">

                        <h6 class="mb-0">C&oacute;digo Postal</h6>

                        </div>
                        <div class="col-md-9 pe-5">

                        <input type="number" maxlength="6" class="form-control form-control-lg input-box" name="direccion" value="${usuario.codigoPostal}" />

                        </div>
                    </div>
                    <div class="row align-items-center pt-4 pb-3">
                        <div class="col-md-2 ps-5">

                        <h6 class="mb-0">Localidad</h6>

                        </div>
                        <div class="col-md-4 pe-5">

                        <input type="text" class="form-control form-control-lg input-box" name="localidad" value="${usuario.localidad}" />

                        </div>
                        <div class="col-md-2 ps-5">

                        <h6 class="mb-0">Provincia</h6>

                        </div>
                        <div class="col-md-4 pe-5">

                        <input type="text" class="form-control form-control-lg input-box" name="provincia" value="${usuario.provincia}" />

                        </div>
                    </div>
                    <hr class="mx-n3">
                    <h5 class="card-title text-center">Datos de Acceso</h5>
                    <div class="d-flex justify-content-center">
                        <button type="button" id="btn-cambiar" class="btn btn-primary btn-lg mx-1 ">
                            Cambiar Contraseña
                        </button>
                    </div>
                    <div class="contraseña d-none" id="contrasena">
                        <div class="row align-items-center py-3">
                            <div class="col-md-3 ps-5">

                            <h6 class="mb-0">Contraseña Actual</h6>

                            </div>
                            <div class="col-md-9 pe-5">

                            <input type="password" id="contrActual" class="form-control input-box" name="passwordActual" rows="3"></input>

                            </div>
                        </div>
                        <div class="row align-items-center py-3 ">
                            <div class="col-md-3 ps-5">

                            <h6 class="mb-0">Contraseña</h6>

                            </div>
                            <div class="col-md-9 pe-5">

                            <input type="password" id="contrNueva" class="form-control input-box" name="password" rows="3"></input>

                            </div>
                        </div>
                        <div class="row align-items-center py-3">
                            <div class="col-md-3 ps-5">

                            <h6 class="mb-0">Repite tu Contraseña</h6>

                            </div>
                            <div class="col-md-9 pe-5">

                            <input type="password" name="password2" id="repContr" class="form-control input-box" rows="3"></input>

                            </div>
                        </div>
                        <div class="d-flex justify-content-center" id="botonesContr">
                            <button type="button" id="btn-aceptar" class="btn btn-primary btn-lg mx-1 ">
                                Aceptar
                            </button>
                            <button type="button" id="btn-ocultar" class="btn btn-primary btn-lg mx-1 ">
                                Cancelar
                            </button>
                        </div>
                        <p class="text-center text-danger" id="error"></p>
                    </div>

                    <hr class="mx-n3">
                    <h5 class="card-title text-center">Imagen de Perfil</h5>
                    <div class="row align-items-center py-3">
                        <div class="col-md-3 ps-5">

                        <h6 class="mb-0">Cargar Avatar</h6>

                        </div>
                        <div class="col-md-9 pe-5">

                        <input class="form-control form-control-lg input-box" type="file" name="avatar" id="formFileLg"  />
                        <div class="small text-muted mt-2">Sube una foto de ti o de lo que tu quieras.</div>

                        </div>
                    </div>

                    <hr class="mx-n3">
                    <c:if test="${error != null}">  
                        <p class="text-center text-danger">${error}</p>
                    </c:if>

                    <div class="px-5 py-4 justify-content-center align-items-center d-flex ">
                        <button type="submit" name="button" value="aceptar" class="btn btn-primary btn-lg mx-1">Aceptar</button>
                        <button type="submit" name="button" value="cancelar" class="btn btn-primary btn-lg">Cancelar</button>
                        <button type="button" class="btn btn-danger btn-lg mx-1" data-mdb-modal-init
                        data-mdb-target="#alertaBorrarModal">Borrar Cuenta</button>
                        <div class="modal top fade" id="alertaBorrarModal" tabindex="-1" aria-labelledby="alertaBorrarModalLabel"
                        aria-hidden="true" data-mdb-backdrop="true" data-mdb-keyboard="true">
                        <div class="modal-dialog   modal-dialog-centered">
                            <div class="modal-content" style="background: #d0daffd8; color:black;">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="alertaBorrarModalLabel">Borrar Cuenta</h5>
                                    <button type="button" class="btn-close" data-mdb-dismiss="modal"
                                        aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <div class="mb-3">
                                        <p class="text-center">¿Estas seguro de que quieres borrar tu cuenta?</p>
                                        <p class="text-center text-danger">Esta acci&oacute;n no se puede deshacer.</p>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-mdb-dismiss="modal">
                                        Cancelar
                                    </button>
                                    <button type="submit" name="button" value="borrarCuenta" class="btn btn-dark">Aceptar</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    </div>
                    </div>
                </div>
            </form>
        </div>
      </div>
    </div>
  </section>
  <jsp:directive.include file="/INC/footer.jsp"/>

  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/7.1.0/mdb.umd.min.js"></script>
</body>

</html>