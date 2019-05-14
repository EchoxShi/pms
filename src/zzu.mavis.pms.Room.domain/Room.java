package zzu.mavis.pms.Room.domain;

import zzu.mavis.pms.customer.domain.Customer;
import zzu.mavis.pms.RoomType.domain.RoomType;

public class Room {
    private Integer roomId;
    private String roomName;
    private String remark;//描述
    private Double pricePerNight;
    private int status;//状态：0代表已被预订，1代表尚未被预定
//    多对一  对个房间 对 一个类型
    private RoomType roomType;
//    多对一 多个房间  对 一个顾客
    private Customer customer;

    public Integer getRoomId() {
        return roomId;
    }

    public void setRoomId(Integer roomId) {
        this.roomId = roomId;
    }

    public String getRoomName() {
        return roomName;
    }

    public void setRoomName(String roomName) {
        this.roomName = roomName;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public Double getPricePerNight() {
        return pricePerNight;
    }

    public void setPricePerNight(Double pricePerNight) {
        this.pricePerNight = pricePerNight;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public RoomType getRoomType() {
        return roomType;
    }

    public void setRoomType(RoomType roomType) {
        this.roomType = roomType;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    @Override
    public String toString() {
        return "Room{" +
                "roomId=" + roomId +
                ", roomName='" + roomName + '\'' +
                ", remark='" + remark + '\'' +
                ", pricePerNight=" + pricePerNight +
                ", status=" + status +
                ", roomType=" + roomType +
                ", customer=" + customer +
                '}';
    }
}
