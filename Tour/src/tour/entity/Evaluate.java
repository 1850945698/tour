package tour.entity;
//评论
public class Evaluate {
	private Integer id;
	private String description;
	private String time;
	private String tourname;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getTourname() {
		return tourname;
	}
	public void setTourname(String tourname) {
		this.tourname = tourname;
	}
	@Override
	public String toString() {
		return "evaluate [id=" + id + ", description=" + description + ", time=" + time + ", tourname=" + tourname
				+ "]";
	}
	
}
