/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Datos;

/**
 *
 * @author JCBOT
 */
public class Routing {

    private String Quantity;
    private String Distance;
    private String Style;

    public Routing(String Quantity, String Distance, String Style) {
        this.Quantity = Quantity;
        this.Distance = Distance;
        this.Style = Style;
    }

    public Routing() {
    }

    public String getQuantity() {
        return Quantity;
    }

    public void setQuantity(String Quantity) {
        this.Quantity = Quantity;
    }

    public String getDistance() {
        return Distance;
    }

    public void setDistance(String Distance) {
        this.Distance = Distance;
    }

    public String getStyle() {
        return Style;
    }

    public void setStyle(String Style) {
        this.Style = Style;
    }

}
