package Member;

public class member {
	
	private int membershipNumber; // 회원번호
	private String accountNumber; // 계좌번호
	private String iD; // 아이디
	private String pW; // 비밀번호
	private int rating; // 관리자
	private String email; // 이메일
	private String contact; // 연락처
	private String gender; // 성별
	private String name; // 이름
	
	public member() {}

	public member(int membershipNumber, String accountNumber, String iD, String pW, int rating, String email,
			String contact, String gender, String name) {
		super();
		this.membershipNumber = membershipNumber;
		this.accountNumber = accountNumber;
		this.iD = iD;
		this.pW = pW;
		this.rating = rating;
		this.email = email;
		this.contact = contact;
		this.gender = gender;
		this.name = name;
	}

	public int getMembershipNumber() {
		return membershipNumber;
	}

	public void setMembershipNumber(int membershipNumber) {
		this.membershipNumber = membershipNumber;
	}

	public String getAccountNumber() {
		return accountNumber;
	}

	public void setAccountNumber(String accountNumber) {
		this.accountNumber = accountNumber;
	}

	public String getiD() {
		return iD;
	}

	public void setiD(String iD) {
		this.iD = iD;
	}

	public String getpW() {
		return pW;
	}

	public void setpW(String pW) {
		this.pW = pW;
	}

	public int getRating() {
		return rating;
	}

	public void setRating(int rating) {
		this.rating = rating;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	

	
	
}
