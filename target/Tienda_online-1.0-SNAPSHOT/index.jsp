<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrarse</title>
    </head>
    <body>
        <h1>NUEVO USUARIO</h1>
        <form action="Guardar" method="Post">
            DNI: <input type="tel" name="dni" ><br/>
            Nombre: <input type="text" name="nombre" ><br/>
            Primer Apellido: <input type="text" name="p_apel" ><br/>
            Segundo Apellido: <input type="text" name="s_apel" ><br/>
            Fecha de Nacimiento: <input type="date" name="nac" ><br/>
            Telefono: <input type="text" name="telfd" ><br/>
            Departamento: <input type="text" name="dep" ><br/>
            Ciudad: <input type="text" name="city" ><br/>
            Distrito: <input type="text" name="dist" ><br/>
            Calle: <input type="text" name="calle" ><br/>
            Correo: <input type="email" name="corre" > <br/>
            Contraseña: <input type="text" name="passd" ><br/>
            <input type="submit" name="Guardar" >
        </form>
    </body>
</html>
