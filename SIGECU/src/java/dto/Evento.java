/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dto;
/**
 *
 * @author rolando
 */
public class Evento {
    private String nombre;
    private String fecha; // revisar fecha no es string 
    private String descripcion;
    private String destinatarios; // revisar destinatarios
    private String programa;  // definir prgrama
    private Instructor instructor;
    private String Lugar;
    private String Ciudad;
    private String pais;
    private int capacidad;
    private double precio;
    private double promocion;
    private short tipo;

    public void setTipo(short tipo) {
        this.tipo = tipo;
    }

    public short getTipo() {
        return tipo;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public void setDestinatarios(String destinatarios) {
        this.destinatarios = destinatarios;
    }

    public void setPrograma(String programa) {
        this.programa = programa;
    }

    public void setInstructor(Instructor instructor) {
        this.instructor = instructor;
    }

    public void setLugar(String Lugar) {
        this.Lugar = Lugar;
    }

    public void setCiudad(String Ciudad) {
        this.Ciudad = Ciudad;
    }

    public void setPais(String pais) {
        this.pais = pais;
    }

    public void setCapacidad(int capacidad) {
        this.capacidad = capacidad;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    public void setPromocion(double promocion) {
        this.promocion = promocion;
    }

    public String getNombre() {
        return nombre;
    }

    public String getFecha() {
        return fecha;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public String getDestinatarios() {
        return destinatarios;
    }

    public String getPrograma() {
        return programa;
    }

    public Instructor getInstructor() {
        return instructor;
    }

    public String getLugar() {
        return Lugar;
    }

    public String getCiudad() {
        return Ciudad;
    }

    public String getPais() {
        return pais;
    }

    public int getCapacidad() {
        return capacidad;
    }

    public double getPrecio() {
        return precio;
    }

    public double getPromocion() {
        return promocion;
    }
}
