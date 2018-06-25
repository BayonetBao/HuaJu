package com.huaju.util;


import java.io.File;

public class ThreadTest {
    public static void main(String[] args) {
        File file = new File("C:\\test");
        File[] files = file.listFiles();
        String str = ".tmp";

        deleteFile(files, str);
    }

    private static void deleteFile(File[] files, final String str) {
        // TODO Auto-generated method stub
        for (File file : files) {
            if (file.isFile()) {
                if (file.getName().indexOf(str) != -1) {
                    file.delete();
                }
            } else {
                deleteFile(file.listFiles(), str);
            }
        }
    }
}
