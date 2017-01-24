package org.empleodigital.struts.TheStrokes.jpa;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "clientes")

public class Cliente implements Serializable {
		@Id
	    @Column(name = "idClie", unique = true)
	    private int id;

	    @Column(name = "name", nullable = false)
	    private String name;

	    @Column(name = "lastName", nullable = true)
	    private String lastName;

	    @Column(name = "pass", nullable = true)
	    private String pass;

	    @Column(name = "mail", nullable = true)
	    private String mail;

	    @Column(name = "logdate", nullable = true)
	    private String logdate;

	    @Column(name = "act", nullable = true)
	    private int act;

		public int getId() {
			return id;
		}

		public void setId(int id) {
			this.id = id;
		}

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

		public String getLastName() {
			return lastName;
		}

		public void setLastName(String lastName) {
			this.lastName = lastName;
		}

		public String getPass() {
			return pass;
		}

		public void setPass(String pass) {
			this.pass = pass;
		}

		public String getMail() {
			return mail;
		}

		public void setMail(String mail) {
			this.mail = mail;
		}

		public String getLogdate() {
			return logdate;
		}

		public void setLogdate(String logdate) {
			this.logdate = logdate;
		}

		public int getAct() {
			return act;
		}

		public void setAct(int act) {
			this.act = act;
		}

	    
}
