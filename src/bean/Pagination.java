package bean;

import java.util.ArrayList;
import java.util.List;

import entity.Diary;

public class Pagination {
	public List<Diary> list = null;
	private int recordCount = 0;//保存记录总数
	private int pagesize = 0;//每页显示的记录数
	private int maxPage=0;//最大页数
	//初始化分页信息
	public List<Diary> getInitPage(List<Diary> list,int page,int pagesize){
		List<Diary> newList = new ArrayList<Diary>();
		this.list = list;
		recordCount = list.size();
		this.pagesize = pagesize;
		this.maxPage = getMaxPage();
		for (int i = (page-1)+pagesize; i <= page+pagesize-1; i++) {
			if (i>=recordCount) {
				break;
			}
			newList.add(list.get(i));
		}
		return newList;
	}
	//获取指定页数据
	public List<Diary> getAppointPage(int page){
		List<Diary> newList = new ArrayList<Diary>();
		for (int i = (page-1)*pagesize; i < page*pagesize-1; i++) {
			if (i>=recordCount) {
				break;
			}
			newList.add(list.get(i));
		}
		return newList;
	}
	//获取最大页数
	public int getMaxPage() {
		maxPage = (recordCount % pagesize == 0) ? (recordCount/pagesize) : (recordCount/pagesize+1);
		return maxPage;
	}
	public int getRecordSize(){
		return recordCount;
	}
	//获取页数
	public int getPage(String str){
		if (str==null) {
			str ="0";
		}
		int page = Integer.parseInt(str);
		if(page<1){
			page = 1;
		}else {
			if (((page-1)*pagesize+1)>recordCount) {
				page = maxPage;
			}
		}
		return page;
	}
	//输出记录
	public String printCtrl(int page,String url,String para){
		String strHtml = "<table width='100%' border='0' cellspacing='0' cellpadding='0'><tr> <td height='24' align='right'>当前页数：【"+page+"/"+maxPage+"】&nbsp";
		if (page > 1) {
			strHtml = strHtml + "<a herf='"+url+"&page=1"+para+"'>第一页</a>";
			strHtml = strHtml + "<a herf='"+url+"&page="+(page-1)+para+"'>上一页</a>";
		}
		if (page < maxPage) {
			strHtml = strHtml + "<a herf='"+url+"&page="+(page+1)+para+"'>下一页</a> <a href='"+url+"&page="+maxPage+para+"'>最后一页&nbsp;</a>";
		}
		strHtml = strHtml + "</td> </tr>  </table>";
		return strHtml;
	}
}
