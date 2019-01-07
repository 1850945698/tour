package tour.user.collcet;

import java.util.HashMap;
import java.util.Map;

public class Collect {
	private Map<Integer,CollectItem> map= new HashMap<Integer,CollectItem>();
	public Map<Integer, CollectItem> getMap() {
		return map;
	}
	public void setMap(Map<Integer, CollectItem> map) {
		this.map = map;
	}
	public void addCartItem(User u) {
//		if(map.containsKey(u.getId())) {
		if(map.containsKey(u.getBook_id())) {
//		  CartItem ci=map.get(u.getId());
			CollectItem ci=map.get(u.getBook_id());
		  ci.setCount(ci.getCount()+1);
		}else {
			CollectItem ci=new CollectItem();
			ci.setCount(1);
			ci.setUser(u);
			map.put(u.getBook_id(), ci);
			
		}
}
