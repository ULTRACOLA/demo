package com.example.demo.dao;

import com.example.demo.model.DeletedInventory;

import org.springframework.data.jpa.repository.JpaRepository;

public interface DeletedInventoryDao extends JpaRepository<DeletedInventory, Integer> {

}
