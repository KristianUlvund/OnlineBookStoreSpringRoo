// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.springsource.roo.onlinebookstore.domain;

import com.springsource.roo.onlinebookstore.domain.Categories;
import com.springsource.roo.onlinebookstore.domain.CategoriesDataOnDemand;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.stereotype.Component;

privileged aspect CategoriesDataOnDemand_Roo_DataOnDemand {
    
    declare @type: CategoriesDataOnDemand: @Component;
    
    private Random CategoriesDataOnDemand.rnd = new SecureRandom();
    
    private List<Categories> CategoriesDataOnDemand.data;
    
    public Categories CategoriesDataOnDemand.getNewTransientCategories(int index) {
        Categories obj = new Categories();
        setName(obj, index);
        return obj;
    }
    
    public void CategoriesDataOnDemand.setName(Categories obj, int index) {
        String Name = "Name_" + index;
        if (Name.length() > 45) {
            Name = Name.substring(0, 45);
        }
        obj.setName(Name);
    }
    
    public Categories CategoriesDataOnDemand.getSpecificCategories(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        Categories obj = data.get(index);
        Long id = obj.getId();
        return Categories.findCategories(id);
    }
    
    public Categories CategoriesDataOnDemand.getRandomCategories() {
        init();
        Categories obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return Categories.findCategories(id);
    }
    
    public boolean CategoriesDataOnDemand.modifyCategories(Categories obj) {
        return false;
    }
    
    public void CategoriesDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = Categories.findCategoriesEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'Categories' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<Categories>();
        for (int i = 0; i < 10; i++) {
            Categories obj = getNewTransientCategories(i);
            try {
                obj.persist();
            } catch (final ConstraintViolationException e) {
                final StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    final ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
                }
                throw new IllegalStateException(msg.toString(), e);
            }
            obj.flush();
            data.add(obj);
        }
    }
    
}
