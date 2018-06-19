package com.huaju.control;

import com.github.pagehelper.PageInfo;
import com.huaju.dao.BuildMapper;
import com.huaju.dao.ProtoTypeImgMapper;
import com.huaju.entity.*;
import com.huaju.service.ProtoService;
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

@RequestMapping(value = "/ProtoType")
@Controller
public class ProtoTypeControl {

    @Autowired
    private ProtoService protoService;

    @Autowired
    private ProtoTypeImgMapper protoTypeImgMapper;

    @Autowired
    private BuildMapper buildMapper;

    @RequestMapping(value = "/selectAllProtoTypeByQueryPojo.action",method = {RequestMethod.POST,RequestMethod.GET})
    public void selectAllProtoTypeByQueryPojo(HttpSession session, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ImgQueryPojo imgQueryPojo = new ImgQueryPojo();
        Company com= (Company) session.getAttribute("user");
        imgQueryPojo.setComid(com.getComid());
        List<Build> blist=protoService.selectBuildInProtoTypeImg(com.getComid());
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
        PageInfo<ProtoTypeImg> pageInfo = protoService.selectprototypeimgByBuild(cmap);
        request.setAttribute("blist",blist);
        request.setAttribute("pageInfo",pageInfo);
        request.setAttribute("imgQueryPojo",imgQueryPojo);
        request.getRequestDispatcher("/developer/protoList.jsp").forward(request,response);
//        PageInfo<Dynamic> pageInfo = dynamicService.selectDynamicByBuild(cmap);
//        request.setAttribute("blist",blist);
//        request.setAttribute("pageInfo", pageInfo);
//        request.setAttribute("dynamicQueryPojo",dynamicQueryPojo);
//        request.getRequestDispatcher("/developer/dynamicList.jsp").forward(request, response);
    }
    @RequestMapping(value = "/selectProtoTypeByBuild.action",method = {RequestMethod.POST,RequestMethod.GET})
    public void selectProtoTypeByBuild(ImgQueryPojo imgQueryPojo,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        imgQueryPojo.setBuildingid(imgQueryPojo.getBuildingid());
        List<ProtoTypeImg> protoTypeImgs=protoTypeImgMapper.SelectAllPrototypeimg(imgQueryPojo);
        request.setAttribute("protoTypeImgs",protoTypeImgs);
        request.getRequestDispatcher("/user/ke/dynamic.jsp").forward(request,response);
    }
    @RequestMapping(value = "/insertProtoTypeBefore.action",method = {RequestMethod.POST,RequestMethod.GET})
    public void insertProtoTypeBefore(HttpSession session,HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Company com= (Company) session.getAttribute("user");
        BuildQueryPojo buildQueryPojo=new BuildQueryPojo();
        buildQueryPojo.setComid(com.getComid());
        List<Build> blist=buildMapper.selectBuildQueryPojo(buildQueryPojo);
        request.setAttribute("blist",blist);
        request.getRequestDispatcher("/developer/AddProto.jsp").forward(request,response);
    }
    @RequestMapping(value = "/insertProtoTypeAfter.action",method = {RequestMethod.POST,RequestMethod.GET})
    public void insertProtoTypeAfter(@RequestParam(value="myfiles")MultipartFile[] files, Dynamic dynamic, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, ParseException {
        if(files!=null && files.length>0){
            for (int i = 0; i < files.length; i++) {
                MultipartFile file = files[i];
                // �����ļ�
                saveFile(request, file);
            }
        }
        request.getRequestDispatcher("/ProtoType/selectAllProtoTypeByQueryPojo.action").forward(request,response);
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
                ProtoTypeImg protoTypeImg = new ProtoTypeImg();
                String build = request.getParameter("buildingid");
                protoTypeImg.setBuildingid(Integer.valueOf(build));
                protoTypeImg.setPrototype(uploadPath+"/"+file.getOriginalFilename());
                protoService.addPrototypeimg(protoTypeImg);
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
    @RequestMapping(value = "/deleteProtoTypeById.action",method = {RequestMethod.POST,RequestMethod.GET})
    public String deletePrototypeById(HttpServletRequest request,HttpServletResponse response){
        Integer id=Integer.parseInt(request.getParameter("id"));
        String result;
        if(protoService.delectPrototypeimg(id)) {
            result= "success";
        }else{
            result= "error";
        }
        return result;
    }
}
