package com.springsource.roo.onlinebookstore.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Shipping {

    /**
     */
    @NotNull
    @Size(max = 45)
    private String Name;

    /**
     */
    @NotNull
    @Size(max = 45)
    private String Address;

    /**
     */
    private Integer postalCode;

    /**
     */
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "F-")
    private Date deliveryTime;
}
