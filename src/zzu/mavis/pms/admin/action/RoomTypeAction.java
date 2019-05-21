package zzu.mavis.pms.admin.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import zzu.mavis.pms.pages.PageBean;
import zzu.mavis.pms.room.domain.Room;
import zzu.mavis.pms.room.service.RoomService;
import zzu.mavis.pms.roomType.domain.RoomType;
import zzu.mavis.pms.roomType.service.RoomTypeService;

import java.util.List;

public class RoomTypeAction extends ActionSupport implements ModelDriven<RoomType> {
    private RoomType roomType= new RoomType();
    @Override
    public RoomType getModel() {
        return roomType;
    }
    private RoomTypeService roomTypeService;

    public void setRoomTypeService(RoomTypeService roomTypeService) {
        this.roomTypeService = roomTypeService;
    }

    public String  findAll(){
        List<RoomType> roomTypeList = roomTypeService.findAll();
        ActionContext.getContext().getValueStack().set("roomTypeList",roomTypeList);
        return "findAll";
    }

    public String delete(){
        System.out.println(roomType.getRoomTypeId());
        roomTypeService.delete(roomType.getRoomTypeId());
        return "delete";
    }
    public String add(){
        roomTypeService.add(roomType);
        return "add";
    }
}
