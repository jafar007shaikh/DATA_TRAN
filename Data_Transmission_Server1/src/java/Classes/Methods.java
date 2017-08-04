/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Classes;

import com.mycompany.data_transmission_using_tpa.KeygenerationService_Service;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import org.apache.poi.openxml4j.opc.OPCPackage;
import org.apache.poi.xslf.extractor.XSLFPowerPointExtractor;
import org.apache.poi.xwpf.extractor.XWPFWordExtractor;
import org.apache.poi.xwpf.usermodel.XWPFDocument;
import org.apache.tika.metadata.Metadata;
import org.apache.tika.parser.pdf.PDFParser;
import org.apache.tika.sax.BodyContentHandler;
import org.jsoup.Jsoup;
import org.xml.sax.ContentHandler;

/**
 *
 * @author System Web
 */
public class Methods {

    public static HashMap<String, StringBuffer> hasData = new HashMap<String, StringBuffer>();
    public static HashMap<String, StringBuffer> hasData2 = new HashMap<String, StringBuffer>();
    public static HashMap<String, StringBuffer> hasData3 = new HashMap<String, StringBuffer>();
    public static HashMap<String, TreeMap<String, Double>> hasToken = new HashMap<String, TreeMap<String, Double>>();

    /**
     *
     * @return
     */
    public static Connection getconnect() {
        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://127.11.243.2:3306/datatransmission1", "adminCtg8ceE", "HqnFVhtiF6Y_");//two
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return con;
    }

    /**
     *
     * @param userid
     * @param Algo
     * @return
     */
    public static ArrayList<String> getfiles(String userid, String Algo) {
        ArrayList<String> file_list = new ArrayList<>();
        try {
//            Class.forName("com.mysql.jdbc.Driver");
//            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/online", "root", "1212");;
//            System.out.println("connected");
            Connection con = getconnect();
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select filename from upload_data where userid='" + userid + "' and Algo='" + Algo + "'");
            while (rs.next()) {
                if (!file_list.contains(rs.getString(1))) {
                    file_list.add(rs.getString(1));
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return file_list;
    }

    /**
     *
     * @param path
     * @return
     * @throws IOException
     */
    public static StringBuffer getdatafromHTML2(String path) throws IOException {
        FileReader reader = new FileReader(new File(path));
        StringBuilder sb = new StringBuilder();
        BufferedReader br = new BufferedReader(reader);
        String line;
        while ((line = br.readLine()) != null) {
            sb.append(line);
        }
        String textOnly = Jsoup.parse(sb.toString()).text();
        return new StringBuffer(textOnly);

    }

    /**
     *
     * @param path
     * @return
     */
    public static StringBuffer getdataPDF(String path) {

        StringBuffer sb = null;
        try {
            sb = new StringBuffer();
            FileReader reader = new FileReader(new File(path));
            BufferedReader br = new BufferedReader(reader);
            String line;
            InputStream input = new FileInputStream(new File(path));
            ContentHandler textHandler = new BodyContentHandler();
            Metadata metadata = new Metadata();
            PDFParser parser = new PDFParser();
            parser.parse(input, textHandler, metadata);
            input.close();
            sb.append(textHandler.toString());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return sb;

    }

    /**
     *
     * @param path
     * @return
     */
    public static StringBuffer getdataDOC(String path) {

        StringBuffer sb = null;
        try {
            sb = new StringBuffer();
            String line;

            XWPFDocument docx = new XWPFDocument(new FileInputStream(new File(path)));
            XWPFWordExtractor we = new XWPFWordExtractor(docx);
//            System.out.println(we.getText());

            sb.append(we.getText());

        } catch (Exception e) {

            e.printStackTrace();
        }
        return sb;

    }

    /**
     *
     * @param pptx
     * @return
     */
    public static StringBuffer ppFileContentParser(OPCPackage pptx) {

        StringBuffer sb = new StringBuffer();

        try {

            XSLFPowerPointExtractor xw = new XSLFPowerPointExtractor(pptx);
//        System.out.println(xw.getText());
            sb.append(xw.getText());
        } catch (Exception exx) {
            exx.printStackTrace();
        }

        return sb;

    }

    /**
     *
     * @param path
     * @param file
     * @param userid
     * @return
     */
    public static boolean DoProcess(String path, String file, String userid) {
        boolean save = false;
        try {
//            Class.forName("com.mysql.jdbc.Driver");
//            Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/online", "root", "1212");
            Connection con1 = getconnect();
            Statement st1 = con1.createStatement();
            System.out.print("database connected");
            // st1.execute("truncate table data_table");
            con1.close();

            File f = new File(path);
            // String[] files = f.list();
            int i = 0;
            // while (i < file.length) {
            File ff = new File(path + File.separator + "web" + File.separator + "FILES" + File.separator + file);
            if (ff.isFile()) {
                StringBuffer sb = null;
                StringBuffer sb1 = null;
                StringBuffer sb2 = null;
                String extension = ff.getAbsolutePath().substring(ff.getAbsolutePath().lastIndexOf("."));
                if (extension.equals(".txt") || extension.equals(".html")) {
                    sb = getdatafromHTML2(ff.getAbsolutePath());
                }
                if (extension.equals(".docx") || extension.equals(".doc")) {
                    sb = getdataDOC(ff.getAbsolutePath());
                }
                if (extension.equals(".pdf")) {
                    sb = getdataPDF(ff.getAbsolutePath());
                }
                if (extension.equals(".ppt") || extension.equals(".pptx")) {
                    OPCPackage d = OPCPackage.open(ff.getAbsolutePath());
                    sb = ppFileContentParser(d);
                }
                hasData.put(file, sb);

                sb1 = remStopword(sb, path + "\\web\\");

                hasData2.put(file, sb1);

                sb2 = remSpecial(sb1, path + "\\web\\");

                hasData3.put(file, sb2);
                TreeMap<String, Double> has = getFrequency(sb2);
                hasToken.put(file, has);
                int j = 0;
                for (Map.Entry<String, Double> entrySet : has.entrySet()) {
                    if (j > 50) {
                        break;
                    }
                    String key = entrySet.getKey();
                    Double value = entrySet.getValue();
                    Connection con2 = getconnect();
                    Statement st = con2.createStatement();
                    System.out.print("database connected");
                    st.execute("insert into data_table(token,frequency,file,userid) values(MD5('" + key + "'),'" + value + "','" + file + "','" + userid + "')");
                    con2.close();
                    save = true;
                    j++;
                }
            }
            i++;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return save;
    }

    /**
     *
     * @param sb
     * @return
     */
    public static TreeMap<String, Double> getFrequency(StringBuffer sb) {
        HashMap<String, Double> has = new HashMap<String, Double>();

        ValueComparator bvc = new ValueComparator(has);
        try {
            while (sb.toString().contains("  ")) {
                sb = new StringBuffer(sb.toString().replace("  ", " "));
            }
            String[] str = sb.toString().split(" ");
            int i = 0;
            while (i < str.length) {
                String s = str[i];
                s = s.replace('"', ' ');
                s = s.replace("\t", "");
                s = s.replace("\n", "");
                s = s.replace(".", "");
                s = s.replace(",", "");
                s = s.replace("!", "");
                s = s.replace(" ", "");
                s = s.replace("'", "");
                s = s.trim();
                s = s.toLowerCase();
                if (s.length() > 1) {
                    if (has.containsKey(s)) {
                        double d = has.get(s);
                        d++;
                        has.put(s, d);
                    } else {
                        has.put(s, 1.0);
                    }
                }
                i++;
            }

        } catch (Exception ex) {
            ex.printStackTrace();
        }
        TreeMap<String, Double> tmap = new TreeMap<>(bvc);
        tmap.putAll(has);
        return tmap;
    }

    /**
     *
     * @param sb
     * @return
     */
    public static LinkedHashMap<String, Double> getFrequencyQuery(StringBuffer sb) {
        LinkedHashMap<String, Double> has = new LinkedHashMap<String, Double>();
        try {
            while (sb.toString().contains("  ")) {
                sb = new StringBuffer(sb.toString().replace("  ", " "));
            }
            String[] str = sb.toString().split(" ");
            int i = 0;
            while (i < str.length) {

                String s = str[i];

                s = s.replace('"', ' ');
                s = s.replace("\t", "");
                s = s.replace("\n", "");
                s = s.replace(".", "");
                s = s.replace(",", "");
                s = s.replace("!", "");
                s = s.replace(" ", "");
                s = s.replace("'", "");

                s = s.trim();
                s = s.toLowerCase();
                if (s.length() > 1) {
                    if (has.containsKey(s)) {
                        double d = has.get(s);
                        d++;
                        has.put(s, d);
                    } else {
                        has.put(s, 1.0);
                    }
                }
                i++;
            }

        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return has;
    }

    /**
     *
     * @param t
     * @param path
     * @return
     */
    public static StringBuffer remStopword(StringBuffer t, String path) {
        StringBuffer sb = getData(path + "\\STOP.txt");
        String[] str = sb.toString().split("\n");
//        int i = 0;
//        while (i < str.length) {
//            t = new StringBuffer(t.toString().replace(str[i], ""));
//            i++;
//        }
//        sb = UtilityClass.getData(path + "\\STOP.txt");
        str = sb.toString().split("\n");
        t = removeThis(t, str);
        return t;
    }

    /**
     *
     * @param t
     * @param path
     * @return
     */
    public static StringBuffer remSpecial(StringBuffer t, String path) {

        StringBuffer sb = getData(path + "\\SPEC.txt");
        String[] str = sb.toString().split("\n");
        int i = 0;
        while (i < str.length) {
            t = new StringBuffer(t.toString().replace(str[i], ""));
            i++;
        }
//        sb = UtilityClass.getData(path + "\\STOP.txt");
        str = sb.toString().split("\n");

        t = removeThis(t, str);
        return t;
    }

    /**
     *
     * @param fnam
     * @return
     */
    public static StringBuffer getData(String fnam) {
        File f = new File(fnam);
        StringBuffer bf = new StringBuffer();
        if (!f.exists()) {

            return bf;
        }
        try {

            FileInputStream fin = new FileInputStream(f);
            BufferedReader br = new BufferedReader(new InputStreamReader(fin));
            String lin = "";
            while ((lin = br.readLine()) != null) {
                bf.append("\n" + lin);
            }
            br.close();
            fin.close();
            try {
                bf = new StringBuffer(bf.substring(1));
                System.out.print("success");
            } catch (Exception ex) {
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return bf;
    }

    /**
     *
     * @param sb
     * @param wrds
     * @return
     */
    public static StringBuffer removeThis(StringBuffer sb, String[] wrds) {
        StringBuffer sb1 = new StringBuffer();
        try {
            int i = 0;
            String[] str = sb.toString().split(" ");
            while (i < str.length) {
                if (!checkContains(wrds, str[i])) {
                    sb1.append(" " + str[i]);
                }
                i++;
            }
            sb1 = new StringBuffer(sb1.toString().substring(1));
        } catch (Exception ex) {
            ex.printStackTrace();
            return sb;
        }
        return sb1;
    }

    /**
     *
     * @param wrds
     * @param w
     * @return
     */
    public static boolean checkContains(String[] wrds, String w) {
        boolean b = false;
        try {
            int i = 0;
            w = w.replace(" ", "");
            w = w.replace("?", "");
            w = w.replace("\n", "");
            w = w.replace(".", "");
            w = w.replace("!", "");
            w = w.replace(",", "");
            w = w.trim();
            while (i < wrds.length) {
                if (wrds[i].equalsIgnoreCase(w)) {
                    return true;
                }
                i++;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return b;
    }

    /**
     *
     * @param id
     * @return
     */
    public static HashMap<String, HashMap<String, Double>> Find_file(String id) {
        HashMap<String, HashMap<String, Double>> alldata = new HashMap<String, HashMap<String, Double>>();
        double occur = 0;
        String data = "";
        String file = "";
        List<String> fname = new ArrayList<String>();
        Set<String> fileName = new HashSet<String>(fname);
        try {
            Connection con = getconnect();
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select file from data_table where userid='" + id + "'");
            while (rs.next()) {
                fileName.add(rs.getString("file"));
            }
            rs.close();
            for (String element : fileName) {
                HashMap<String, Double> data_freq = new HashMap<String, Double>();
                ResultSet rs1 = st.executeQuery("select * from data_table where userid ='" + id + "' and file='" + element + "'");
                while (rs1.next()) {
                    System.out.println(rs1.getString("file"));
                    file = rs1.getString("file");
                    data = rs1.getString("token");
                    occur = Double.parseDouble(rs1.getString("frequency"));
                    data_freq.put(data, occur);
                }
                if (element.equals(file)) {
                    alldata.put(element, data_freq);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return alldata;
    }

    public static void main(String[] args) {
        Methods mj = new Methods();
    }

    /**
     *
     * @param query
     * @param data
     */
    public static void search_file(String query, HashMap<String, HashMap<String, Double>> data) {
        String[] q = query.split(" ");
        HashMap<String, Double> final_data = new HashMap<>();
        for (Map.Entry<String, HashMap<String, Double>> entry : data.entrySet()) {
            String fname = entry.getKey();
            double count = 0;
            HashMap<String, Double> freq = entry.getValue();
            for (Map.Entry<String, Double> entry1 : freq.entrySet()) {
                String word = entry1.getKey();
                Double f = entry1.getValue();
                for (int i = 0; i < q.length; i++) {
                    com.mycompany.data_transmission_using_tpa.KeygenerationService_Service client = new KeygenerationService_Service();
                    com.mycompany.data_transmission_using_tpa.KeygenerationService port = client.getKeygenerationServicePort();
                    String md5value = port.getkey(q[i]);
                    if (word.equals(md5value)) {
                        count += f;
                    }
                }
            }
            final_data.put(fname, count);
        }
    }

}
