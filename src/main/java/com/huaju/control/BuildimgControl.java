package com.huaju.control;

import com.github.pagehelper.PageInfo;
import com.huaju.dao.BuildMapper;
import com.huaju.dao.BuildimgMapper;
import com.huaju.entity.*;
import com.huaju.service.BuildimgService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.ParseException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RequestMapping(value = "/Buildimg")
@Controller
public class BuildimgControl {

    @Autowired
    private BuildimgService buildimgService;

    @Autowired
    private BuildimgMapper buildimgMapper;
    @Autowired
    private BuildMapper buildMapper;
    @RequestMapping(value = "/selectAllBuildimgByQueryPojo.action",method = {RequestMethod.POST,RequestMethod.GET})
    public void selectAllBuildimgByQueryPojo(HttpSession session, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ImgQueryPojo imgQueryPojo = new ImgQueryPojo();
        Company com= (Company) session.getAttribute("user");
        imgQueryPojo.setComid(com.getComid());
        List<Build> blist=buildimgService.selectBuildInBuildimg(com.getComid());
        Map<String, Object> cmap=new HashMap<>();
        String scurPage = request.getParameter("curPage");
        String id = request.getParameter("buildingid");
        if (id != null && !id.trim().equals("")) {
            Integer buildid = new Integer(id);
            imgQueryPojo.setBuildingid(buildid);
            //dynamicQueryPojo.setBuildingid(buildid);
        }
        cmap.put("imgQueryPojo",imgQueryPojo);
        //cmap.put("dynamicQueryPojo",dynamicQueryPojo);
        int pageSize = 5;
        //当前的页面默认是首页
        int curPage = 1;

        if (scurPage != null && !scurPage.trim().equals("")) {
            curPage = Integer.parseInt(scurPage);
        }
        cmap.put("pageSize", pageSize);
        cmap.put("curPage",curPage);
        PageInfo<Buildimg> pageInfo = buildimgService.selectBuildimgByBuild(cmap);
        request.setAttribute("blist",blist);
        request.setAttribute("pageInfo",pageInfo);
        request.setAttribute("imgQueryPojo",imgQueryPojo);
        request.getRequestDispatcher("/developer/buildimgList.jsp").forward(request,response);
//        PageInfo<Dynamic> pageInfo = dynamicService.selectDynamicByBuild(cmap);
//        request.setAttribute("blist",blist);
//        request.setAttribute("pageInfo", pageInfo);
//        request.setAttribute("dynamicQueryPojo",dynamicQueryPojo);
//        request.getRequestDispatcher("/developer/dynamicList.jsp").forward(request, response);
    }
    @RequestMapping(value = "/selectBuildimgByBuild.action",method = {RequestMethod.POST,RequestMethod.GET})
    public void selectBuildimgByBuild(ImgQueryPojo imgQueryPojo,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        imgQueryPojo.setBuildingid(imgQueryPojo.getBuildingid());
        List<Buildimg> buildimgs=buildimgMapper.SelectAllBuildimg(imgQueryPojo);
        request.setAttribute("buildimgs",buildimgs);
        request.getRequestDispatcher("/user/ke/dynamic.jsp").forward(request,response);
    }
    @RequestMapping(value = "/insertBuildimgBefore.action",method = {RequestMethod.POST,RequestMethod.GET})
    public void insertBuildimgBefore(HttpSession session,HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Company com= (Company) session.getAttribute("user");
        BuildQueryPojo buildQueryPojo=new BuildQueryPojo();
        buildQueryPojo.setComid(com.getComid());
        List<Build> blist=buildMapper.selectBuildQueryPojo(buildQueryPojo);
        request.setAttribute("blist",blist);
        request.getRequestDispatcher("/developer/AddBuildimg.jsp").forward(request,response);
    }
    @RequestMapping(value = "/insertBuildimgAfter.action",method = {RequestMethod.POST,RequestMethod.GET})
    public void insertBuildimgAfter(@RequestParam(value="myfiles")MultipartFile[] files, Dynamic dynamic, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, ParseException {
        if(files!=null && files.length>0){
            for (int i = 0; i < files.length; i++) {
                MultipartFile file = files[i];

                saveFile(request, file);
            }
        }
        request.getRequestDispatcher("/Buildimg/selectAllBuildimgByQueryPojo.action").forward(request,response);
    }
    private void saveFile(HttpServletRequest request, MultipartFile file) {
        InputStream is = null;
        OutputStream os = null;
        if(!file.isEmpty()){
            try {
                is = file.getInputStream();

                String uploadPath="/img";
                String realUploadPath=request.getSession().getServletContext().getRealPath(uploadPath);

                String des = realUploadPath+ "/"+file.getOriginalFilename();
                //uploadPah+file.getOriginalFilename();
                Buildimg buildimg = new Buildimg();
                String build = request.getParameter("buildingid");
                buildimg.setBuildingid(Integer.valueOf(build));
                buildimg.setBuildimg(uploadPath+"/"+file.getOriginalFilename());
                buildimgService.AddBuildimg(buildimg);


                //http://localhost:8080/xiangmu/uploadPath+file.getOriginalFilename();
                System.err.println(des);
                os = new FileOutputStream(des);
                byte[] buffer = new byte[1024];
                int len = 0;

                while((len = is.read(buffer))>0){
                    os.write(buffer);
                }

            } catch (Exception e) {
                e.getStackTrace();
            }finally{
                if(is!=null){
                    try{
                        is.close();
                    }catch (Exception e2){
                        e2.printStackTrace();
                    }finally{
                        if(os!=null){
                            try{
                                os.close();
                            }catch (Exception e2){
                                e2.printStackTrace();
                            }
                        }
                    }
                }

            }

        }
    }
    @RequestMapping(value = "/deleteBuildimgById.action",method = {RequestMethod.POST,RequestMethod.GET})
    public String deleteBuildimgById(HttpServletRequest request,HttpServletResponse response){
        Integer id=Integer.parseInt(request.getParameter("id"));
        String result;
        if(buildimgService.deleteBuildimg(id)) {
            result= "success";
        }else{
            result= "error";
        }
        return result;
    }
}
