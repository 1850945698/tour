package tour.user.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;



import tour.entity.Tourinformation;

public class TourinformationDao {
	/*
	 * 添加商品方法
	 */
	public boolean addTourinformation(Tourinformation tif){
		try{
			Connection con=BaseDao.getCon();
			PreparedStatement pstm=con.prepareStatement("insert into tourinformation(name,address,description) values(?,?,?)");
			pstm.setInt(1, tif.getId());;
			pstm.setString(2, tif.getAddress());;
			pstm.setString(3, tif.getDescription());
			pstm.setString(4, tif.getName());
//			pstm.setString(1, p.getName());
//			pstm.setString(2, p.getDescription());
//			pstm.setString(3, p.getListimg());
//			pstm.setInt(4, p.getPrice());
//			pstm.setInt(5, p.getDiscountprice());
			int rs = pstm.executeUpdate();
			if(rs>0){
				return true;
			}else{
				return false;
			}
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}
		
	/*
	 * 修改商品方法
	 */
	public boolean updateTourinformation(Tourinformation tif){
		try{
			Connection con=BaseDao.getCon();
			PreparedStatement pstm=con.prepareStatement("update tourinformation set name=?,address=?,description=? where id=?");
			pstm.setInt(1, tif.getId());;
			pstm.setString(2, tif.getAddress());;
			pstm.setString(3, tif.getDescription());
			pstm.setString(4, tif.getName());
//			pstm.setString(1, product.getName());
//			pstm.setString(2, product.getDescription());
//			pstm.setInt(3, product.getPrice());
//			pstm.setInt(4, product.getDiscountprice());
//            pstm.setInt(5, product.getId());
            int rs = pstm.executeUpdate();
            System.out.println(rs);
            if(rs>0){
				return true;
			}else{
				return false;
			}
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}
	/*
	 * 删除商品方法<根据id>
	 */
	public boolean deleteTourinformationByid(int id){
		try{
			Connection con=BaseDao.getCon();
			PreparedStatement pstm=con.prepareStatement("delete from tourinformation where id=?");
			pstm.setInt(1, id);
			int rs=pstm.executeUpdate();
			if(rs>0){
				return true;
			}else{
				return false;
			}
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}
	/*
	 * 验证该商品是否存�?<根据id>
	 */
	public boolean isExist(int id){
		return findTourinformationById(id)==null?false:true;
	}
	
	/*
	 * 验证该商品是否存�?<根据name>
	 */
	public boolean isExist(String name){
		return findTourinformationByName(name)==null?false:true;
	}
	private Object findTourinformationByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	/*
	 * 根据id查询相应商品
	 */
	public Tourinformation findTourinformationById(int id){
		try{
			Connection con=BaseDao.getCon();
			PreparedStatement pstm=con.prepareStatement("select * from tourinformation where id=?");
			pstm.setInt(1, id);
			ResultSet rs=pstm.executeQuery();
			Tourinformation tif=null;
			while(rs.next()){
				tif=new Tourinformation();
				tif.setId(rs.getInt(1));
				tif.setName(rs.getString(2));
				tif.setAddress(rs.getString(3));
				tif.setDescription(rs.getString(4));
//				p=new Product();
//				p.setId(rs.getInt(1));
//				p.setName(rs.getString(2));
//				p.setDescription(rs.getString(3));
//				p.setListimg(rs.getString(4));
//				p.setPrice(rs.getInt(5));
//				p.setDiscountprice(rs.getInt(6));
			}
			return tif;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	/*
	 * 根据name查询相应商品
	 */
	public Tourinformation findProductByName(String name){
		try{
			Connection con=BaseDao.getCon();
			PreparedStatement pstm=con.prepareStatement("select * from tourinformation where name=?");
			pstm.setString(1, name);
			ResultSet rs=pstm.executeQuery();
			Tourinformation tif=null;
			while(rs.next()){
				
//				p=new Product();
//				p.setId(rs.getInt(1));
//				p.setName(rs.getString(2));
//				p.setDescription(rs.getString(3));
//				p.setListimg(rs.getString(4));
//				p.setPrice(rs.getInt(5));
//				p.setDiscountprice(rs.getInt(6));
			}
			return tif;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}

	/*
	 * 查询全部商品的方�?
	 */
	public List<Tourinformation> findAll(){
		try{
			List<Tourinformation> list=new ArrayList<Tourinformation>();
			Connection con=BaseDao.getCon();
			PreparedStatement pstm=con.prepareStatement("select * from tourinformation");
			ResultSet rs=pstm.executeQuery();
			Tourinformation tif=null;
			while(rs.next()){
				tif=new Tourinformation();
				tif.setId(rs.getInt(1));
				tif.setName(rs.getString(2));
				tif.setAddress(rs.getString(3));
				tif.setDescription(rs.getString(4));
//				p=new Product();
//				p.setId(rs.getInt(1));
//				p.setName(rs.getString(2));
//				p.setDescription(rs.getString(3));
//				p.setListimg(rs.getString(4));
//				p.setPrice(rs.getInt(5));
//				p.setDiscountprice(rs.getInt(6));
				list.add(tif);
				System.out.println(tif);
			}
			
			return list;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
	
	/*
	 * 统计商品总数
	 * @return
	 */
	public int findCountByPage(){
		try{
			Connection con=BaseDao.getCon();
			PreparedStatement pstm=con.prepareStatement("select count(id) from tourinformation");
			ResultSet rs=pstm.executeQuery();
			int count=0;
			while(rs.next()){
				count=rs.getInt(1);
			}
			return count;
		}catch(Exception e){
			e.printStackTrace();
			return 0;
		}
		
	}
	
	/*
	 * 分页查询数据
	 * @param pageNum
	 * @param pageSize
	 * @return
	 */
	public List<Tourinformation> findByPage(int pageNum, int pageSize){
		try{
			List<Tourinformation> list=new ArrayList<Tourinformation>();
			Connection con=BaseDao.getCon();
			PreparedStatement pstm=con.prepareStatement("select * from tourinformation");
			ResultSet rs=pstm.executeQuery();
			Tourinformation tif=null;
			while(rs.next()){
//				p=new Product();
//				p.setId(rs.getInt(1));
//				p.setName(rs.getString(2));
//				p.setDescription(rs.getString(3));
//				p.setListimg(rs.getString(4));
//				p.setPrice(rs.getInt(5));
//				p.setDiscountprice(rs.getInt(6));
				tif=new Tourinformation();
				tif.setId(rs.getInt(1));
				tif.setName(rs.getString(2));
				tif.setAddress(rs.getString(3));
				tif.setDescription(rs.getString(4));
				list.add(tif);
			}
			
			return list;
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
	}
}
