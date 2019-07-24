package main.java.com.example.SpringIoCpractice;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

//TODO
public class Main{
	public static void main(String[] args) {
		ApplicationContext context=new ClassPathXmlApplicationContext("hello.xml");
		HelloWorld helloWorld=(HelloWorld) context.getBean("helloWorld");
		helloWorld.getHello();
	}
}