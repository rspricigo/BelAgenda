package br.com.belagenda.dao;

import java.io.Serializable;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;

import br.com.belagenda.util.JPAUtil;



public abstract class GenericDAO<T, I extends Serializable> {

	private Class<T> persistedClass;
	
	protected GenericDAO() {
		
	
	}
	
	protected GenericDAO(Class<T> persistedClass) {
		this();
		this.persistedClass = persistedClass;
	}
	
	public T save(T entity) {
		EntityManager em = JPAUtil.getEntityManager();
		em.getTransaction().begin();
		em.persist(entity);
		em.getTransaction().commit();
		em.close();
		return entity;
	}
	
	public T update(T entity) {
		EntityManager em = JPAUtil.getEntityManager();
		em.getTransaction().begin();
		em.merge(entity);
		em.getTransaction().commit();
		em.close();
		return entity;
	}
	
	public List<T> getList() {
		   EntityManager em = JPAUtil.getEntityManager();
	       CriteriaBuilder builder = em.getCriteriaBuilder();
	       CriteriaQuery<T> query = builder.createQuery(persistedClass);
	       query.from(persistedClass);
	       List<T> list = em.createQuery(query).getResultList();
	       em.close();
	       return list;
	   }

	   public T encontrar(I id) {
		   EntityManager em = JPAUtil.getEntityManager();
		   T obj = em.find(persistedClass, id);
		   em.close();
	       return obj;
	   }
	
}
