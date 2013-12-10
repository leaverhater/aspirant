package ru.bmstu.aspirant;

import org.apache.commons.io.FileUtils;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;


/**
 * Created with IntelliJ IDEA.
 * User: vadya
 * Date: 18.03.13
 * Time: 1:18
 * To change this template use File | Settings | File Templates.
 */
public class CatDocx {

    public static void concatDocx() {

        // Files to read
        String templateFolderPath = "/home/vadya/Templates/";
        String sumString = null;
        Properties prop1 = new Properties();
        Properties prop2 = new Properties();
        Properties prop3 = new Properties();
        Properties prop4 = new Properties();
        Properties prop5 = new Properties();
        Properties prop6 = new Properties();
        Properties prop7 = new Properties();

        String tmpstr = new String();
        String time = new String();
        Table table1;
        Table table2;
        Table table3;
        int rowsNum1;
        int rowsNum2;
        int rowsNum3;

        try {
            //load a properties file
            prop1.load(new FileInputStream("/home/vadya/content1.properties"));
            prop2.load(new FileInputStream("/home/vadya/content2.properties"));
            prop3.load(new FileInputStream("/home/vadya/content3.properties"));
            time = prop1.getProperty("time");
            prop4.load(new FileInputStream("/home/vadya/content4.properties"));
            prop5.load(new FileInputStream("/home/vadya/content5.properties"));
            prop6.load(new FileInputStream("/home/vadya/content6.properties"));
            rowsNum1 = Integer.parseInt(prop4.getProperty("rowsNum"));
            rowsNum2 = Integer.parseInt(prop4.getProperty("rowsNum"));
            rowsNum3 = Integer.parseInt(prop4.getProperty("rowsNum"));
            table1 = new Table(rowsNum1, 1);
            table2 = new Table(rowsNum2, 2);
            table3 = new Table(rowsNum3, 3);
//            sumString = FileUtils.readFileToString(new File(templateFolderPath + "beforeTable.txt"));
//            sumString += table.getTable();
//            sumString += FileUtils.readFileToString(new File(templateFolderPath + "afterTable.txt"));
            //get the property value and print it out
            sumString = FileUtils.readFileToString(new File(templateFolderPath + "00name"));
            tmpstr = prop1.getProperty("name");
            sumString += tmpstr;
            sumString += FileUtils.readFileToString(new File(templateFolderPath + "01form"));
            tmpstr = prop1.getProperty("form");
            sumString += tmpstr;
            sumString += FileUtils.readFileToString(new File(templateFolderPath + "02dep"));
            tmpstr = prop1.getProperty("dep");
            sumString += tmpstr;
            sumString += FileUtils.readFileToString(new File(templateFolderPath + "03fullDep"));
            tmpstr = prop1.getProperty("fullDep");
            sumString += tmpstr;
            sumString += FileUtils.readFileToString(new File(templateFolderPath + "04spec"));
            tmpstr = prop1.getProperty("spec");
            sumString += tmpstr;
            sumString += FileUtils.readFileToString(new File(templateFolderPath + "05time"));
            sumString += time;
            sumString += FileUtils.readFileToString(new File(templateFolderPath + "06manager"));
            tmpstr = prop1.getProperty("manager");
            sumString += tmpstr;
            sumString += FileUtils.readFileToString(new File(templateFolderPath + "07consult"));
            tmpstr = prop1.getProperty("consult");
            sumString += tmpstr;
            sumString += FileUtils.readFileToString(new File(templateFolderPath + "08start"));
            tmpstr = prop1.getProperty("start");
            sumString += tmpstr;
            sumString += FileUtils.readFileToString(new File(templateFolderPath + "09end"));
            tmpstr = prop1.getProperty("end");
            sumString += tmpstr;
            sumString += FileUtils.readFileToString(new File(templateFolderPath + "10theme"));
            tmpstr = prop2.getProperty("theme");
            sumString += tmpstr;
            sumString += FileUtils.readFileToString(new File(templateFolderPath + "11topicality"));
            tmpstr = prop2.getProperty("topicality");
            sumString += tmpstr;
            sumString += FileUtils.readFileToString(new File(templateFolderPath + "12goal"));
            tmpstr = prop2.getProperty("goal");
            sumString += tmpstr;
            sumString += FileUtils.readFileToString(new File(templateFolderPath + "13newness"));
            tmpstr = prop2.getProperty("newness");
            sumString += tmpstr;
            sumString += FileUtils.readFileToString(new File(templateFolderPath + "14value"));
            tmpstr = prop2.getProperty("value");
            sumString += tmpstr;
            sumString += FileUtils.readFileToString(new File(templateFolderPath + "15realization"));
            tmpstr = prop2.getProperty("realization");
            sumString += tmpstr;
            sumString += FileUtils.readFileToString(new File(templateFolderPath + "16publication"));
            tmpstr = prop2.getProperty("publication");
            sumString += tmpstr;
            sumString += FileUtils.readFileToString(new File(templateFolderPath + "17head"));
            tmpstr = prop2.getProperty("head");
            sumString += tmpstr;
            sumString += FileUtils.readFileToString(new File(templateFolderPath + "18manager"));
            tmpstr = prop2.getProperty("manager");
            sumString += tmpstr;
            sumString += FileUtils.readFileToString(new File(templateFolderPath + "19remark"));
            tmpstr = prop3.getProperty("remark");
            sumString += tmpstr;
            sumString += FileUtils.readFileToString(new File(templateFolderPath + "20expert"));
            tmpstr = prop3.getProperty("expert");
            sumString += tmpstr;
            if (time.equals("3 года")) {
                sumString += FileUtils.readFileToString(new File(templateFolderPath + "21head3"));
            } else {
                sumString += FileUtils.readFileToString(new File(templateFolderPath + "21head4"));
            }
            tmpstr = prop2.getProperty("head");
            sumString += tmpstr;
            sumString += FileUtils.readFileToString(new File(templateFolderPath + "22manager"));
            tmpstr = prop1.getProperty("manager");
            sumString += tmpstr;
            sumString += FileUtils.readFileToString(new File(templateFolderPath + "23aspirant"));
            tmpstr = prop1.getProperty("name");
            sumString += tmpstr;
            sumString += FileUtils.readFileToString(new File(templateFolderPath + "24head"));
            tmpstr = prop2.getProperty("head");
            sumString += tmpstr;
            sumString += FileUtils.readFileToString(new File(templateFolderPath + "25manager"));
            tmpstr = prop1.getProperty("manager");
            sumString += tmpstr;
            sumString += FileUtils.readFileToString(new File(templateFolderPath + "26aspirant"));
            tmpstr = prop1.getProperty("name");
            sumString += tmpstr;
            sumString += FileUtils.readFileToString(new File(templateFolderPath + "27head"));
            tmpstr = prop2.getProperty("head");
            sumString += tmpstr;
            sumString += FileUtils.readFileToString(new File(templateFolderPath + "28manager"));
            tmpstr = prop1.getProperty("manager");
            sumString += tmpstr;
            sumString += FileUtils.readFileToString(new File(templateFolderPath + "29aspirant"));
            tmpstr = prop1.getProperty("name");
            sumString += tmpstr;
            if (!time.equals("3 года")) {
                sumString += FileUtils.readFileToString(new File(templateFolderPath + "30head"));
                tmpstr = prop2.getProperty("head");
                sumString += tmpstr;
                sumString += FileUtils.readFileToString(new File(templateFolderPath + "31manager"));
                tmpstr = prop1.getProperty("manager");
                sumString += tmpstr;
                sumString += FileUtils.readFileToString(new File(templateFolderPath + "32aspirant"));
                tmpstr = prop1.getProperty("name");
                sumString += tmpstr;
            }
            sumString += FileUtils.readFileToString(new File(templateFolderPath + "33table1"));
            sumString += table1.getTable();
            sumString += FileUtils.readFileToString(new File(templateFolderPath + "34table2"));
            sumString += table2.getTable();
            sumString += FileUtils.readFileToString(new File(templateFolderPath + "35table3"));
            sumString += table3.getTable();
            if (!time.equals("3 года")) {
                prop7.load(new FileInputStream("/home/vadya/content7.properties"));
                Table table4 = new Table(Integer.parseInt(prop7.getProperty("rowsNum")), 4);
                sumString += FileUtils.readFileToString(new File(templateFolderPath + "36table4"));
                sumString += table4.getTable();
            }
            sumString += FileUtils.readFileToString(new File(templateFolderPath + "37dep"));
            tmpstr = prop1.getProperty("dep");
            sumString += tmpstr;
            sumString += FileUtils.readFileToString(new File(templateFolderPath + "38name"));
            tmpstr = prop1.getProperty("name");
            sumString += tmpstr;
            sumString += FileUtils.readFileToString(new File(templateFolderPath + "39form"));
            tmpstr = prop1.getProperty("form");
            sumString += tmpstr;
            sumString += FileUtils.readFileToString(new File(templateFolderPath + "40manager"));
            tmpstr = prop1.getProperty("manager");
            sumString += tmpstr;
            sumString += FileUtils.readFileToString(new File(templateFolderPath + "41theme"));
            tmpstr = prop2.getProperty("theme");
            sumString += tmpstr;
            sumString += FileUtils.readFileToString(new File(templateFolderPath + "42topicality"));
            tmpstr = prop2.getProperty("topicality");
            sumString += tmpstr;
            sumString += FileUtils.readFileToString(new File(templateFolderPath + "43goal"));
            tmpstr = prop2.getProperty("goal");
            sumString += tmpstr;
            sumString += FileUtils.readFileToString(new File(templateFolderPath + "44newness"));
            tmpstr = prop2.getProperty("newness");
            sumString += tmpstr;
            sumString += FileUtils.readFileToString(new File(templateFolderPath + "45value"));
            tmpstr = prop2.getProperty("value");
            sumString += tmpstr;
            sumString += FileUtils.readFileToString(new File(templateFolderPath + "46realization"));
            tmpstr = prop2.getProperty("realization");
            sumString += tmpstr;
            sumString += FileUtils.readFileToString(new File(templateFolderPath + "47publication"));
            tmpstr = prop2.getProperty("publication");
            sumString += tmpstr;
            sumString += FileUtils.readFileToString(new File(templateFolderPath + "48otherPublic"));
            tmpstr = prop1.getProperty("name");
            sumString += tmpstr;
            sumString += FileUtils.readFileToString(new File(templateFolderPath + "49uchSovet"));
            tmpstr = prop1.getProperty("name");
            sumString += tmpstr;
            sumString += FileUtils.readFileToString(new File(templateFolderPath + "50predZasch"));
            tmpstr = prop1.getProperty("name");
            sumString += tmpstr;
            sumString += FileUtils.readFileToString(new File(templateFolderPath + "51sdacha"));
            tmpstr = prop1.getProperty("name");
            sumString += tmpstr;
            sumString += FileUtils.readFileToString(new File(templateFolderPath + "52reasons"));
            tmpstr = prop1.getProperty("name");
            sumString += tmpstr;
            sumString += FileUtils.readFileToString(new File(templateFolderPath + "53addition"));
            tmpstr = prop1.getProperty("name");
            sumString += tmpstr;
            sumString += FileUtils.readFileToString(new File(templateFolderPath + "99end"));
        } catch (IOException ex) {
            ex.printStackTrace();
        }


// File to write
        File file = new File("/home/vadya/example/word/document.xml");

// Read the file like string

        try {
            // Write the file
            FileUtils.writeStringToFile(file, sumString);
        } catch (IOException e) {
            e.printStackTrace();  //To change body of catch statement use File | Settings | File Templates.
        }


    }
}
