package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import dto.PersonDTO;

public class PersonDAO {
	private static PersonDAO instance;

	public synchronized static PersonDAO getInstance() {
		if(instance == null) {  
			instance = new PersonDAO();  
		}
		return instance;
	}

	private PersonDAO() {}


	private Connection getConnection() throws Exception{				
		Context ctx = new InitialContext(); 
		DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc/oracle"); 
		return ds.getConnection();
	}

	// 데이터 추가
	public int insert(String name, String contact) throws Exception{
		String sql = "insert into person2 values(person2_seq.nextval,?,?)";
		try(
				Connection con = this.getConnection();
				PreparedStatement pstat = con.prepareStatement(sql);
				){
			pstat.setString(1,name);
			pstat.setString(2, contact);
			int result = pstat.executeUpdate();

			con.commit();
			return result;
		}
	}

	// 목록 출력
	public List<PersonDTO> selectAll() throws Exception{
		String sql = "select * from person2";
		try(
				Connection con = this.getConnection();
				PreparedStatement pstat = con.prepareStatement(sql);
				ResultSet rs = pstat.executeQuery();
				){
			List<PersonDTO> list = new ArrayList<>();
			while(rs.next()) {
				int id = rs.getInt("id");
				String name = rs.getString("name");
				String contact = rs.getString("contact");

				PersonDTO dto = new PersonDTO(id,name,contact);
				list.add(dto);
			}
			return list;
		}
	}

	// 데이터 삭제
	public int delete(int id) throws Exception{
		String sql = "delete from person2 where id=?";

		try(
				Connection con = this.getConnection();
				PreparedStatement pstat = con.prepareStatement(sql);
				){
			pstat.setInt(1, id);
			int result = pstat.executeUpdate();

			con.commit();
			return result;
		}
	}

	// 데이터 수정
	public int modify(PersonDTO dto) throws Exception{
		String sql = "update person2 set name=?, contact=? where id=?";
		try(
				Connection con = this.getConnection();
				PreparedStatement pstat = con.prepareStatement(sql);
				){
			pstat.setString(1, dto.getName());
			pstat.setString(2, dto.getContact());
			pstat.setInt(3, dto.getId());

			int result = pstat.executeUpdate();

			con.commit();
			return result;
		}
	}
}

