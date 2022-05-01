/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.songs_gui;

import java.sql.Date;

/**
 *
 * @author alienware
 */
public class Artist {
    private int id;
    private String name;
    private byte[] picture;
    private String s_url;
    private String s_id;
    private Date birthdate;
    public Artist(){
        
    }
    public Artist(int i, String n, byte[] p, String su, String si){
        this.id = i; this.name = n; this.picture = p; this.s_url = su; this.s_id = si;
    }
    public int getId(){
        return id;
    }
    public void setId(int i){
        this.id = i;
    }
    public String getName(){
        return name;
    }
    public void setName(String t){
        this.name = t;
    }
    public byte[] getPicture(){
        return picture;
    }
    public void setPicture(byte[] p){
        this.picture = p;
    }
    public String getS_url(){
        return s_url;
    }
    public void setS_url(String u){
        this.s_url = u;
    }
    public String getS_id(){
        return s_id;
    }
    public void setS_id(String i){
        this.s_id = i;
    }
    public Date getBirthdate(){
        return birthdate;
    }
    public void setBirthdate(Date d){
        this.birthdate = d;
    }
}
