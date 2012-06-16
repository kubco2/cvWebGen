/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package cz.muni.fi.pb138.cvWebGen;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;

/**
 *
 * @author pyty
 */
public class Latex {

    /**
     * Perform transformation based on xml document
     * 
     * @param userName
     * @return path to the PDF
     */
    public String generatePdf(String userName) {
        String baseDir = "/home/pyty/mzj/projects/Latex2/files";
        String pathToSchema = "cv.xsl";
        
           
        TransformerFactory tFactory = TransformerFactory.newInstance();
        try {
            Transformer transformer =
                tFactory.newTransformer(new StreamSource(new File(pathToSchema)));

            transformer.transform(new StreamSource(new File(baseDir + "/xml/" + userName + ".xml")),
                                  new StreamResult(new File(baseDir + "/latex/" + userName + ".tex")));
        
        
            Process p = Runtime.getRuntime().exec("pdflatex -output-directory=" + baseDir + "/pdf -interaction=batchmode " + baseDir + "/latex/" + userName + ".tex");
            p.waitFor();
            BufferedReader reader = new BufferedReader(new InputStreamReader(p.getInputStream()));
            String line = reader.readLine();
            while (line != null) {
                //System.out.println(line);
                line = reader.readLine();
            }
            
            

        } catch (IOException e) {
            e.printStackTrace();
        } catch (InterruptedException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return baseDir + "/pdf/" + userName + ".pdf";
    }
}
