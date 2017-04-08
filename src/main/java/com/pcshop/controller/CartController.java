/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pcshop.controller;

import com.pcshop.model.Item;
import com.pcshop.model.Orders;
import com.pcshop.model.OrdersDetail;
import com.pcshop.service.CustomerService;
import com.pcshop.service.OrdersDetailService;
import com.pcshop.service.OrdersService;
import com.pcshop.service.ProductService;
import java.security.Principal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author stefa
 */
@Controller
@RequestMapping("/customer/cart")
public class CartController {
    
    @Autowired
    private ProductService productService;

    @Autowired
    private CustomerService customerService;

    @Autowired
    private OrdersService orderService;
    
    @Autowired
    private OrdersDetailService ordersDetailService;

    @RequestMapping(method = RequestMethod.GET)
    public String index(ModelMap model) {
        model.put("title", "Cart");
        model.put("action", "cart");
        return "cart";

    }

    @RequestMapping(value = "/buy/{id}", method = RequestMethod.GET)
    public String buy(@PathVariable("id") int id, HttpSession session, ModelMap model) {
        model.put("title", "Cart");
        if (session.getAttribute("cart") == null) {
            List<Item> cart = new ArrayList<Item>();
            cart.add(new Item(productService.getProductById(id), 1));
            session.setAttribute("cart", cart);

        } else {
            List<Item> cart = (List<Item>) session.getAttribute("cart");
            int index = ifProductInCartExists(id, session);
            if (index == -1) {
                cart.add(new Item(productService.getProductById(id), 1));
            } else {
                int quantity = cart.get(index).getQuantity() + 1;
                cart.get(index).setQuantity(quantity);
                session.setAttribute("cart", cart);
            }

        }
        return "cart";

    }

    private int ifProductInCartExists(int id, HttpSession session) {
        List<Item> cart = (List<Item>) session.getAttribute("cart");
        for (int i = 0; i < cart.size(); i++) {
            if (cart.get(i).getProduct().getProductId() == id) {
                return i;
            }

        }
        return -1;
    }

    @RequestMapping(value = "/delete/{index}", method = RequestMethod.GET)
    public String deleteItem(@PathVariable("index") int index, HttpSession session) {
        List<Item> cart = (List<Item>) session.getAttribute("cart");
        cart.remove(index);
        return "redirect:/customer/cart";
    }

    @RequestMapping(value = "/checkout", method = RequestMethod.GET)
    public String checkout(HttpSession session, ModelMap model, Principal principal) {
        model.put("title", "Cart");

        if (session.getAttribute("cart") == null) {
            model.addAttribute("error", "Molimo Vas ubacite proizvode u korpu");
            return "cart";
        } else {
            Orders orders = new Orders();
            orders.setUsername(principal.getName());
            orders.setDateCreation(new Date());
            orders.setOrdersName("Nova porudzbina");
            
            Orders newOrder = orderService.addOrders(orders);

            List<Item> cart = (List<Item>) session.getAttribute("cart");
            for(Item item : cart){
                OrdersDetail ordersDetail = new OrdersDetail();
                ordersDetail.setProductId(item.getProduct().getProductId());
                ordersDetail.setOrdersId(newOrder.getOrdersId());
                ordersDetail.setPrice(item.getProduct().getProductPrice());
                ordersDetail.setQuantity(item.getQuantity());
                ordersDetailService.addOrdersDetail(ordersDetail);
            }

            session.removeAttribute("cart");
            
            return "thanks";
        }

    }
    
}
