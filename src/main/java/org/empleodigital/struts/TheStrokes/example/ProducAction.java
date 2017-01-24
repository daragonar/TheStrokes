package org.empleodigital.struts.TheStrokes.example;

import java.util.ArrayList;

import org.empleodigital.struts.TheStrokes.gestor.GestorProductos;
import org.empleodigital.struts.TheStrokes.gestor.Products;

import com.opensymphony.xwork2.Action;

public class ProducAction implements Action{
	ArrayList<Products> product=new ArrayList<Products>();

	public String execute() throws Exception {
		// TODO Auto-generated method stub
		GestorProductos gp= new GestorProductos();
		product=gp.listProd();
		return SUCCESS;
	}

	public ArrayList<Products> getProduct() {
		return product;
	}

	public void setProduct(ArrayList<Products> product) {
		this.product = product;
	}

}

