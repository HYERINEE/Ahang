package baby.model;

public class Total_modelVO {

	private int num;
	private String category;
	private String brand_id;
	private String model_id;
	private int allergy;
	private String allergy_ingre;
	private int atopy;
	private int sensitivity;
	private String ingredient;
	private double ingre_avg;
	private String filename;
	private String filecontent;
	private int rank;
	
	
	
	
	public Total_modelVO(int num, String category, String brand_id, String model_id, int allergy, String allergy_ingre,
			int atopy, int sensitivity, String ingredient, double ingre_avg, String filename, String filecontent,
			int rank) {
	
		this.num = num;
		this.category = category;
		this.brand_id = brand_id;
		this.model_id = model_id;
		this.allergy = allergy;
		this.allergy_ingre = allergy_ingre;
		this.atopy = atopy;
		this.sensitivity = sensitivity;
		this.ingredient = ingredient;
		this.ingre_avg = ingre_avg;
		this.filename = filename;
		this.filecontent = filecontent;
		this.rank = rank;
	}
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getBrand_id() {
		return brand_id;
	}
	public void setBrand_id(String brand_id) {
		this.brand_id = brand_id;
	}
	public String getModel_id() {
		return model_id;
	}
	public void setModel_id(String model_id) {
		this.model_id = model_id;
	}
	public int getAllergy() {
		return allergy;
	}
	public void setAllergy(int allergy) {
		this.allergy = allergy;
	}
	public String getAllergy_ingre() {
		return allergy_ingre;
	}
	public void setAllergy_ingre(String allergy_ingre) {
		this.allergy_ingre = allergy_ingre;
	}
	public int getAtopy() {
		return atopy;
	}
	public void setAtopy(int atopy) {
		this.atopy = atopy;
	}
	public int getSensitivity() {
		return sensitivity;
	}
	public void setSensitivity(int sensitivity) {
		this.sensitivity = sensitivity;
	}
	public String getIngredient() {
		return ingredient;
	}
	public void setIngredient(String ingredient) {
		this.ingredient = ingredient;
	}
	public double getIngre_avg() {
		return ingre_avg;
	}
	public void setIngre_avg(double ingre_avg) {
		this.ingre_avg = ingre_avg;
	}
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public String getFilecontent() {
		return filecontent;
	}
	public void setFilecontent(String filecontent) {
		this.filecontent = filecontent;
	}
	public int getRank() {
		return rank;
	}
	public void setRank(int rank) {
		this.rank = rank;
	}
	
	
	

	
	
}
