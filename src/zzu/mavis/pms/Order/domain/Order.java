package zzu.mavis.pms.Order.domain;

import zzu.mavis.pms.customer.domain.Customer;
import zzu.mavis.pms.Room.domain.Room;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

public class Order {
    private Integer oid;
    private Customer customer;
    private Set<Room> roomSet = new HashSet<>();
    private Date in;//入住时间
    private Date out;//离店时间
    private Double mony;
    private int status;

    public Integer getOid() {
        return oid;
    }

    public void setOid(Integer oid) {
        this.oid = oid;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public Set<Room> getRoomSet() {
        return roomSet;
    }

    public void setRoomSet(Set<Room> roomSet) {
        this.roomSet = roomSet;
    }

    public Date getIn() {
        return in;
    }

    public void setIn(Date in) {
        this.in = in;
    }

    public Date getOut() {
        return out;
    }

    public void setOut(Date out) {
        this.out = out;
    }

    public Double getMony() {
        return mony;
    }

    public void setMony(Double mony) {
        this.mony = mony;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}
