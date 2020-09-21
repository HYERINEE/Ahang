package baby.model;

public class modelVO {
	
	private int cream_num;
	private String model_id;
	private String type;
	private int product_baby_age;
	private String ingredient;
	private String brand_id;
	

	public modelVO(int cream_num, String model_id, String type, int product_baby_age, String ingredient,
			String brand_id) {
		this.cream_num = cream_num;
		this.model_id = model_id;
		this.type = type;
		this.product_baby_age = product_baby_age;
		this.ingredient = ingredient;
		this.brand_id = brand_id;
	}
	
	public int getCream_num() {
		return cream_num;
	}
	public void setCream_num(int cream_num) {
		this.cream_num = cream_num;
	}
	public String getModel_id() {
		return model_id;
	}
	public void setModel_id(String model_id) {
		this.model_id = model_id;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getProduct_baby_age() {
		return product_baby_age;
	}
	public void setProduct_baby_age(int product_baby_age) {
		this.product_baby_age = product_baby_age;
	}
	public String getIngredient() {
		return ingredient;
	}
	public void setIngredient(String ingredient) {
		this.ingredient = ingredient;
	}
	public String getBrand_id() {
		return brand_id;
	}
	public void setBrand_id(String brand_id) {
		this.brand_id = brand_id;
	}
	
	
	
	
	
}
