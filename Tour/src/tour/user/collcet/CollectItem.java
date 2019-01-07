package tour.user.collcet;

import tour.entity.User;

public class CollectItem {
	private User user;
	private int count;
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
}
