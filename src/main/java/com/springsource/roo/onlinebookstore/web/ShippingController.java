package com.springsource.roo.onlinebookstore.web;
import com.springsource.roo.onlinebookstore.domain.Shipping;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/shippings")
@Controller
@RooWebScaffold(path = "shippings", formBackingObject = Shipping.class)
public class ShippingController {
}
