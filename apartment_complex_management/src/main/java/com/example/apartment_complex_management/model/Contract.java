package com.example.apartment_complex_management.model;

public class Contract {
    private Integer id;
    private String contractDate;
    private String contractEndDate;
    private Integer deposit;
    private Integer idCustomer;
    private Integer idStaff;
    private Integer idApartment;
    private Integer isDeleted;

    public Contract(Integer id, String contractDate, String contractEndDate, Integer deposit, Integer idCustomer,
                    Integer idStaff, Integer idApartment, Integer isDeleted) {
        this.id = id;
        this.contractDate = contractDate;
        this.contractEndDate = contractEndDate;
        this.deposit = deposit;
        this.idCustomer = idCustomer;
        this.idStaff = idStaff;
        this.idApartment = idApartment;
        this.isDeleted = isDeleted;
    }

    public Contract(Integer id, String contractDate, String contractEndDate, Integer deposit, Integer idCustomer,
                    Integer idStaff, Integer idApartment) {
        this.id = id;
        this.contractDate = contractDate;
        this.contractEndDate = contractEndDate;
        this.deposit = deposit;
        this.idCustomer = idCustomer;
        this.idStaff = idStaff;
        this.idApartment = idApartment;
    }

    public Contract(String contractDate, String contractEndDate, Integer deposit, Integer idCustomer, Integer idStaff, Integer idApartment) {
        this.contractDate = contractDate;
        this.contractEndDate = contractEndDate;
        this.deposit = deposit;
        this.idCustomer = idCustomer;
        this.idStaff = idStaff;
        this.idApartment = idApartment;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getContractDate() {
        return contractDate;
    }

    public void setContractDate(String contractDate) {
        this.contractDate = contractDate;
    }

    public String getContractEndDate() {
        return contractEndDate;
    }

    public void setContractEndDate(String contractEndDate) {
        this.contractEndDate = contractEndDate;
    }

    public Integer getDeposit() {
        return deposit;
    }

    public void setDeposit(Integer deposit) {
        this.deposit = deposit;
    }

    public Integer getIdCustomer() {
        return idCustomer;
    }

    public void setIdCustomer(Integer idCustomer) {
        this.idCustomer = idCustomer;
    }

    public Integer getIdStaff() {
        return idStaff;
    }

    public void setIdStaff(Integer idStaff) {
        this.idStaff = idStaff;
    }

    public Integer getIdApartment() {
        return idApartment;
    }

    public void setIdApartment(Integer idApartment) {
        this.idApartment = idApartment;
    }

    public Integer getIsDeleted() {
        return isDeleted;
    }

    public void setIsDeleted(Integer isDeleted) {
        this.isDeleted = isDeleted;
    }
}
