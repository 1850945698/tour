package com.collect;

import java.util.HashMap;
import java.util.Map;

import com.entity.tourinformation;


public class Cart {
	private Map<Integer,CartItem> map=new HashMap<Integer,CartItem>();
	
	public Map<Integer, CartItem> getMap() {
		return map;
	}
	public void setMap(Map<Integer, CartItem> map) {
		this.map = map;
	}
	
	public void addCartItem(tourinformation t){
		if(map.containsKey(t.getId())){
			CartItem ci=map.get(t.getId());
			
			
		}else{
			CartItem ci=new CartItem();
			ci.setTourinformation(t);
			
			map.put(t.getId(), ci);
			
		}
	}
	

}
