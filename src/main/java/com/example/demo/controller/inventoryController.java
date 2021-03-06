package com.example.demo.controller;

import java.util.List;
import com.example.demo.dao.DeletedInventoryDao;
import com.example.demo.dao.InventoryDao;
import com.example.demo.model.DeletedInventory;
import com.example.demo.model.Inventory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class InventoryController {
    @Autowired
    InventoryDao inventoryDao;
    @Autowired
    DeletedInventoryDao deletedInventoryDao;

    @RequestMapping("/")
    public ModelAndView home() {
        ModelAndView mv = new ModelAndView("home.jsp");
        List<Inventory> inventorys = inventoryDao.findAll();
        List<DeletedInventory> deletedInventories = deletedInventoryDao.findAll();

        mv.addObject("inventorys", inventorys);
        mv.addObject("deletedInventorys", deletedInventories);
        return mv;
    }

    @RequestMapping(value = "/addInventory")
    public String addInventory(Inventory inventory) {
        inventoryDao.save(inventory);
        return "redirect:/";
    }

    @RequestMapping(value = "/updateInventory")
    public String updateInventory(Inventory inventory) {
        inventoryDao.save(inventory);
        return "redirect:/";
    }

    @RequestMapping(value = "/deleteInventory")
    public String deleteInventory(@RequestParam int id, String comment) {
        Inventory removeItem = inventoryDao.getReferenceById(id);
        DeletedInventory newRemovItem = new DeletedInventory();
        newRemovItem.setOriginalId(removeItem.getId());
        newRemovItem.setLocation(removeItem.getLocation());
        newRemovItem.setAmount(removeItem.getAmount());
        newRemovItem.setName(removeItem.getName());
        newRemovItem.setComment(comment);
        deletedInventoryDao.save(newRemovItem);
        inventoryDao.deleteById(id);
        return "redirect:/";
    }

    @RequestMapping(value = "/recoverInventory")
    public String recoverInventory(@RequestParam int id) {
        DeletedInventory recoverItem = deletedInventoryDao.getReferenceById(id);
        Inventory newRecoverItem = new Inventory();
        newRecoverItem.setId(recoverItem.getOriginalId());
        newRecoverItem.setAmount(recoverItem.getAmount());
        newRecoverItem.setLocation(recoverItem.getLocation());
        newRecoverItem.setName(recoverItem.getName());
        deletedInventoryDao.deleteById(id);
        inventoryDao.save(newRecoverItem);
        return "redirect:/";
    }
}
