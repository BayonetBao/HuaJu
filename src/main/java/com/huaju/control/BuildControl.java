package com.huaju.control;

import com.github.pagehelper.PageInfo;
import com.huaju.entity.*;
import com.huaju.entity.Build;
import com.huaju.entity.BuildQueryPojo;
import com.huaju.entity.Company;
import com.huaju.service.BuildService;
import com.huaju.service.BuildTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RequestMapping(value = "/build")
@RestController
public class BuildControl {
    @Autowired
    private BuildService buildService;
//    分页按条件查询楼盘 并查询开发商list对象返回前端jsp 等等 珂
    @Autowired
    private BuildTypeService buildTypeService;
    @RequestMapping(value = "/selectBuildQueryPojo.action",method = {RequestMethod.GET,RequestMethod.POST})
    public void selectBuildQueryPojo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         BuildQueryPojo buildQueryPojo=new BuildQueryPojo();
         Map<String,Object> cmap=new HashMap<>();
         List<Company> companies=buildService.selectCompanyInBuild();
         String province=request.getParameter("province");
         String city=request.getParameter("city");
         String district=request.getParameter("district");
         String comid=request.getParameter("comid");
         String typeid=request.getParameter("typeid");
         String character=request.getParameter("character");
         String genre=request.getParameter("genre");
         String bTotalprice=request.getParameter("bTotalprice");
         String bPerprice=request.getParameter("bPerprice");
         String acreage=request.getParameter("acreage");
        if (province != null && !province.trim().equals("")) {
            buildQueryPojo.setProvince(province);
        }
        if (character != null && !character.trim().equals("")) {
            buildQueryPojo.setCharacter(character);
        }
        if (genre != null && !genre.trim().equals("")) {
            buildQueryPojo.setGenre(genre);
        }
        if (city != null && !province.trim().equals("")) {
            buildQueryPojo.setCity(city);
        }
        if (district != null && !district.trim().equals("")) {
            buildQueryPojo.setDistrict(district);
        }
        if (comid != null && !comid.trim().equals("")) {
            buildQueryPojo.setComid(new Integer(comid));
        }
        if (typeid != null && !typeid.trim().equals("")) {
            buildQueryPojo.setTypeid(new Integer(typeid));
        }
        if (bTotalprice != null && !bTotalprice.trim().equals("")) {
            buildQueryPojo.setbTotalprice(new Double(bTotalprice.split("-")[0]));
            buildQueryPojo.setbMaxTotalprice(new Double(bTotalprice.split("-")[1]));
        }
        if (bPerprice != null && !bPerprice.trim().equals("")) {
            buildQueryPojo.setbPerprice(new Double(bPerprice.split("-")[0]));
            buildQueryPojo.setbMaxprice(new Double(bPerprice.split("-")[1]));
        }
        if (acreage != null && !acreage.trim().equals("")) {
            buildQueryPojo.setAcreage(new Double(acreage.split("-")[0]));
            buildQueryPojo.setMaxAcreage(new Double(acreage.split("-")[1]));
        }
        cmap.put("buildQueryPojo",buildQueryPojo);
        int curPage = 1;
        int pageSize = 7;
        String scurPage = request.getParameter("curPage");
        if (scurPage != null && !scurPage.trim().equals("")) {
            curPage = Integer.parseInt(scurPage);
        }
        cmap.put("pageSize", pageSize);
        cmap.put("curPage",curPage);
        PageInfo<Build> pageInfo = buildService.selectBuildQueryPojo(cmap);
        request.setAttribute("pageInfo", pageInfo);
        request.setAttribute("companies",companies);
        request.setAttribute("buildQueryPojo",buildQueryPojo);
        request.getRequestDispatcher("/user/ke/queryBuild.jsp").forward(request,response);
    }

    @RequestMapping(value = "/addBuild.action",method = {RequestMethod.POST,RequestMethod.GET})
    public void addBuild(Build build, MultipartFile bpicture1, HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String imagesTotalPath="developer/images/addbuildinfo";
        String imageFile=request.getServletContext().getRealPath(imagesTotalPath);
        String imageName=System.currentTimeMillis()+bpicture1.getOriginalFilename();
        String filename=imageFile+"/"+imageName;
       String image=imagesTotalPath+"/"+imageName;
        File file=new File(filename);
        if(!file.exists()){
            file.mkdirs();
        }else {
            file.delete();
            file.mkdirs();
        }
        bpicture1.transferTo(file );
        //build.setBpicture(imagesTotalPath+"/"+image);
        System.out.println(build.getEndtime());
        build.setBpicture(image);
        if(buildService.setBuild(build)) {
            response.sendRedirect(request.getContextPath()+"/build/showBuildInfo.action");
        }


    }
    @RequestMapping(value = "/showBuildInfo.action",method = RequestMethod.GET)
    public void lpList(String scurPage, HttpSession session, String building, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Company company= (Company) session.getAttribute("user");
        Integer comid=company.getComid();
        ComidAndBuildName condition=new ComidAndBuildName();
        condition.setComid(comid);
        condition.setBuilding(building);
        //         将查询的条件和分页的内容封装成map
        Map<String ,Object> buildmap=new HashMap<>();
        buildmap.put("condition",condition);
        //每页显示的条数
        int pageSize=5;
        //当前的页面默认是首页
        int curPage=1;
        if (scurPage!=null&&!scurPage.trim().equals("")){
            curPage=Integer.parseInt(scurPage);
        }
        buildmap.put("curPage",curPage);
//           每页显示的条数
        buildmap.put("pageSize",pageSize);
        PageInfo<Build> pageInfo=buildService.selectBuildListByCompanyId(buildmap);
        //根据开发商获取其下所有楼盘
        List<Build> buildList=pageInfo.getList();
        //建立楼盘户型的集合
        Map<Integer,List<BuildType>> typeCountsMap=new HashMap<>();

       // List<List<BuildType>> typeCountsList=new ArrayList<>();

        for(Build build:buildList){
            //获得单个楼盘下的户型集合
            List<BuildType> buildTypes=new ArrayList<>();
            buildTypes=buildTypeService.selectTypeCount(build.getBuildingid());
            //获取楼盘集合下的所有户型
            typeCountsMap.put(build.getBuildingid(),buildTypes);
            //typeCountsList.add(buildTypes);
        }
        request.setAttribute("typeCountsMap",typeCountsMap);
        request.setAttribute("pageInfo",pageInfo);
        request.setAttribute("building",building);
        request.getRequestDispatcher("/developer/lpInfo.jsp").forward(request,response);
    }
    @RequestMapping(value = "/deletBuild.action")
    public String deletBuild(String buildingid){
        if(buildService.deleteBuildById(Integer.parseInt(buildingid))){
            return "1";

        }
        return "0";
    }
    @RequestMapping(value = "/selectBuildById.action")
    public void selectBuildById(String buildingid,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        Build build=buildService.selectBuildById(Integer.parseInt(buildingid));
        if(build!=null){
            List<BuildType> buildTypes=buildTypeService.selectTypeCount(Integer.parseInt(buildingid));
            request.setAttribute("buildTypes",buildTypes);
            request.setAttribute("build",build);
            request.getRequestDispatcher("/developer/buildDetailInfo.jsp").forward(request,response);
        }
    }
    @RequestMapping(value = "/updateBuildAllInfo.action",method = RequestMethod.POST)
    public void updateBuildBasicInfo(String updateType,Build build,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {

        if("1".equals(updateType)){
        if (buildService.updateBuildBasicInfo(build)){
            request.setAttribute("upState","success");
            request.getRequestDispatcher("/build/selectBuildById.action").forward(request,response);
        }
    }else if("2".equals(updateType)){
        if (buildService.updateBuildSaleInfo(build)){
            request.setAttribute("upState","success");
            request.getRequestDispatcher("/build/selectBuildById.action").forward(request,response);
        }
    }else if("3".equals(updateType)){
        if (buildService.updateBuildSpaceInfo(build)){
            request.setAttribute("upState","success");
            request.getRequestDispatcher("/build/selectBuildById.action").forward(request,response);
        }
    }
    }
}
