package com.huaju.control;

import com.huaju.service.AllUserService;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class CompanyControl {
    private AllUserService  allUserService;
    @RequestMapping
    public void selectCompanyById(){

    }
}
