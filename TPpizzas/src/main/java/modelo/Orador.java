/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
  package modelo;

import java.sql.Date;

public class Orador {
    private int idOrador;
    private String nombre;
    private String direccion;
    private int puntaje;
    private Date fechaAlta;

    @Override
    public String toString() {
        return "Orador{" + "idOrador=" + idOrador + ", nombre=" + nombre + ", direccion=" + direccion + ", puntaje=" + puntaje + ", fechaAlta=" + fechaAlta + '}';
    }
    

    // Constructor
    public Orador() {
    }

    // Getters y setters
    // ...

    // Resto de métodos y atributos
    // ...

    public int getIdOrador() {
        return idOrador;
    }

    public void setIdOrador(int idOrador) {
        this.idOrador = idOrador;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public int getPuntaje() {
        return puntaje;
    }

    public void setPuntaje(int puntaje) {
        this.puntaje = puntaje;
    }

    public Date getFechaAlta() {
        return fechaAlta;
    }

    public void setFechaAlta(Date fechaAlta) {
        this.fechaAlta = fechaAlta;
    }
}
          
            