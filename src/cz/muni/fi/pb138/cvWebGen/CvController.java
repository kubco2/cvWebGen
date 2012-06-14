package cz.muni.fi.pb138.cvWebGen;

import cz.muni.fi.pb138.cvWebGen.xml.CvDocument;
import org.apache.xmlbeans.XmlOptions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping(value="/cv")
public class CvController {

//    @Autowired
//    private CvManager cvManager;

    @RequestMapping(value="/create", method= RequestMethod.GET)
    public String getCreateForm(Model model) {
        return "cv/create";
    }

    @RequestMapping(value="/create", method=RequestMethod.POST)
    public String create(ModelMap model, HttpServletRequest request) {

        /* Parse form */

        CvManager cvManager = new CvManager();
        CvDocument doc = cvManager.parseFromHtmlFormRequest(request);
        String xml = doc.xmlText((new XmlOptions()).setSavePrettyPrint());

        System.out.println(xml);

        model.addAttribute("xml", xml);

        return "cv/create-debug";
    }
}
