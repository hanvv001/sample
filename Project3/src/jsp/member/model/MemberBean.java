package jsp.member.model;

public class MemberBean {
	
	
	private String id; // 아이디
	private String password; // 비밀번호
	private String name; // 이름
	private String manger; // 등급
	private String mail1; // 이메일 앞
	private String mail2; // 이메일 뒷
	private String contact; // 연락처
	private String account; // 계좌번호
	
	 public String getId() {return id;}
	    public void setId(String id) {this.id = id;}
	    
	    public String getPassword() {return password;}
	    public void setPassword(String password) {this.password = password;}
	    
	    public String getName() {return name;}
	    public void setName(String name) {this.name = name;}
	    
	    public String getmanger() {return manger;}
	    public void setGender(String manger) {this.manger = manger;}
	    
	     
	    public String getMail1() {return mail1;}
	    public void setMail1(String mail1) {this.mail1 = mail1;}
	    public String getMail2() {return mail2;}
	    public void setMail2(String mail2) {this.mail2 = mail2;}
	    
	    public String getcontact() {return contact;}
	    public void setcontact(String contact) {this.contact = contact;}
	    
	    public String getaccount() {return account;}
	    public void setaccount(String account) {this.account = account;}
	    
}
