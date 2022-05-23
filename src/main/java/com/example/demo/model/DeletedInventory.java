package com.example.demo.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class DeletedInventory {
    @Id
    private int id;
    private int originalId;
    private String name;
    private int amount;
    private String location;
    private String comment;

    public int getOriginalId() {
        return this.originalId;
    }

    public void setOriginalId(int originalId) {
        this.originalId = originalId;
    }

    public int getId() {
        return this.id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAmount() {
        return this.amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public String getLocation() {
        return this.location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getComment() {
        return this.comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }
}
