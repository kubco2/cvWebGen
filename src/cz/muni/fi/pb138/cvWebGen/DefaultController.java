package cz.muni.fi.pb138.cvWebGen;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/")
public class DefaultController {

//    @Autowired
//    private CvManager cvManager;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String homepage(ModelMap model) {
        model.addAttribute("recentPublicCvs", null);
        return "default/homepage";
    }

    @RequestMapping(value = "/about", method = RequestMethod.GET)
    public String about(ModelMap model) {
        return "default/about";
    }

}
