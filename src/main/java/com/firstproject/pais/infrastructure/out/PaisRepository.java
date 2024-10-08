package com.firstproject.pais.infrastructure.out;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import com.firstproject.pais.domain.entity.Pais;
import com.firstproject.pais.domain.service.PaisServices;

public class PaisRepository implements PaisServices {
    private Connection connection;

    public PaisRepository() {
        try {
            Properties properties = new Properties();
            properties.load(getClass().getClassLoader().getResourceAsStream("configdb.properties"));
            String url = properties.getProperty("url");
            String user = properties.getProperty("user");
            String password = properties.getProperty("password");
            connection = DriverManager.getConnection(url, user, password);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<Pais> getAllPaises() {
        List<Pais> paises = new ArrayList<>();
        try {
            String query = "SELECT idPais, nombre " +
                           "FROM pais";
            PreparedStatement ps = connection.prepareStatement(query);
            try {
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    Pais pais = new Pais(rs.getInt("idPais"), rs.getString("nombre"));
                    paises.add(pais);
                }
                return paises;
            } catch (SQLException e) {
                e.printStackTrace();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return paises;
    }

    @Override
    public Pais getSpecifiedPais(int idPais) {
        try {
            String query = "SELECT idPais, nombre " +
                           "FROM pais " +
                           "WHERE idPais = ?";
            PreparedStatement ps = connection.prepareStatement(query); 
            ps.setInt(1, idPais);
            try (ResultSet rs = ps.executeQuery()){
                if(rs.next()) {
                    Pais pais = new Pais(rs.getInt("idPais"), 
                    rs.getString("nombre"));
                    return pais;
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
    
}
