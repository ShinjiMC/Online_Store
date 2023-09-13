package com.mycompany.tienda_online;

import cl.tienda.connection.Conexion;

/**
 *
 * @author Braulio
 */
public class ConexionMySQL {
    public static void main(String[] args){
        Conexion conexion = new Conexion();
        conexion.getConnection();
    }
}
