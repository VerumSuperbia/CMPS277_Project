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
public class Album {
    private int id;
    private String title;
    private Date release;
    private byte[] picture;
    private String s_url;
    private String s_id;
    private int l_id;
    public Album(){
        
    }
    public Album(String t, Date r, byte[] p, String su, String si, int l){
        this.title = t; this.release = r; this.picture = p; this.s_url = su; this.s_id = si; this.l_id = l;
    }
    public int getId(){
        return id;
    }
    public void setId(int i){
        this.id = i;
    }
    public String getTitle(){
        return title;
    }
    public void setTitle(String t){
        this.title = t;
    }
    public Date getRelease(){
        return release;
    }
    public void setRelease(Date d){
        this.release = d;
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
    public int getL_id(){
        return l_id;
    }
    public void setL_id(int l){
        this.l_id = l;
    }
}
