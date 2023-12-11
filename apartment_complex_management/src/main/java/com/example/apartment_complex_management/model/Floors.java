package com.example.apartment_complex_management.model;

public class Floors {
    private Integer id;
    private Integer numFloors;

    public Floors(Integer id, Integer numFloors) {
        this.id = id;
        this.numFloors = numFloors;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getNumFloors() {
        return numFloors;
    }

    public void setNumFloors(Integer numFloors) {
        this.numFloors = numFloors;
    }
}
