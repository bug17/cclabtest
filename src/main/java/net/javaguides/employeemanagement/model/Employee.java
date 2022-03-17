package net.javaguides.employeemanagement.model;

import java.io.Serializable;


public class Employee implements Serializable {
    /**
     * 
     */
    private static final long serialVersionUID = 1L;
    private String firstName;
    private String lastName;
    private String username;
    private String password;
    private String address;
    private String contact;
    private String jobrole;
    private Integer salaryy;
    private Integer bonus;
    
    
    public String getUsername() {
        return username;
    }
    public void setUsername(String username) {
        this.username = username;
    }
    
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    public String getFirstName() {
        return firstName;
    }
    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }
    public String getLastName() {
        return lastName;
    }
    public void setLastName(String lastName) {
        this.lastName = lastName;
    }
   
   
    public String getAddress() {
        return address;
    }
    public void setAddress(String address) {
        this.address = address;
    }
    public String getContact() {
        return contact;
    }
    public void setContact(String contact) {
        this.contact = contact;
    }
    
    public String getjobrole() {
        return password;
    }
    public void setJob(String jobrole) {
        this.jobrole = jobrole;
    }
    
    public Integer getsalary() {
        return salaryy;
    }
    public void setSalary(Integer salaryy) {
        this.salaryy = salaryy;
    }
    
    public Integer getbonus() {
        return bonus;
    }
    public void setBonus(Integer bonus) {
        this.bonus = bonus;
    }
}