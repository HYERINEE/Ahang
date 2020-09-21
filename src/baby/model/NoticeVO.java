package baby.model;

public class NoticeVO {
	
	private int notice_num;
	private String ID;
	private String Review;
	private int star;
	private String brand_id;
	private String model_id;
	
	public NoticeVO(int notice_num, String iD, String review, int star, String brand_id, String model_id) {
		this.notice_num = notice_num;
		ID = iD;
		Review = review;
		this.star = star;
		this.brand_id = brand_id;
		this.model_id = model_id;
	}
	
	
	public int getNotice_num() {
		return notice_num;
	}
	public void setNotice_num(int notice_num) {
		this.notice_num = notice_num;
	}
	public String getID() {
		return ID;
	}
	public void setID(String iD) {
		ID = iD;
	}
	public String getReview() {
		return Review;
	}
	public void setReview(String review) {
		Review = review;
	}
	public int getStar() {
		return star;
	}
	public void setStar(int star) {
		this.star = star;
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
}
	
	
	