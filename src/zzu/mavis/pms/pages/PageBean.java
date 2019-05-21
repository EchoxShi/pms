package zzu.mavis.pms.pages;

import java.util.List;

public class PageBean<T> {
    //必选项
    //这里尽量不用包装类型 因为 如果忘记赋值的话会 有默认值 null
    private int pageNum;//当前页,当前页
    private int pageSize;//每页的记录数
    private int totalRecord;//这次查出的 总记录数

    //计算项
    private int startIndex;//开始索引，jsp页面上的开始索引
    private int totalPage;// 多种算法：totalPage = （totalRecord+ pageSize -1）/pageSize

    private List<T> data;//分页数据

    public PageBean(int pageNum, int pageSize, int totalRecord) {
        this.pageNum = pageNum;
        this.pageSize = pageSize;
        this.totalRecord = totalRecord;

        //计算
        //开始索引
        this.startIndex = (this.pageNum-1)*this.pageSize;
        //总页数
        this.totalPage= (this.totalRecord + this.pageSize-1)/this.pageSize;
    }
    public int getPageNum() {
        return pageNum;
    }

    public void setPageNum(int pageNum) {
        this.pageNum = pageNum;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getTotalRecord() {
        return totalRecord;
    }

    public void setTotalRecord(int totalRecord) {
        this.totalRecord = totalRecord;
    }

    public int getStartIndex() {
        return startIndex;
    }

    public void setStartIndex(int startIndex) {
        this.startIndex = startIndex;
    }

    public int getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }

    public List<T> getData() {
        return data;
    }

    public void setData(List<T> data) {
        this.data = data;
    }
}
