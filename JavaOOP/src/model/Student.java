package model;

public class Student {
	private String name;
	private int age;
	private String sex;
	private long studentnum;
	
	public Student(String name, int age, String sex, long studentnum) {
		super();
		this.name = name;
		this.age = age;
		this.sex = sex;
		this.studentnum = studentnum;
	}
	@Override
	public String toString() {
		return "Student [name=" + name + ", age=" + age + ", sex=" + sex
				+ ", studentnum=" + studentnum + "]";
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
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public long getStudentnum() {
		return studentnum;
	}
	public void setStudentnum(long studentnum) {
		this.studentnum = studentnum;
	}
	

}
