package tour.user.collcet;

import java.util.HashMap;
import java.util.Map;

import tour.entity.Tourinformation;



public class Collect {
	private Map<Integer,CollectItem> map= new HashMap<Integer,CollectItem>();
	public Map<Integer, CollectItem> getMap() {
		return map;
	}
	public void setMap(Map<Integer, CollectItem> map) {
		this.map = map;
	}
	public void addCartItem(Tourinformation tif) {
//		if(map.containsKey(u.getId())) {
		if(map.containsKey(tif.getId())) {
//		  CartItem ci=map.get(u.getId());
			CollectItem ci=map.get(tif.getId());
		  ci.setCount(ci.getCount()+1);
		}else {
			CollectItem ci=new CollectItem();
			ci.setCount(1);
			//ci.setUser(tif);
			ci.setTif(tif);
			map.put(tif.getId(), ci);
			
		}
}
}