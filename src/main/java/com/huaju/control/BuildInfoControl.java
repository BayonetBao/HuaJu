package com.huaju.control;

import com.huaju.entity.Build;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@RestController
public class BuildInfoControl {

    @RequestMapping(value = "/addBuild.action",method = {RequestMethod.POST,RequestMethod.GET})
    public void addBuild(Build build, MultipartFile bpicture1, HttpServletRequest request, HttpServletResponse response){


    }
}
