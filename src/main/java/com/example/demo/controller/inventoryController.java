package com.example.demo.controller;

import java.util.List;
import java.util.Optional;

import javax.websocket.server.PathParam;

import com.example.demo.dao.InventoryDao;
import com.example.demo.model.Inventory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import ch.qos.logback.core.net.SyslogOutputStream;

@Controller
public class inventoryController {
    @Autowired
    InventoryDao inventoryDao;

    @RequestMapping("/")
    public String home() {
        return "home.jsp";
    }

    @RequestMapping(value = "/addInventory")
    public String addInventory(Inventory inventory) {
        inventoryDao.save(inventory);
        return "home.jsp";

    }

    @RequestMapping(value = "/getInventory")
    @ResponseBody

    public ModelAndView getInventory() {
        ModelAndView mv = new ModelAndView("show.jsp");
        List<Inventory> Inventorys = inventoryDao.findAll();

        mv.addObject("Inventorys", Inventorys);
        return mv;
    }

    @RequestMapping(value = "/updateInventory")
    public String updateInventory(Inventory inventory) {
        inventoryDao.save(inventory);
        return "home.jsp";
    }

    @RequestMapping(value = "/deleteInventory")
    public String deleteInventory(@RequestParam int id) {
        inventoryDao.deleteById(id);
        return "home.jsp";
    }

    @RequestMapping(value = "/setLocation")
    public String setLocation(@RequestParam int id, String location) {
        Inventory inventory = inventoryDao.getReferenceById(id);
        inventory.setLocation(location);
        inventoryDao.save(inventory);
        return "home.jsp";
    }

    // @PostMapping("/inventory")
    // public Inventory addInventory(Inventory inventory) {
    // inventoryDao.save(inventory);
    // return inventory;
    // }

    // @GetMapping("/Inventorys")
    // @ResponseBody
    // public List<Inventory> getAllInventorys() {
    // return inventoryDao.findAll();
    // }

    // @GetMapping("/inventory/{id}")
    // @ResponseBody
    // public Optional<Inventory> getInventory(@PathVariable("id") int id) {
    // return inventoryDao.findById(id);
    // }

    // @DeleteMapping("/inventory/{id}")
    // public String deleteInventory(@PathVariable int id) {
    // Inventory a = inventoryDao.getReferenceById(id);
    // inventoryDao.delete(a);
    // return "done";
    // }

    // @PutMapping("/inventory")
    // public Inventory updateInventory(Inventory inventory) {
    // inventoryDao.save(inventory);
    // return inventory;
    // }
}
