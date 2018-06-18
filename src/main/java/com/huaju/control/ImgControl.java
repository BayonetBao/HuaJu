package com.huaju.control;

import com.huaju.entity.*;
import com.huaju.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;

@RequestMapping("/Img")
@Controller
public class ImgControl {

    @Autowired
    private GraphimgService graphimgService;

    @Autowired
    private BuildimgService buildimgService;

    @Autowired
    private ArroundimgService arroundimgService;

    @Autowired
    private ProtoService protoService;

    @Autowired
    private EnvirService envirService;

    @Autowired
    private BuildService buildService;
    @RequestMapping(value = "/selectimg.action",method = RequestMethod.GET)
    public void selectImg(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //判断id是否为空,如果为空,id=1,如果不为空,用传进来的值
            String buildid = request.getParameter("id");

        List<Graph> graphs = graphimgService.AllGraph(Integer.parseInt(buildid));
        List<Buildimg> buildimgs = buildimgService.AllBuildimg(Integer.parseInt(buildid));
        List<Arroundimg> arroundimgs = arroundimgService.AllArroundimg(Integer.parseInt(buildid));
        List<ProtoTypeImg> protoTypeImgs = protoService.AllPrototypeimg(Integer.parseInt(buildid));
        List<EnvironmentImg> environmentImgs = envirService.AllEnvironmentimg(Integer.parseInt(buildid));
        //List<Build> builds = buildService.selectBuildQueryPojo(request.getSession());

        request.setAttribute("graphs",graphs);
        request.setAttribute("buildimgs",buildimgs);
        request.setAttribute("arroundimgs",arroundimgs);
        request.setAttribute("protoTypeImgs",protoTypeImgs);
        request.setAttribute("environmentImgs",environmentImgs);
        //request.setAttribute("builds",builds);

        request.getRequestDispatcher("/developer/imgList.jsp").forward(request,response);

    }
    @RequestMapping(value = "/addGraph.action",method = RequestMethod.POST)
    public void AddGraph(@RequestParam(value="myfiles")MultipartFile[] files,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
        if(files!=null && files.length>0){
            for (int i = 0; i < files.length; i++) {
                MultipartFile file = files[i];
                // �����ļ�
                saveFile(request, file);
            }
        }

        request.getRequestDispatcher("/developer/imgList.jsp").forward(request,response);

    }
    @RequestMapping(value = "/addBuildimg.action",method = RequestMethod.POST)
    public void AddBuildimg(HttpServletRequest request,HttpServletResponse response){

    }
    @RequestMapping(value = "/addArround.action",method = RequestMethod.POST)
    public void AddArroundimg(HttpServletRequest request,HttpServletResponse response){

    }
    @RequestMapping(value = "/addProto.action",method = RequestMethod.POST)
    public void AddPrototypeimg(HttpServletRequest request,HttpServletResponse response){

    }
    @RequestMapping(value = "/addEnvironment.action",method = RequestMethod.POST)
    public void AddEnvironmentimg(HttpServletRequest request,HttpServletResponse response){

    }
//    @RequestMapping(value = "/add.action",method = RequestMethod.POST)
//    public void addContent(@RequestParam(value="myfiles")MultipartFile[] files, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        if(files!=null && files.length>0){
//            for (int i = 0; i < files.length; i++) {
//                MultipartFile file = files[i];
//                // �����ļ�
//                saveFile(request, file);
//            }
//        }
//
//
//
//        request.getRequestDispatcher("/developer/imgList.jsp").forward(request,response);
//
//    }

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
//				City city = new City();
//
//
//				cityServic.CityImg(city);
//				Country country = new Country();
//				country.setImg(uploadPath+"/"+file.getOriginalFilename());
//
//				countryService.CountryImg(country);
                //request.getSession().getAttribute("buildid");
                Graph graph = new Graph();

                graph.setGraphurl(uploadPath+"/"+file.getOriginalFilename());
                graphimgService.AddGraph(graph);


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
}
