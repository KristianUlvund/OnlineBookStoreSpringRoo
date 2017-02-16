// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.springsource.roo.onlinebookstore.domain;

import com.springsource.roo.onlinebookstore.domain.Categories;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Categories_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Categories.entityManager;
    
    public static final List<String> Categories.fieldNames4OrderClauseFilter = java.util.Arrays.asList("Name");
    
    public static final EntityManager Categories.entityManager() {
        EntityManager em = new Categories().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Categories.countCategorieses() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Categories o", Long.class).getSingleResult();
    }
    
    public static List<Categories> Categories.findAllCategorieses() {
        return entityManager().createQuery("SELECT o FROM Categories o", Categories.class).getResultList();
    }
    
    public static List<Categories> Categories.findAllCategorieses(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Categories o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Categories.class).getResultList();
    }
    
    public static Categories Categories.findCategories(Long id) {
        if (id == null) return null;
        return entityManager().find(Categories.class, id);
    }
    
    public static List<Categories> Categories.findCategoriesEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Categories o", Categories.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Categories> Categories.findCategoriesEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Categories o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Categories.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Categories.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Categories.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Categories attached = Categories.findCategories(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Categories.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Categories.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Categories Categories.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Categories merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}