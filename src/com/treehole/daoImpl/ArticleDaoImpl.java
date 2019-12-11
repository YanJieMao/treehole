package com.treehole.daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.treehole.db.DBConnection;

import com.treehole.dao.ArticleDao;
import com.treehole.vo.Article;

public class ArticleDaoImpl implements ArticleDao{
	
	

	//连接
	public Connection conn=null;
	//预处理
	public PreparedStatement pst=null;
	//结果集
	public ResultSet rs=null;

	@Override
	public ArrayList<Article> selectAll() {
		// TODO Auto-generated method stub
		ArrayList<Article> list=new ArrayList<Article>();
		
		
		
		//连接数据库
				DBConnection db=new DBConnection();
				conn=db.getConn();
				
				String sql="select * from article";
				
				try {
					pst=conn.prepareStatement(sql);
					
					rs=pst.executeQuery();
					
					while(rs.next()){
						
						Article a=new Article();
						
						a.setId(rs.getInt(1));
						a.setName(rs.getString("name"));
						a.setSex(rs.getString("sex"));
						a.setContent(rs.getString("content"));
						a.setIs_anonymous(rs.getInt("is_anonymous"));
						a.setSend_time(rs.getString("send_time"));
						a.setIp(rs.getString("ip"));
						a.setQq(rs.getString("qq"));
						
												
						list.add(a);
						
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}finally{
					try {
						rs.close();
						pst.close();
						conn.close();
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
				
				
				return list;
			
		}
	
	//增加
		@Override
		public boolean add(Article a) {
			// TODO Auto-generated method stub
			DBConnection db=new DBConnection();
			conn=db.getConn();
			
			String sql="insert into article values(id,?,?,?,?,?,?,?)";
			
			try {
				pst=conn.prepareStatement(sql);
				
				//补全占位符
				pst.setString(1, a.getName());
				pst.setString(2, a.getSex());
				pst.setString(3,a.getContent());
				pst.setInt(4, a.getIs_anonymous());
				pst.setString(5, a.getSend_time());
				pst.setString(6, a.getIp());
				pst.setString(7, a.getQq());
				
				//提交数据
				int flag=pst.executeUpdate();
				
				if(flag>0){
					return true;
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return false;
		}
		
		
		@Override
		public ArrayList<Article> selectByIs_anonymous() {
			// TODO Auto-generated method stub
			ArrayList<Article> list=new ArrayList<Article>();
			
			DBConnection db=new DBConnection();
			conn=db.getConn();
			
			
			
			String sql="select * from article where is_anonymous=1";
			
			try {
				pst=conn.prepareStatement(sql);
				
				rs=pst.executeQuery();
				
				while(rs.next()){
					
					Article a=new Article();
					
					a.setId(rs.getInt(1));
					a.setName(rs.getString("name"));
					a.setSex(rs.getString("sex"));
					a.setContent(rs.getString("content"));
					a.setIs_anonymous(rs.getInt("is_anonymous"));
					a.setSend_time(rs.getString("send_time"));
					a.setIp(rs.getString("ip"));
					a.setQq(rs.getString("qq"));
					
											
					list.add(a);
					
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				try {
					rs.close();
					pst.close();
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			
			
			return list;
			
		}

		@Override
		public ArrayList<Article> selectByRealName() {
			// TODO Auto-generated method stub
			ArrayList<Article> list=new ArrayList<Article>();
			
			DBConnection db=new DBConnection();
			conn=db.getConn();
			
			
			
			String sql="select * from article where is_anonymous=0";
			
			try {
				pst=conn.prepareStatement(sql);
				
				rs=pst.executeQuery();
				
				while(rs.next()){
					
					Article a=new Article();
					
					a.setId(rs.getInt(1));
					a.setName(rs.getString("name"));
					a.setSex(rs.getString("sex"));
					a.setContent(rs.getString("content"));
					a.setIs_anonymous(rs.getInt("is_anonymous"));
					a.setSend_time(rs.getString("send_time"));
					a.setIp(rs.getString("ip"));
					a.setQq(rs.getString("qq"));
					
											
					list.add(a);
					
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				try {
					rs.close();
					pst.close();
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			
			
			return list;
			
		}

		
	
	
}