package org.empleodigital.struts.TheStrokes.gestor;

public class Products {

	protected String id;
	protected String description;
	protected String name;
	protected String img;
	protected String price;
	
	

	public Products(String id, String description, String name, String img, String price) {
		super();
		this.id = id;
		this.description = description;
		this.name = name;
		this.img = img;
		this.price = price;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

}
