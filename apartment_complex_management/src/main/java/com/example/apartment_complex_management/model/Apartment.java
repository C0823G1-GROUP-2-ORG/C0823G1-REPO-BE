package com.example.apartment_complex_management.model;

public class Apartment {
    private Integer id;
    private String name;
    private Double  acreage;
    private Double rentalCosts;
    private Integer maxPeople;
    private String description;
    private Integer idRentalType;
    private Integer idApartmentType;
    private Integer idFloors;
    private String image;
    private String status;
    private Integer isDeleted;

    public Apartment(Integer id, String name, Double acreage, Double rentalCosts, Integer maxPeople, String description,
                     Integer idRentalType, Integer idApartmentType, Integer idFloors, String image, String status, Integer isDeleted) {
        this.id = id;
        this.name = name;
        this.acreage = acreage;
        this.rentalCosts = rentalCosts;
        this.maxPeople = maxPeople;
        this.description = description;
        this.idRentalType = idRentalType;
        this.idApartmentType = idApartmentType;
        this.idFloors = idFloors;
        this.image = image;
        this.status = status;
        this.isDeleted = isDeleted;
    }

    public Apartment(Integer id, String name, Double acreage, Double rentalCosts, Integer maxPeople, String description,
                     Integer idRentalType, Integer idApartmentType, Integer idFloors, String image, String status) {
        this.id = id;
        this.name = name;
        this.acreage = acreage;
        this.rentalCosts = rentalCosts;
        this.maxPeople = maxPeople;
        this.description = description;
        this.idRentalType = idRentalType;
        this.idApartmentType = idApartmentType;
        this.idFloors = idFloors;
        this.image = image;
        this.status = status;
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

    public Integer getIdRentalType() {
        return idRentalType;
    }

    public void setIdRentalType(Integer idRentalType) {
        this.idRentalType = idRentalType;
    }

    public Integer getIdApartmentType() {
        return idApartmentType;
    }

    public void setIdApartmentType(Integer idApartmentType) {
        this.idApartmentType = idApartmentType;
    }

    public Integer getIdFloors() {
        return idFloors;
    }

    public void setIdFloors(Integer idFloors) {
        this.idFloors = idFloors;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
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
