package org.empleodigital.struts.TheStrokes.gestor;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import org.empleodigital.struts.TheStrokes.DDBB.MysqlConnect;

public class GestorProductos {
	ArrayList<Products> prod = new ArrayList<Products>();

	MysqlConnect c = MysqlConnect.getDbCon();

	public ArrayList<Products> listProd() {
		ResultSet rs = null;
		String query = "Select * from productos";
		try {
			rs = c.query(query);
			while (rs.next()) {
				Products p= new Products(rs.getString(1),rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
				prod.add(p);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return prod;
	}

}
