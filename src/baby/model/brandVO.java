package baby.model;

public class brandVO {
	private String brand_ID;

	public brandVO(String brand_ID) {
		this.brand_ID = brand_ID;
	}

	public String getBrand_ID() {
		return brand_ID;
	}

	public void setBrand_ID(String brand_ID) {
		this.brand_ID = brand_ID;
	}

	@Override
	public String toString() {
		return "brandVO [brand_ID=" + brand_ID + "]";
	}

}
