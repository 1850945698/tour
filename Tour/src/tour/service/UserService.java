package tour.service;

import java.util.List;



import tour.entity.Tourinformation;
import tour.user.collcet.Collect;
import tour.user.dao.TourinformationDao;



public class UserService {

//	public User findUserById(int id) {
//		// TODO Auto-generated method stub
//		return null;
//	}
	TourinformationDao pd=new TourinformationDao();
	/*
	 * 楠岃瘉鏌ヨ鍟嗗搧鏂规硶<鏍规嵁id>
	 */
//	public User findUserById(int id){
//		User p=pd.findUserById(id);
//		return p;
//	}
	public Tourinformation findTourinformationById(int book_id){
		Tourinformation tif=null;
		tif=pd.findTourinformationById(book_id);
		return tif;
	}
	/*
	 * 楠岃瘉鏌ヨ鍟嗗搧鏂规硶
	 */
	public List<Tourinformation> findAll() {
		List<Tourinformation> list=pd.findAll();
		return list;
	}
	/*
	 * 楠岃瘉浣跨敤鍒嗛〉鏌ヨ鍟嗗搧鏂规硶	
	 */
	public List<Tourinformation> findByPage(){
		List<Tourinformation> list=pd.findByPage();
		return list;
	}
	/*
	 * 楠岃瘉鍟嗗搧鎬绘暟鏂规硶	
	 */
	public int findCountByPage(){
		int count=pd.findCountByPage();
		return count;
	}
	/*
	 * 楠岃瘉鍟嗗搧娣诲姞鏂规硶	
	 */
	public boolean addTourinformation(Tourinformation tif){
		if(!pd.isExist((tif.getName()))){
			pd.addTourinformation(tif);
			return true;
		}else{
			System.out.println("姝ゅ晢鍝佸凡瀛樺湪");
			return false;
		}
		
	}
	
	 /* 
	  * 楠岃瘉鍟嗗搧淇敼鏂规硶	
	  */
	 
	public boolean updateProduct(Tourinformation tif){
		if(pd.isExist(tif.getId())){
			pd.updateTourinformation(tif);
			return true;
		}else{
			return false;
		}
	}
	
	 /*
	  * * 楠岃瘉鍟嗗搧鍒犻櫎鏂规硶	
	  */
	 
	public boolean deleteTourinformation(int id){
		if(pd.isExist(id)){
			pd.deleteTourinformationByid(id);
			return true;
		}else{
			return false;
		}
	}
	 // 鍒犻櫎璐墿杞︿腑璐墿椤�
    public void deleteCartItem(int id, Collect cart) {
        cart.getMap().remove(id);
    }
    // 娓呯┖璐墿杞�
    public void clearCart(Collect cart) {
        cart.getMap().clear();
    }
//    // 鏀瑰彉璐墿杞︽煇璐墿椤圭殑鏁伴噺
//    public void changeItemCount(int id, int count, Cart cart) {
//        CartItem item = cart.getContainer().get(id);
//        item.setCount(count);
//    }
}
