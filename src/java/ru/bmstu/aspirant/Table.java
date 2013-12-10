package ru.bmstu.aspirant;

import org.apache.commons.io.FileUtils;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;

/**
 * Created with IntelliJ IDEA.
 * User: vadya
 * Date: 20.05.13
 * Time: 15:04
 * To change this template use File | Settings | File Templates.
 */
public class Table {
    private int rowNum;
    private int colNum = 3;
    private int id;
    private String data[][];
    public Table(int rowNum, int id) {
        this.rowNum = rowNum;
        this.id = id;
        this.data = new String[rowNum][colNum];
    }
    private void setData(int row, int column, String value) {
        data[row][column] = value;
    }
    public String getTable() {
        String sumString = new String();
        Properties prop4 = new Properties();
        String templateFolderPath = "/home/vadya/Templates/";
        try {
            prop4.load(new FileInputStream("/home/vadya/content"+(3+id)+".properties"));
            sumString = FileUtils.readFileToString(new File(templateFolderPath + "tableBegin.txt"));
            for (int i = 0; i < rowNum; i++) {
                    sumString += prop4.getProperty("index" + (i+1));;
                    sumString += FileUtils.readFileToString(new File(templateFolderPath + "after1col.txt"));
                    sumString += prop4.getProperty("discipline" + (i+1));
                    sumString += FileUtils.readFileToString(new File(templateFolderPath + "after2col.txt"));
                    sumString += prop4.getProperty("time" + (i+1));
                    if (i == rowNum - 1) {
                        sumString += FileUtils.readFileToString(new File(templateFolderPath + "tableEnd.txt"));
                    } else {
                        sumString += FileUtils.readFileToString(new File(templateFolderPath + "btwRows.txt"));
                    }
            }
        } catch (IOException e) {
            e.printStackTrace();  //To change body of catch statement use File | Settings | File Templates.
        }
        return sumString;
    }

}
