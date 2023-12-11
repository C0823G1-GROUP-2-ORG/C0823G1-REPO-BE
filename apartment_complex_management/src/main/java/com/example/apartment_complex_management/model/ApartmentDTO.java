package com.example.apartment_complex_management.model;

public class ApartmentDTO {
    private Integer id;
    private String name;
    private Double  acreage;
    private Double rentalCosts;
    private Integer maxPeople;
    private String description;
    private String apartmentType;
    private String rentalType;
    private Integer floors;
    private String status;
    private Integer isDeleted;

    public ApartmentDTO(Integer id, String name, Double acreage, Double rentalCosts, Integer maxPeople, String description, String apartmentType, String rentalType, Integer floors, String status, Integer isDeleted) {
        this.id = id;
        this.name = name;
        this.acreage = acreage;
        this.rentalCosts = rentalCosts;
        this.maxPeople = maxPeople;
        this.description = description;
        this.apartmentType = apartmentType;
        this.rentalType = rentalType;
        this.floors = floors;
        this.status = status;
        this.isDeleted = isDeleted;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Double getAcreage() {
        return acreage;
    }

    public void setAcreage(Double acreage) {
        this.acreage = acreage;
    }

    public Double getRentalCosts() {
        return rentalCosts;
    }

    public void setRentalCosts(Double rentalCosts) {
        this.rentalCosts = rentalCosts;
    }

    public Integer getMaxPeople() {
        return maxPeople;
    }

    public void setMaxPeople(Integer maxPeople) {
        this.maxPeople = maxPeople;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getApartmentType() {
        return apartmentType;
    }

    public void setApartmentType(String apartmentType) {
        this.apartmentType = apartmentType;
    }

    public String getRentalType() {
        return rentalType;
    }

    public void setRentalType(String rentalType) {
        this.rentalType = rentalType;
    }

    public Integer getFloors() {
        return floors;
    }

    public void setFloors(Integer floors) {
        this.floors = floors;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Integer getIsDeleted() {
        return isDeleted;
    }

    public void setIsDeleted(Integer isDeleted) {
        this.isDeleted = isDeleted;
    }
}
