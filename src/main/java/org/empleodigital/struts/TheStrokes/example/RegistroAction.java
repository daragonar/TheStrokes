package org.empleodigital.struts.TheStrokes.example;

import org.apache.commons.codec.digest.DigestUtils;
import org.empleodigital.struts.TheStrokes.gestor.GestorUsuario;
import org.empleodigital.struts.TheStrokes.gestor.User;
import com.opensymphony.xwork2.Action;

public class RegistroAction implements Action {

	private User user;

	@Override
	public String execute() throws Exception {
		String passNew=DigestUtils.md5Hex(user.getPass());
		GestorUsuario.create(user.getUser(), user.getLast(), user.getMail(),passNew);
		return SUCCESS;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	
}
