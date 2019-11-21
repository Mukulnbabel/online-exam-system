package com.lti.springMvcCrud.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="Question")
public class User {
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE,generator="question-seq")
	@SequenceGenerator(name="question-seq",sequenceName="ques_seq",allocationSize=1)
	private long ques_id;
	private long ques_no;
	private String question;
	private String option1;
	private String option2;
	private String option3;
	private String option4;
	private String answer;
	private double Marks;
	private String level_name;
	
	
	public User(long ques_no, String question, String option1, String option2, String option3, String option4,
			String answer, double marks, String level_name) {
		this.ques_no = ques_no;
		this.question = question;
		this.option1 = option1;
		this.option2 = option2;
		this.option3 = option3;
		this.option4 = option4;
		this.answer = answer;
		Marks = marks;
		this.level_name = level_name;
	}


	public long getQues_id() {
		return ques_id;
	}


	public void setQues_id(long ques_id) {
		this.ques_id = ques_id;
	}


	public long getQues_no() {
		return ques_no;
	}


	public void setQues_no(long ques_no) {
		this.ques_no = ques_no;
	}


	public String getQuestion() {
		return question;
	}


	public void setQuestion(String question) {
		this.question = question;
	}


	public String getOption1() {
		return option1;
	}


	public void setOption1(String option1) {
		this.option1 = option1;
	}


	public String getOption2() {
		return option2;
	}


	public void setOption2(String option2) {
		this.option2 = option2;
	}


	public String getOption3() {
		return option3;
	}


	public void setOption3(String option3) {
		this.option3 = option3;
	}


	public String getOption4() {
		return option4;
	}


	public void setOption4(String option4) {
		this.option4 = option4;
	}


	public String getAnswer() {
		return answer;
	}


	public void setAnswer(String answer) {
		this.answer = answer;
	}


	public double getMarks() {
		return Marks;
	}


	public void setMarks(double marks) {
		Marks = marks;
	}


	public String getLevel_name() {
		return level_name;
	}


	public void setLevel_name(String level_name) {
		this.level_name = level_name;
	}


	public User() {
		super();
	}


	@Override
	public String toString() {
		return "Register [ques_id=" + ques_id + ", ques_no=" + ques_no + ", question=" + question + ", option1="
				+ option1 + ", option2=" + option2 + ", option3=" + option3 + ", option4=" + option4 + ", answer="
				+ answer + ", Marks=" + Marks + ", level_name=" + level_name + "]";
	}
	
		 
	
}
