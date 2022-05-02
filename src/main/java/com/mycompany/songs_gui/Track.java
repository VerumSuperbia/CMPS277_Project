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
public class Track {
    private int id;
    private String title;
    private int duration;
    private String isrc;
    private String s_url;
    private String s_id;
    private int explicit;
    private String p_url;
    private int a_id;
    public Track(){
        
    }
    public Track(String t,int d, String is, String su, String si, int e, String p, int a){
        this.title = t; this.duration = d; this.isrc = is; this.s_url = su; this.s_id = si; this.explicit = e; this.p_url = p; this.a_id = a;
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
    public int getDuration(){
        return duration;
    }
    public void setDuration(int d){
        this.duration = d;
    }
    public String getIsrc(){
        return isrc;
    }
    public void setIsrc(String i){
        this.isrc = i;
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
    public int getExplicit(){
        return explicit;
    }
    public void setExplicit(int e){
        this.explicit = e;
    }
    public String getP_url(){
        return p_url;
    }
    public void setP_url(String u){
        this.p_url = u;
    }
    public int getA_id(){
        return a_id;
    }
    public void setA_id(int i){
        this.a_id = i;
    }
    
}
