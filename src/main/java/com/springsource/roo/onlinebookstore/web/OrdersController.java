package com.springsource.roo.onlinebookstore.web;
import com.springsource.roo.onlinebookstore.domain.Orders;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/orderses")
@Controller
@RooWebScaffold(path = "orderses", formBackingObject = Orders.class,
delete=false,
update=false)
public class OrdersController {
}
