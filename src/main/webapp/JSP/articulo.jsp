<!DOCTYPE html>
<html lang="es">

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:directive.page contentType="text/html" pageEncoding="UTF-8"/>
<c:set var="producto" value="${sessionScope.producto}"/>
<head>
    <jsp:directive.include file="/INC/metas.inc"/>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet" />
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet" />
    <!-- MDB -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/7.1.0/mdb.min.css" rel="stylesheet" />
    <link rel="stylesheet"  href="${css}">
    <link rel="icon" href="${icono}">
    <title>InnovaTech</title>
</head>

<body class="seccion-central">
    <!-- Navbar -->

<jsp:directive.include file="/INC/navbar.jsp"/>
    <section class="vh-100 d-flex align-items-center justify-content-center w-100">
        <div class="container h-75 bg-light p-5 w-100 rounded-5 text-bg-light ">
            <form action="${contexto}/CarritoController" method="post" class="row d-flex h-100 justify-content-center w-100 align-items-center g-2">
                <div class="col-6  p-0 m-0">
                    <div class="container-fluid">
                        <img src="IMG/productos/${producto.imagen}.jpg" class="img-fluid w-75 rounded-5 shadow" alt="">
                    </div>

                </div>
                <div class="col-6">
                    <div class="container-fluid">
                        <h5>${producto.nombre}</h5>
                        <a href="#" class="text-secondary"><i class="fa-solid fa-tag"></i>${producto.categoria.nombre}</a>
                        <div class="stars-outer my-2">
                            <div class="stars-inner" style="color:#FFA000">
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                            </div>
                        </div>
                        <h5 class="my-2">${producto.precio}€</h5>
                        <p class="text-secondary my-2">${producto.descripcion}</p>
                        <div class="input-group my-3">
                            <div data-mdb-input-init class="form-outline bg-white rounded">
                                <input type="number" name="unidades" min="1" value="1"
                                    id="cantidadProducto-${producto.id}" class=" form-control" />
                                <label class="form-label " for="form3Example3">Unidades</label>
                            </div>
                            <button type="button" name="anadir" class="btn btn-dark shadow-none  h-25 anadirCarritoBtn"
                                data-idproducto="${producto.id}">Añadir al carrito</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </section>
    <jsp:directive.include file="/INC/footer.jsp"/>
    <script type="text/javascript"
        src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/7.1.0/mdb.umd.min.js"></script>
</body>

</html>