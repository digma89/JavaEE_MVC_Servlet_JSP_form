package rodriguez_COMP303Lab3;

import java.io.Serializable;

public class rodriguez_COMP303Lab3_bean implements Serializable {
	
	public rodriguez_COMP303Lab3_bean(){
		super();
	}
	
	private String name;
	private String streetAddress;
	private String phone;
	private String topic;
	private String pay;
	private String[] topics = new String [3];
	
	public String[] getTopics() {
		return topics;
	}
	public void setTopics(String[] topics) {
		this.topics = topics;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getStreetAddress() {
		return streetAddress;
	}
	public void setStreetAddress(String streetAddress) {
		this.streetAddress = streetAddress;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getTopic() {
		return topic;
	}
	public void setTopic(String topic) {
		this.topic = topic;
	}
	public String getPay() {
		return pay;
	}
	public void setPay(String pay) {
		this.pay = pay;
	}
	

}
