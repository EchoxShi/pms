package zzu.mavis.pms.room.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import zzu.mavis.pms.room.domain.Room;
import zzu.mavis.pms.room.service.RoomService;
import zzu.mavis.pms.roomType.domain.RoomType;
import zzu.mavis.pms.roomType.service.RoomTypeService;

import java.util.List;

public class RoomAction extends ActionSupport implements ModelDriven<Room> {

//    private File pic;
//    private String picFileName;
//    private String picContentType;

    private RoomService roomService;

    public void setRoomService(RoomService roomService) {
        this.roomService = roomService;
    }

    private RoomTypeService roomTypeService;

    public void setRoomTypeService(RoomTypeService roomTypeService) {
        this.roomTypeService = roomTypeService;
    }
    private Room room= new Room();
    @Override
    public Room getModel() {
        return room;
    }

//    public File getPic() {
//        return pic;
//    }
//
//    public void setPic(File pic) {
//        this.pic = pic;
//    }
//
//    public String getPicFileName() {
//        return picFileName;
//    }
//
//    public void setPicFileName(String picFileName) {
//        this.picFileName = picFileName;
//    }
//
//    public String getPicContentType() {
//        return picContentType;
//    }
//
//    public void setPicContentType(String picContentType) {
//        this.picContentType = picContentType;
//    }

    public void findAll(){
        List<Room> roomList = roomService.findAll();
        if(roomList.size()>0){
            ActionContext.getContext().getValueStack().set("roomList",roomList);
        }else {
            addActionMessage("暂无数据，敬请期待");
        }
    }
    public String findById(){
        List<Room> roomListById = roomService.findById(room.getRoomType().getRoomTypeId());
        ActionContext.getContext().getValueStack().set("roomList",roomListById);

        List<RoomType> roomTypeList = roomTypeService.findAll();
        if(roomTypeList.size()>0){
            ActionContext.getContext().getValueStack().set("roomTypeList",roomTypeList);
        }else {
            addActionMessage("暂无数据，敬请期待");
        }
        return "findById";
    }
    public String findRoomById(){
        Room room1 = roomService.findByRoomId(this.room.getRoomId());
        ActionContext.getContext().put("room", room1);
        return "findRoomById";
    }
    public String UIPreserve(){
        ActionContext.getContext().getValueStack().
                push(ActionContext.getContext().getSession().get("byName"));
        Room room2 = roomService.findByRoomId(this.room.getRoomId());
        ActionContext.getContext().put("room", room2);
        return "UIPreserve";

    }
}
