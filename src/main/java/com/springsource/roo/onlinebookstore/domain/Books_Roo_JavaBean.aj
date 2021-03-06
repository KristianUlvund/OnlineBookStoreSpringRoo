// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.springsource.roo.onlinebookstore.domain;

import com.springsource.roo.onlinebookstore.domain.Author;
import com.springsource.roo.onlinebookstore.domain.Books;
import com.springsource.roo.onlinebookstore.domain.Categories;
import java.util.Set;

privileged aspect Books_Roo_JavaBean {
    
    public String Books.getTitle() {
        return this.Title;
    }
    
    public void Books.setTitle(String Title) {
        this.Title = Title;
    }
    
    public String Books.getISBN() {
        return this.ISBN;
    }
    
    public void Books.setISBN(String ISBN) {
        this.ISBN = ISBN;
    }
    
    public Float Books.getCost() {
        return this.Cost;
    }
    
    public void Books.setCost(Float Cost) {
        this.Cost = Cost;
    }
    
    public Integer Books.getQuantity() {
        return this.Quantity;
    }
    
    public void Books.setQuantity(Integer Quantity) {
        this.Quantity = Quantity;
    }
    
    public Set<Categories> Books.getCategories() {
        return this.Categories;
    }
    
    public void Books.setCategories(Set<Categories> Categories) {
        this.Categories = Categories;
    }
    
    public Set<Author> Books.getAuthor() {
        return this.Author;
    }
    
    public void Books.setAuthor(Set<Author> Author) {
        this.Author = Author;
    }
    
}
