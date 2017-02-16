package com.springsource.roo.onlinebookstore.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.ManyToOne;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Orders {

    /**
     */
    @ManyToOne
    private Books Books;

    /**
     */
    @ManyToOne
    private Shipping Shipping;
}
