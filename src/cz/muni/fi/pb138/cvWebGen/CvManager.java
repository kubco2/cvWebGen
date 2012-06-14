package cz.muni.fi.pb138.cvWebGen;

import cz.muni.fi.pb138.cvWebGen.xml.CvDocument;
import cz.muni.fi.pb138.cvWebGen.xml.PersonalType;

import javax.servlet.http.HttpServletRequest;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;

public class CvManager {

    public CvDocument parseFromHtmlFormRequest(HttpServletRequest request) {

        /* Build document */
        CvDocument cvDocument = CvDocument.Factory.newInstance();
        CvDocument.Cv cv = cvDocument.addNewCv();

        /* Personal */
        /************/
        PersonalType personal = cv.addNewPersonal();
        /* firstName */
        if (!request.getParameter("personal-firstName").isEmpty()) {
            personal.setFirstName(request.getParameter("personal-firstName"));
        }
        /* middleName */
        if (!request.getParameter("personal-middleName").isEmpty()) {
            personal.setMiddleName(request.getParameter("personal-middleName"));
        }
        /* lastName */
        if (!request.getParameter("personal-lastName").isEmpty()) {
            personal.setLastName(request.getParameter("personal-lastName"));
        }
        /* dateofbirth */
        if (!request.getParameter("personal-dateofbirth").isEmpty()) {
            Calendar cal = Calendar.getInstance();
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd");
            try {
                cal.setTime(sdf.parse(request.getParameter("personal-dateofbirth")));
            } catch (ParseException e) {
                e.printStackTrace();
            }
            personal.setDateofbirth(cal);
        }
        /* gender */
        if (request.getParameter("personal-gender") == "male") {
            personal.setGender(PersonalType.Gender.MALE);
        } else {
            personal.setGender(PersonalType.Gender.FEMALE);
        }
        /* nationality */
        if (!request.getParameter("personal-nationality").isEmpty()) {
            personal.setNationality(request.getParameter("personal-nationality"));
        }

        return cvDocument;

    }
}
