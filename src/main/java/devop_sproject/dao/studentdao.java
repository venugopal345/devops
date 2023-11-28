package devop_sproject.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import devop_sproject.dto.studentdto;

public class studentdao {

	EntityManagerFactory emf=Persistence.createEntityManagerFactory("dev");
	EntityManager em=emf.createEntityManager();
	EntityTransaction et=em.getTransaction();
	
	
	public String insert(studentdto dto)
	{
		et.begin();
		em.persist(dto);
		et.commit();
		return "data inserted";
	}
	
	public List<studentdto> fetchall(){
	  Query q=em.createQuery("select data from studentdto data"); 
	List<studentdto> list=q.getResultList() ;
	  return list;
	}
	
	public String delete(int cid) {
      studentdto s =em.find(studentdto.class, cid);
      if(s!=null) {
    	  et.begin();
    	  em.remove(s);
    	  et.commit();
    	  return "data is deleted";
      }else {
    	  return "data not found";
      }
      
	}
	
	public String update(studentdto e4) {
		
		et.begin();
		em.merge(e4);
		et.commit();
		return "data updated";

	}
	
	

	
	
}
