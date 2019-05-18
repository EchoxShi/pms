package zzu.mavis.pms.roomType.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import zzu.mavis.pms.roomType.domain.RoomType;
import zzu.mavis.pms.roomType.service.RoomTypeService;

import java.util.List;

public class RoomTypeAction extends ActionSupport implements ModelDriven<RoomType> {
    private RoomTypeService roomTypeService;

    public void setRoomTypeService(RoomTypeService roomTypeService) {
        this.roomTypeService = roomTypeService;
    }

    private RoomType roomType= new RoomType();
    @Override
    public RoomType getModel() {
        return null;
    }

    //查询所用分类，用于login显示
    public void findAll(){
        List<RoomType> roomTypeList = roomTypeService.findAll();
        ActionContext.getContext().getValueStack().set("roomTypeList",roomTypeList);
    }


}
