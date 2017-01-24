package org.empleodigital.struts.TheStrokes.example;

import org.apache.commons.codec.digest.DigestUtils;
import org.empleodigital.struts.TheStrokes.gestor.GestorUsuario;
import org.empleodigital.struts.TheStrokes.gestor.User;

import com.opensymphony.xwork2.Action;

public class InsertAction implements Action {
	private User user;
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		String passnew = DigestUtils.md5Hex(this.user.getPass());
		GestorUsuario us= new GestorUsuario();
		if(us.InsertUser(this.user.getUser(), this.user.getLast(),this.user.getMail() , passnew)==1)
		{return SUCCESS;}
		else
		{return ERROR;}
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	} 
	
	
}
