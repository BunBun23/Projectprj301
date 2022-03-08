/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author a
 */
public class Vaccine {

    private int id;
    private String name;
    private float price;
    private String origin;
    private String detail;
    private String image;

    public Vaccine() {
    }

    public Vaccine(int id, String name, float price, String origin, String detail, String image) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.origin = origin;
        this.detail = detail;
        this.image = image;
    }

    public Vaccine(String name, float price, String origin, String detail, String image) {
        this.name = name;
        this.price = price;
        this.origin = origin;
        this.detail = detail;
        this.image = image;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public String getOrigin() {
        return origin;
    }

    public void setOrigin(String origin) {
        this.origin = origin;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    @Override
    public String toString() {
        return "Vaccine{" + "id=" + id + ", name=" + name + ", price=" + price + ", origin=" + origin + ", detail=" + detail + ", image=" + image + '}';
    }

}
