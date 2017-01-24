package org.empleodigital.struts.TheStrokes.gestor;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import org.empleodigital.struts.TheStrokes.DDBB.MysqlConnect;
import org.empleodigital.struts.TheStrokes.jpa.Cliente;


public class GestorUsuario {
 protected static MysqlConnect c=MysqlConnect.getDbCon();
 private static final EntityManagerFactory ENTITY_MANAGER_FACTORY = Persistence
         .createEntityManagerFactory("Mercadona");
 

 public static void create(String user, String last, String mail, String pass){
     // Create an EntityManager
     EntityManager manager = ENTITY_MANAGER_FACTORY.createEntityManager();
     EntityTransaction transaction = null;

     try {
         // Get a transaction
         transaction = manager.getTransaction();
         // Begin the transaction
         transaction.begin();

         // Create a new Student object
         Cliente stu = new Cliente();
         stu.setName(user);
         stu.setMail(mail);
         stu.setLastName(last);
         stu.setPass(pass);
         
         // Save the student object
         manager.persist(stu);

         // Commit the transaction
         transaction.commit();
     } catch (Exception ex) {
         // If there are any exceptions, roll back the changes
         if (transaction != null) {
             transaction.rollback();
         }
         // Print the Exception
         ex.printStackTrace();
     } finally {
         // Close the EntityManager
         manager.close();
     }
 }


public ResultSet TestUsuario(String user, String pass){
	ResultSet rs=null;
	String query="select * from clientes where mail='"+ user +"' and pass='"+pass+"'";
	try {
		rs=c.query(query);
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return rs;
}

public int InsertUser(String user, String last, String mail, String pass){
	int res=0;
	String queryInsert= "insert into clientes values (null,'"+user+"','"+last+"','"+pass+"','"+mail+"',current_date,1)";
	try {
		res=c.insert(queryInsert);
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return res;
}

}
