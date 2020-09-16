package baby.model;

public class BabyProductsVO {

	
	private int model_num;
	private String category;
	private String model_id;
	private String type;
	private int product_baby_age;
	private String ingredient;
	
	
	public BabyProductsVO(int model_num, String category, String model_id, String type, int product_baby_age,
			String ingredient) {
		
		this.model_num = model_num;
		this.category = category;
		this.model_id = model_id;
		this.type = type;
		this.product_baby_age = product_baby_age;
		this.ingredient = ingredient;
	}
	
	
	public int getModel_num() {
		return model_num;
	}
	public void setModel_num(int model_num) {
		this.model_num = model_num;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
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
	
	
	
	
	
}
