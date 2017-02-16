package com.springsource.roo.onlinebookstore.web;
import com.springsource.roo.onlinebookstore.domain.Books;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/bookses")
@Controller
@RooWebScaffold(path = "bookses", formBackingObject = Books.class)
public class BooksController {
}
