/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.songs_gui;

/**
 *
 * @author alienware
 */
public class Market {
    private int id;
    private String name;
    public Market(){
    
    }
    public Market(String n){
        this.name = n;
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
}
