package com.huaju.control;

import com.github.pagehelper.PageInfo;
import com.huaju.entity.*;
import com.huaju.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RequestMapping(value = "ImgControl")
@Controller
public class ImgControl {

    @Autowired
    private GraphimgService graphimgService;
    @Autowired
    private ArroundimgService arroundimgService;
    @Autowired
    private BuildimgService buildimgService;
    @Autowired
    private ProtoService protoService;
    @Autowired
    private EnvirService envirService;

    @Autowired
    private BuildService buildService;

    @RequestMapping(value = "selectAllImg.action",method = {RequestMethod.POST,RequestMethod.GET})
    public void selectAllCommentByQueryPojoFront(int buildingid,HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<Graph> graphs = graphimgService.selectGraphByBuildingid(buildingid);
        List<Arroundimg> arroundimgs = arroundimgService.selectArroundimgByBuildingid(buildingid);
        List<Buildimg> buildimgs = buildimgService.selectBuildimgByBuildingid(buildingid);
        List<ProtoTypeImg> protoTypeImgs = protoService.selectProtoTypeImgByBuildingid(buildingid);
        List<EnvironmentImg> environmentImgs = envirService.selectEnvironmentimgByBuildingid(buildingid);
        Build build = buildService.selectBuildById(buildingid);
        request.setAttribute("build",build);
        request.setAttribute("graphs",graphs);
        request.setAttribute("arroundimgs",arroundimgs);
        request.setAttribute("buildimgs", buildimgs);
        request.setAttribute("protoTypeImgs",protoTypeImgs);
        request.setAttribute("environmentImgs",environmentImgs);
        request.getRequestDispatcher("/user/fei/img.jsp").forward(request, response);
    }
}
