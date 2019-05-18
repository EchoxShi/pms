package zzu.mavis.pms.room.domain;

import zzu.mavis.pms.order.domain.Orders;
import zzu.mavis.pms.roomType.domain.RoomType;

import java.util.HashSet;
import java.util.Set;

public class Room {
    private String roomId;
    private String roomNum;//房间号
    private String roomName;//房间名字
    private String remark;//描述
    private Double pricePerNight;//每晚价格
    private String picPath;//图片路径

    //一个房间可以属于多个 order 但是 order 的日期一定不同；
    private Set<Orders> ordersSet =new HashSet<>();

    private int status;//状态：0代表已被预订，1代表尚未被预定
//    多对一  对个房间 对 一个类型
    private RoomType roomType;

    public String getPicPath() {
        return picPath;
    }

    public String getRoomNum() {
        return roomNum;
    }

    public void setRoomNum(String roomNum) {
        this.roomNum = roomNum;
    }

    public void setPicPath(String picPath) {
        this.picPath = picPath;
    }

    public String getRoomId() {
        return roomId;
    }

    public void setRoomId(String roomId) {
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

    public Set<Orders> getOrdersSet() {
        return ordersSet;
    }

    public void setOrdersSet(Set<Orders> ordersSet) {
        this.ordersSet = ordersSet;
    }

    @Override
    public String toString() {
        return "room{" +
                "roomId=" + roomId +
                ", roomNum='" + roomNum + '\'' +
                ", roomName='" + roomName + '\'' +
                ", remark='" + remark + '\'' +
                ", pricePerNight=" + pricePerNight +
                ", picPath='" + picPath + '\'' +
                ", status=" + status +
                ", roomType=" + roomType +
                '}';
    }
}
