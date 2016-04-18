/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leapfrog.jobs.entity;

import java.io.BufferedReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 *
 * @author priyankar
 */
public class JobsNepalFileWriter {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
      //        String mlink = "http://www.merojob.com/search-new/index.php?search=&category=0";
//        String jlink = "http://www.jobsnepal.com";
        StringBuilder builder = new StringBuilder();

        try (FileWriter writer = new FileWriter("merojobs.txt")) {
            String content = readURL("http://www.jobsnepal.com/simple-job-search");
            String regex = "<a class=\"job-item\" id=(.*?)href=(.*?)>(.*?)</a>(.*?)<a href=(.*?)class=\"joblist\">(.*?)</a>(.*?)<td class=\"center\" >(.*?)</td>(.*?)<span title=(.*?)>(.*?)</span>";
            Pattern pattern = Pattern.compile(regex);
            Matcher matcher = pattern.matcher(content);

            while (matcher.find()) {
                System.out.println(matcher.group(1));
                //builder.append(matcher.group(1));
                //builder.append("\r\n");
                //builder.append(m atcher.group(5));      
//                 System.out.println("Job title:"+matcher.group(3).trim() + "\nCompany:"+matcher.group(6).trim()+"\nWeb Site:"+matcher.group(5)+"\nJob Type:"+matcher.group(8).trim()+"\nDeadline:"+matcher.group(11).trim());
//            System.out.println("--------------------------------------------------------------------------------------------------------------");
                writer.write("=======================================================================" + "\r\n");
                writer.write("job title: " + matcher.group(3).trim() + "\r\n");
                writer.write("job url: " + matcher.group(5) + "\r\n");
                writer.write("Company: " + matcher.group(6).trim() + "\r\n");
                writer.write("job type: " + matcher.group(8).trim() + "\r\n");
                writer.write("Deadline: " + matcher.group(11).trim() + "\r\n");
//                writer.write(matcher.group(9).trim() + "\r\n");
//                writer.write(matcher.group(10).trim() + "\r\n");
                writer.write("=======================================================================" + "\r\n");

                writer.flush();
            }
            writer.close();
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
//        Grabber grabber = new Grabber(mlink);
    }

    public static String readURL(String link) throws MalformedURLException, IOException {
        URL url = new URL(link);
        BufferedReader reader = new BufferedReader(new InputStreamReader(url.openStream()));
        String line = "";
        StringBuilder builder = new StringBuilder();
        while ((line = reader.readLine()) != null) {
            builder.append(line);
        }
        reader.close();
        return builder.toString();
    }
    }
    

