/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.groud2.web.DAO;

import com.groud2.web.DAO.context.DBContext;
import com.groud2.web.model.room;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Ao
 */
public class roomDAO {

    PreparedStatement ps = null;
    ResultSet rs = null;
    DBContext dbc = new DBContext();
    Connection connection = null;

    public boolean addNewRoom(String roomID, String roomName, String roomFunction) throws SQLException {
        String mysql = "insert into room(roomId, roomName, roomFunction) values(?, ?, ?);";
        try {
            connection = dbc.getConnection();
            ps = connection.prepareStatement(mysql);
            ps.setString(1, roomID);
            ps.setString(2, roomName);
            ps.setString(3, roomFunction);

            ps.execute();
        } catch (Exception e) {
            System.out.println("Add new room to db error: " + e.getMessage());
            return false;
        }
        return true;
    }

    public ArrayList<room> getListRoom(String search) {
        ArrayList<room> listRoom = new ArrayList<>();
       String mysql = "select * from room";
        try {
            connection = dbc.getConnection();
            ps = connection.prepareStatement(mysql);
            rs = ps.executeQuery();
            while(rs.next()){
                String id = rs.getString(1);
                String name = rs.getString(2);
                String function = rs.getString(3);
                
                room r = new room(id, name, function);
                if(name.toLowerCase().contains(search.toLowerCase())){
                    listRoom.add(r);
                }
            }
        } catch (Exception e) {
            System.out.println("Get list room from db error: " + e.getMessage());
            return new ArrayList<>();
        }
        
        return listRoom;
    }

}