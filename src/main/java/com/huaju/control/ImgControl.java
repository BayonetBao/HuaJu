package com.huaju.control;

import com.huaju.entity.*;
import com.huaju.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
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
    public void AddGraph(HttpServletRequest request,HttpServletResponse response){
        String buildid = request.getParameter("id");



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
}
