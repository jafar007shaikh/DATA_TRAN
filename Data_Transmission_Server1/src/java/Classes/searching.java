/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Classes;

import java.util.*;
import java.util.Map.Entry;

/**
 *
 * @author System Web
 */
public class searching {

    static String performance;

    public static String search(String userid, String data,String Algo) {
        double Precision = 0.0, Recall = 0.0;
        double relevent = 0.0, DB = 0.0, A, retrive = 0.0, f_measure = 0.0, C, B = 0.5;
        double t2 = System.currentTimeMillis();
        HashMap<String, Double> hm1 = new HashMap<String, Double>();
        HashMap<String, Double> frequency = new HashMap<String, Double>();
        int i = 0;
        double count2 = 0;
        ArrayList<String> user_file_list = Methods.getfiles(userid,Algo);
        String[] word_list = data.split(" ");
        HashMap<String, HashMap<String, Double>> hm3 = new HashMap<String, HashMap<String, Double>>();
        hm3 = Methods.Find_file(userid);
        for (Entry<String, HashMap<String, Double>> temp : hm3.entrySet()) {
            String filenm = temp.getKey();
            frequency = temp.getValue();
            double count1 = 0;
            for (Map.Entry<String, Double> temp1 : frequency.entrySet()) {
                double freq = temp1.getValue();
                String actual_data = temp1.getKey();
                for (String word : word_list) {
                    String md5 = MD5.getMD5(word);
                    if (md5.equals(actual_data)) {
                        count1 = count1 + freq;
                    }
                }
            }
            System.out.print("file =" + filenm + " : " + count1);
            if (count1 > 0) {
                if (user_file_list.contains(filenm)) {
                    hm1.put(filenm, count1);
                    relevent++;
                }
                count1 = 0;
            }
            DB++;
        }
        for (Map.Entry m : hm1.entrySet()) {
            double occurance = (double) m.getValue();
            for (Map.Entry<String, Double> temp1 : frequency.entrySet()) {
                double freq = temp1.getValue();
                String actual_data = temp1.getKey();
                for (String word : word_list) {
                    String md5 = MD5.getMD5(word);
                    if (md5.equals(actual_data)) {
                        count2 = count2 + freq;
                    }
                }
            }
            retrive++;
            String fname = (String) m.getKey();
        }
        C = retrive + B;
        Precision = (relevent / DB);
        Recall = (relevent / C);
        f_measure = 2 * ((Precision * Recall) / (Precision + Recall));
        double memory = (Runtime.getRuntime().totalMemory() / 1024) - (Runtime.getRuntime().freeMemory() / 1024);
        double time = System.currentTimeMillis() - t2;
        performance = Precision + "\t" + Recall + "\t" + f_measure + "\t" + memory + "\t" + time;
        System.out.println("precision " + Precision + " Recall " + Recall + " f-measure " + f_measure + " time " + time + " Memory " + memory);
        return hm1.toString();
    }

}
