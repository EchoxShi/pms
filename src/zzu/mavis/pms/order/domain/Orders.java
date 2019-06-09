package zzu.mavis.pms.order.domain;

import zzu.mavis.pms.customer.domain.Customer;
import zzu.mavis.pms.room.domain.Room;

import java.util.Date;

public class Orders {
    private String oid;
    private Customer customer;
    private Room room;
//    private Set<room> roomSet = new HashSet<>();
    private Date dayin;//入住时间
    private Date dayout;//离店时间
    private Double mony;//该订单的金额数
    private int payStatus;//1 代表已完成付款，0 代表未完成付款，
    private int over ;//1 代表该订单已经完成，0代表该订单未完成,默认为0

    public int getOver() {
        return over;
    }

    public void setOver(int over) {
        this.over = over;
    }

    public int getPayStatus() {
        return payStatus;
    }

    public void setPayStatus(int payStatus) {
        this.payStatus = payStatus;
    }

    public String getOid() {
        return oid;
    }

    public void setOid(String oid) {
        this.oid = oid;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public Room getRoom() {
        return room;
    }

    public void setRoom(Room room) {
        this.room = room;
    }
//    public Set<room> getRoomSet() {
//        return roomSet;
//    }
//
//    public void setRoomSet(Set<room> roomSet) {
//        this.roomSet = roomSet;
//    }


    public Date getDayin() {
        return dayin;
    }

    public void setDayin(Date dayin) {
        this.dayin = dayin;
    }

    public Date getDayout() {
        return dayout;
    }

    public void setDayout(Date dayout) {
        this.dayout = dayout;
    }

    public Double getMony() {
        return mony;
    }

    public void setMony(Double mony) {
        this.mony = mony;
    }

}
