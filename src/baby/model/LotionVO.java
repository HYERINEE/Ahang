package baby.model;

public class LotionVO {
	
	private int lotion_num;
	private String model_id;
	private String type;
	private int product_baby_age;
	private String ingredient;
	private String brand_id;
	

	
	public LotionVO(int lotion_num, String model_id, String type, int product_baby_age, String ingredient,
			String brand_id) {
		super();
		this.lotion_num = lotion_num;
		this.model_id = model_id;
		this.type = type;
		this.product_baby_age = product_baby_age;
		this.ingredient = ingredient;
		this.brand_id = brand_id;
	}
	public int getLotion_num() {
		return lotion_num;
	}
	public void setLotion_num(int lotion_num) {
		this.lotion_num = lotion_num;
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
