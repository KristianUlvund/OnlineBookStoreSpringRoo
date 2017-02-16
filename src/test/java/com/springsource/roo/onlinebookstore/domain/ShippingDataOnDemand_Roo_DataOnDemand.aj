// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.springsource.roo.onlinebookstore.domain;

import com.springsource.roo.onlinebookstore.domain.Shipping;
import com.springsource.roo.onlinebookstore.domain.ShippingDataOnDemand;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.stereotype.Component;

privileged aspect ShippingDataOnDemand_Roo_DataOnDemand {
    
    declare @type: ShippingDataOnDemand: @Component;
    
    private Random ShippingDataOnDemand.rnd = new SecureRandom();
    
    private List<Shipping> ShippingDataOnDemand.data;
    
    public Shipping ShippingDataOnDemand.getNewTransientShipping(int index) {
        Shipping obj = new Shipping();
        setAddress(obj, index);
        setDeliveryTime(obj, index);
        setName(obj, index);
        setPostalCode(obj, index);
        return obj;
    }
    
    public void ShippingDataOnDemand.setAddress(Shipping obj, int index) {
        String Address = "Address_" + index;
        if (Address.length() > 45) {
            Address = Address.substring(0, 45);
        }
        obj.setAddress(Address);
    }
    
    public void ShippingDataOnDemand.setDeliveryTime(Shipping obj, int index) {
        Date deliveryTime = new GregorianCalendar(Calendar.getInstance().get(Calendar.YEAR), Calendar.getInstance().get(Calendar.MONTH), Calendar.getInstance().get(Calendar.DAY_OF_MONTH), Calendar.getInstance().get(Calendar.HOUR_OF_DAY), Calendar.getInstance().get(Calendar.MINUTE), Calendar.getInstance().get(Calendar.SECOND) + new Double(Math.random() * 1000).intValue()).getTime();
        obj.setDeliveryTime(deliveryTime);
    }
    
    public void ShippingDataOnDemand.setName(Shipping obj, int index) {
        String Name = "Name_" + index;
        if (Name.length() > 45) {
            Name = Name.substring(0, 45);
        }
        obj.setName(Name);
    }
    
    public void ShippingDataOnDemand.setPostalCode(Shipping obj, int index) {
        Integer postalCode = new Integer(index);
        obj.setPostalCode(postalCode);
    }
    
    public Shipping ShippingDataOnDemand.getSpecificShipping(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        Shipping obj = data.get(index);
        Long id = obj.getId();
        return Shipping.findShipping(id);
    }
    
    public Shipping ShippingDataOnDemand.getRandomShipping() {
        init();
        Shipping obj = data.get(rnd.nextInt(data.size()));
        Long id = obj.getId();
        return Shipping.findShipping(id);
    }
    
    public boolean ShippingDataOnDemand.modifyShipping(Shipping obj) {
        return false;
    }
    
    public void ShippingDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = Shipping.findShippingEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'Shipping' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<Shipping>();
        for (int i = 0; i < 10; i++) {
            Shipping obj = getNewTransientShipping(i);
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
