package baby.model;

public class BabyMemberVO {

	
	private String id;
	private String pw;
	private String name;
	private int age;
	private int hp;
	private int baby_age;
	
	
	public BabyMemberVO(String id, String pw, String name, int age, int hp, int baby_age) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.age = age;
		this.hp = hp;
		this.baby_age = baby_age;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getPw() {
		return pw;
	}


	public void setPw(String pw) {
		this.pw = pw;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public int getAge() {
		return age;
	}


	public void setAge(int age) {
		this.age = age;
	}


	public int getHp() {
		return hp;
	}


	public void setHp(int hp) {
		this.hp = hp;
	}


	public int getBaby_age() {
		return baby_age;
	}


	public void setBaby_age(int baby_age) {
		this.baby_age = baby_age;
	}
	


	
	
	
	
	
	
}
