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
  <script src="${contexto}/JS/EditarPerfil.js" defer></script>
  <title>InnovaTech</title>
</head>

<body class="seccion-central">

<jsp:directive.include file="/INC/navbar.jsp"/>
  <section class="min-vh-100  w-100">
    <%-- <div class="container my-5 ">
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
    </div> --%>
        <div class="container mt-3 w-75 vh-100 flex-column">
            <h5 class="text-center text-white">Editar Perfil</h5>
            <form action="${contexto}/EditarPerfil" method="post" class="w-100" enctype="multipart/form-data">
                <div class="accordion shadow" id="accordionExample">
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="headingOne">
                            <button class="accordion-button" type="button" data-bs-toggle="collapse"
                                data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                Secci&oacute;n 1: Informaci&oacute;n Personal
                            </button>
                        </h2>
                        <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne"
                            data-bs-parent="#accordionExample">
                            <div class="accordion-body">
                                <div class="container">
                                    <div class="input-group mb-3">
                                        <span class="input-group-text" id="basic-addon1"><i class="fas fa-user"></i></span>
                                        <div class="form-outline" data-mdb-input-init>
                                            <input type="text" id="form12" class="form-control text-black" name="nombre" value="${usuario.nombre}"/>
                                            <label class="form-label" for="form12">Nombre</label>
                                        </div>
                                    </div>
                                    <div class="input-group mb-3">
                                        <span class="input-group-text" id="basic-addon1"><i class="fas fa-user"></i></span>
                                        <div class="form-outline" data-mdb-input-init>
                                            <input type="text" id="form12" class="form-control text-black" name="nombre" value="${usuario.apellidos}"/>
                                            <label class="form-label" for="form12">Apellidos</label>
                                        </div>
                                    </div>
                                    <div class="input-group mb-3">
                                        <span class="input-group-text" id="basic-addon1"><i
                                                class="fa-solid fa-cake-candles"></i></span>
                                        <div class="form-outline" data-mdb-input-init>
                                            <input type="number" id="form12" class="form-control " name="telefono" value="${usuario.telefono} />
                                            <label class="form-label" for="form12">Telefono</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="headingTwo">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                Secci&oacute;n 2: Detalles de Contacto
                            </button>
                        </h2>
                        <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo"
                            data-bs-parent="#accordionExample">
                            <div class="accordion-body">
                                <div class="container">
                                    <div class="input-group mb-3">
                                        <span class="input-group-text" id="basic-addon1"><i
                                                class="fa-solid fa-envelope"></i></i></span>
                                        <div class="form-outline" data-mdb-input-init>
                                            <input type="email" id="form12" class="form-control " />
                                            <label class="form-label" for="form12">Correo El&eacute;ctronico</label>
                                        </div>
                                    </div>
                                    <div class="input-group mb-3">
                                        <span class="input-group-text" id="basic-addon1"><i class="fas fa-phone"></i></span>
                                        <div class="form-outline" data-mdb-input-init>
                                            <input type="number" id="form12" class="form-control " />
                                            <label class="form-label" for="form12">Tel&eacute;fono</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="headingThree">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                Secci&oacute;n 3: Preferencias
                            </button>
                        </h2>
                        <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree"
                            data-bs-parent="#accordionExample">
                            <div class="accordion-body">
                                <div class="container">
                                    <div class="input-group mb-3">
                                        <span class="input-group-text" id="basic-addon1"><i
                                                class="fa-solid fa-droplet"></i></i></span>
                                        <input type="color" id="form12" class="form-control" />
                                    </div>
                                    <div class="input-group mb-3">
                                        <span class="input-group-text" id="basic-addon1"><i class="fas fa-football"></i></span>
                                        <div class="form-outline" data-mdb-input-init>
                                            <input type="text" id="form12" class="form-control" />
                                            <label class="form-label" for="form12">Hobbie Favorito</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="text-center mt-1">
                    <button type="submit" name="button" value="aceptar" class="btn btn-primary mx-1">Aceptar</button>
                    <button type="submit" name="button" value="cancelar" class="btn btn-danger">Cancelar</button>
                </div>
            </form>
        </div>
  </section>
  <jsp:directive.include file="/INC/footer.jsp"/>

  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/7.1.0/mdb.umd.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
        crossorigin="anonymous"></script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
        integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
        crossorigin="anonymous"></script>
</body>

</html>