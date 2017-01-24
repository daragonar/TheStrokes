package org.empleodigital.struts.TheStrokes.example;

import java.sql.ResultSet;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.empleodigital.struts.TheStrokes.gestor.GestorUsuario;
import org.empleodigital.struts.TheStrokes.gestor.User;
import org.apache.commons.codec.digest.*;

import com.opensymphony.xwork2.Action;

public class LoginAction implements Action {
	private User user;

	public String execute() throws Exception {
		// TODO Auto-generated method stub
		ResultSet rs = null;
		String passnew = DigestUtils.md5Hex(this.user.getPass());
		GestorUsuario gu = new GestorUsuario();
		System.out.println("esto es asi :" + this.getUser().getUser()); 
		rs = gu.TestUsuario(this.user.getUser(), passnew);
		if (rs.next()) {
			HttpSession session = ServletActionContext.getRequest().getSession();
			session.setAttribute("idUser", rs.getString("idClie"));
			session.setAttribute("user", rs.getString("name"));
			return SUCCESS;
		} else {
			return ERROR;
		}
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	

}
