package tour.service;

import java.util.List;



import tour.entity.Tourinformation;
import tour.entity.User;
import tour.user.collcet.Collect;
import tour.user.dao.TourinformationDao;

public class UserService1 {
	TourinformationDao pd=new TourinformationDao();
	/*
	 * 验证查询商品方法<根据id>
	 */
	public Tourinformation findTourinformationById(int id){
		Tourinformation tif=pd.findTourinformationById(id);
		return tif;
	}
	/*
	 * 验证查询商品方法
	 */
	public List<Tourinformation> findAll() {
		List<Tourinformation> list=pd.findAll();
		return list;
	}
	/*
	 * 验证使用分页查询商品方法	
	 */
	public List<Tourinformation> findByPage(int pageNum, int pageSize){
		List<Tourinformation> list=pd.findByPage(pageNum, pageSize);
		return list;
	}
	/*
	 * 验证商品总数方法	
	 */
	public int findCountByPage(){
		int count=pd.findCountByPage();
		return count;
	}
	/*
	 * 验证商品添加方法	
	 */
	public boolean addTourinformation(Tourinformation tif){
		if(!pd.isExist((tif.getName()))){
			pd.addTourinformation(tif);
			return true;
		}else{
			System.out.println("此收藏已存在");
			return false;
		}
		
	}
	
	 /* 
	  * 验证商品修改方法	
	  */
	 
	public boolean updateTourinformation(Tourinformation tif){
		if(pd.isExist(tif.getId())){
			pd.updateTourinformation(tif);
			return true;
		}else{
			return false;
		}
	}
	
	 /*
	  * * 验证商品删除方法	
	  */
	 
	public boolean deleteTourinformation(int id){
		if(pd.isExist(id)){
			pd.deleteTourinformationByid(id);
			return true;
		}else{
			return false;
		}
	}
	 // 删除购物车中购物项
    public void deleteCartItem(int id, Collect cart) {
        cart.getMap().remove(id);
    }
    // 清空购物车
    public void clearCart(Collect cart) {
        cart.getMap().clear();
    }
//    // 改变购物车某购物项的数量
//    public void changeItemCount(int id, int count, Cart cart) {
//        CartItem item = cart.getContainer().get(id);
//        item.setCount(count);
//    }
	public static boolean isExist(User pu) {
		// TODO Auto-generated method stub
		return false;
	}
	public static List<User> selectAllUser() {
		// TODO Auto-generated method stub
		return null;
	}

}
