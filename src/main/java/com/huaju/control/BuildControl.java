package com.huaju.control;

import com.github.pagehelper.PageInfo;
import com.huaju.entity.Build;
import com.huaju.entity.BuildQueryPojo;
import com.huaju.entity.Company;
import com.huaju.service.BuildService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RequestMapping(value = "/build")
@RestController
public class BuildControl {
    @Autowired
    private BuildService buildService;
//    分页按条件查询楼盘 并查询开发商list对象返回前端jsp 等等 珂
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
        String filename=bpicture1.getOriginalFilename()+System.currentTimeMillis();
        String image=imageFile+"/"+filename;
        File file=new File(image);
        if(!file.exists()){
            file.mkdirs();
        }else {
            file.delete();
            file.mkdirs();
        }
        bpicture1.transferTo(file );
        build.setBpicture(imagesTotalPath+"/"+image);
        System.out.println(build.getEndtime());
        if(buildService.setBuild(build))
        request.getRequestDispatcher("/developer/lpInfo.jsp").forward(request,response);

    }
}
