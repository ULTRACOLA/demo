package com.example.demo.dao;

import com.example.demo.model.Inventory;

import org.springframework.data.jpa.repository.JpaRepository;

public interface InventoryDao extends JpaRepository<Inventory, Integer> {

}
