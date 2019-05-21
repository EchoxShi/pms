package zzu.mavis.pms.admin.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import org.apache.struts2.ServletActionContext;
import zzu.mavis.pms.pages.PageBean;
import zzu.mavis.pms.room.domain.Room;
import zzu.mavis.pms.room.service.RoomService;
import zzu.mavis.pms.roomType.domain.RoomType;
import zzu.mavis.pms.roomType.service.RoomTypeService;

import java.io.*;
import java.util.Date;
import java.util.List;

public class RoomAction extends ActionSupport implements ModelDriven<Room> {
    private File myfile;//上传的文件的file对象，由拦截器自动填充
    private  String myfileFileName;//上传文件名，由拦截器自动填充
    private String myfileContentType;//上传文件类型，由拦截器自动填充
    private String savePath;//上传文件路径，通过action中配置参数获取、、要不要直接用room的picPATH呢
//得到页面上传过来的 房间类型ID
    private  String roomTypeId;


    public void setRoomTypeId(String roomTypeId) {
        this.roomTypeId = roomTypeId;
    }

    private Room room= new Room();
    @Override
    public Room getModel() {
        return room;
    }
    //分页数据，提供默认值，页面传的有的话可以被覆盖，没的话就用默认值
    private int pageNum = 1;
    public void setPageNum(int pageNum) {
        this.pageNum = pageNum;
    }
    private int pageSize = 5;
    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }
   private RoomTypeService roomTypeService;

    public void setRoomTypeService(RoomTypeService roomTypeService) {
        this.roomTypeService = roomTypeService;
    }

    private RoomService roomService;

    public void setRoomService(RoomService roomService) {
        this.roomService = roomService;
    }

    public File getMyfile() {
        return myfile;
    }

    public void setMyfile(File myfile) {
        this.myfile = myfile;
    }

    public String getMyfileFileName() {
        return myfileFileName;
    }

    public void setMyfileFileName(String myfileFileName) {
        this.myfileFileName = myfileFileName;
    }

    public String getMyfileContentType() {
        return myfileContentType;
    }

    public void setMyfileContentType(String myfileContentType) {
        this.myfileContentType = myfileContentType;
    }

    public String getSavePath() {
        return savePath;
    }

    public void setSavePath(String savePath) {
        this.savePath = savePath;
    }

    public String findAllRoom(){
        PageBean<Room> pageBean = roomService.findAllTP(pageNum, pageSize);
        System.out.println(pageBean.getTotalRecord()+"总记录数");
        System.out.println(pageBean.getData().size());
        ActionContext.getContext().getValueStack().set("pageBean",pageBean);
        return "findAllRoom";
    }
     public  String deleteByRoomId(){
        roomService.deleteByRoomId(room.getRoomId());
        return "deleteByRoomId";
     }
    public void pic() throws IOException {
        //上传的文件将换名保存
        String newFileName;
        //得到自1970年1月1日0时0分0秒开始至今流失的毫秒数，将这个毫秒数作为新文件的文件名
        long now = (new Date()).getTime();
        //取得保存上传文件的目录的真实路径
        savePath="upfile";
        String realPath = ServletActionContext.getServletContext().getRealPath(savePath);
        File dir= new File(realPath);//并没有在磁盘上创建一个对象或目录，只是一个虚拟的File对象
        //如果目录不存在，则创建它（用于保存你上传的文件）
        if(!dir.exists()){
            dir.mkdirs();
        }
        //取上传文件的最后一个.的位置
        int index=myfileFileName.lastIndexOf('.');
        //设置新的文件名
        //文件名是包含后缀的
        if(index!=-1){
            newFileName=now+myfileFileName.substring(index);
        }else{
            newFileName=Long.toString(now);
        }
        //设置保存在数据库中的图片路径
        room.setPicPath(savePath+"\\"+newFileName);
        //一下代码用于读取临时目录下的文件，保存到新的文件中
        //创建数据输入流，用于读取源文件
        FileInputStream fis=new FileInputStream(myfile);
        //创建数据输出流用于保存新文件
        FileOutputStream fos=new FileOutputStream(new File(realPath,newFileName));
        //设置读取缓冲区
        byte[] buffer =new byte[4096];
        int len=-1;
        //len=fis.read(buffer),从输入流读取缓冲区大小的数据到缓冲区，返回实际读取的字节数
        //如果读到文件结尾，则返回-1
        while ((len=fis.read(buffer))!=-1){
            //将缓冲区的数据写到输出流，从缓冲数组第一个元素开始，写len个字节
            fos.write(buffer,0,len);
        }
        //刷新缓冲区
        fos.flush();
        //关闭输入输出流
        fos.close();
        fis.close();
    }

     public String  add() throws IOException {

        pic();
         //根据ID查出这个房间类型，然后保存到room中
         RoomType roomType = roomTypeService.findById(roomTypeId);
         room.setRoomType(roomType);
         roomService.add(room);
        return "add";
     }

     public String  UIadd(){
         List<RoomType> roomTypeList = roomTypeService.findAll();
         ActionContext.getContext().getValueStack().set("roomTypeList",roomTypeList);
         return "UIadd";
     }
    public String  UIupdate(){
        List<RoomType> roomTypeList = roomTypeService.findAll();
        ActionContext.getContext().getValueStack().set("roomTypeList",roomTypeList);
        Room room1 = roomService.findByRoomId(room.getRoomId());
        ActionContext.getContext().getValueStack().push(room1);
        return "UIupdate";
    }

   public String  update() throws IOException {
        pic();
       //根据ID查出这个房间类型，然后保存到room中
       RoomType roomType = roomTypeService.findById(roomTypeId);
       room.setRoomType(roomType);
        roomService.update(room);
        return "update";
   }
}
