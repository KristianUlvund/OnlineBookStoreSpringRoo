package com.springsource.roo.onlinebookstore.domain;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.ManyToMany;

@RooJavaBean
@RooToString
@RooJpaActiveRecord
public class Books {

    /**
     */
    @NotNull
    @Size(min = 3)
    private String Title;

    /**
     */
    @NotNull
    @Size(min = 17)
    private String ISBN;

    /**
     */
    private Float Cost;

    /**
     */
    private Integer Quantity;

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL)
    private Set<Categories> Categories = new HashSet<Categories>();

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL)
    private Set<Author> Author = new HashSet<Author>();
}
