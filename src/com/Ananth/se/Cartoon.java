package com.Ananth.se;
import org.jsoup.Jsoup;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import java.awt.Image;
import java.net.URL;
import javax.imageio.ImageIO;
import javax.swing.ImageIcon;
import javax.swing.JFrame;
import javax.swing.JLabel;


import com.gargoylesoftware.htmlunit.*;
import com.gargoylesoftware.htmlunit.html.HtmlPage;
import org.openqa.selenium.htmlunit.HtmlUnitDriver;


import java.io.IOException;
import java.net.MalformedURLException;
import java.util.ArrayList;


public class Cartoon {

    public ArrayList<String> imageList;
    public ArrayList<String> nameList;
    public String link;
    public String body;
    public int num;

    public Cartoon(String link) {
        imageList = new ArrayList<>();
        nameList = new ArrayList<>();
        this.link = link;
        num = 0;
    }

    public static void main(String[] args) throws FailingHttpStatusCodeException, MalformedURLException, IOException {
        Cartoon a = new Cartoon("https://politicalcartoons.com/?s=cold+war");
        System.out.println(a.intialRun());
        //System.out.println(a.num);
        //for(int i = 0; i < a.num; i++)
        //System.out.println(a.imageList.get(i));

    }


    public String intialRun() throws FailingHttpStatusCodeException, MalformedURLException, IOException {
        WebClient webClient = new WebClient(BrowserVersion.CHROME);
        webClient.getOptions().setJavaScriptEnabled(true);
        HtmlPage firstPage = webClient.getPage(link);
        String firstPageContent = firstPage.asXml();
        //System.out.println(firstPageContent);
        this.body = firstPage.asXml();
        System.out.println(body);



        //System.out.println(check);
        //System.out.println(body);
        //System.out.println(check);
        //String a = "";

        for(int i = 0; i < 15; i++){
            String check = firstPageContent.substring(firstPageContent.indexOf("https://cloudinary.cagle.com/image/upload/"), firstPageContent.indexOf("https://cloudinary.cagle.com/image/upload/")+200);
            check = check.substring(0,check.indexOf(".png")+4);
            String name = firstPageContent.substring(firstPageContent.indexOf("alt=")+5, firstPageContent.indexOf("alt=")+200);
            name = name.substring(0, name.indexOf("/>")-1);
            firstPageContent = firstPageContent.replaceFirst("https://cloudinary.cagle.com/image/upload/", "");
            firstPageContent = firstPageContent.replaceFirst("alt=","");

            imageList.add(check);
            nameList.add(name);
            //System.out.println(imageList.get(i));
            System.out.println(nameList.get(i));
        }
        return "";
    }

    public String secondRun(int num) throws FailingHttpStatusCodeException, MalformedURLException, IOException {

        /*WebClient webClient = new WebClient(BrowserVersion.CHROME);
        webClient.getOptions().setJavaScriptEnabled(true);
        HtmlPage firstPage = webClient.getPage(link);

        WebDriver browser = new HtmlUnitDriver();
        browser.close();*/
        return nameList.get(num) + "\n" + "";
        //String rV="";

        //browser.close();
        //String pageContent = "";

        //System.out.println(resources[i]);
        //System.out.println(resources[i]);
        //browser.get(imageList.get(i)); UNCOMMENT THIS AFTER CHECK

            /*Image image = null;
            try {

                URL url = new URL(imageList.get(i));
                image = ImageIO.read(url);
            } catch (IOException e) {
                e.printStackTrace();
            }

            JFrame frame = new JFrame();
            frame.setSize(300, 30000);
            JLabel label = new JLabel(new ImageIcon(image));
            frame.add(label);
            frame.setVisible(true);
        }*/
        //rV+=html2text(browser.getPageSource());
            /*Page out = new Page(browser.findElement(By.tagName("body")).getText());
            rV+=out.seperate();;
            rV+="\n\n";
            rV+="--------------------------------------------------------------------------------------------------------------";
            rV+="\n";
            rV+="\n";
            //System.out.println("-------------------------------------------------------")*/

    }

    public void checkInt(String check, String main) {
        try {
            // checking valid integer using parseInt() method
            num = Integer.parseInt(check);
            //System.out.println(input1 + " is a valid integer number");
        } catch (NumberFormatException e) {

            main = main.replaceFirst(" of ", "");
            check = main.substring(main.indexOf(" of ") - 2, main.indexOf(" of "));
            checkInt(check, main);

        }
    }
}
