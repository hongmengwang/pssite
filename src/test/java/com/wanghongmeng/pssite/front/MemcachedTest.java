package com.wanghongmeng.pssite.front;

import org.junit.Test;

import java.io.BufferedInputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicInteger;

/**
 * Created with IntelliJ IDEA.
 * User: hongmengwang
 * Date: 13-11-4
 * Time: 下午4:38
 * To change this template use File | Settings | File Templates.
 */
public class MemcachedTest {
    public static void main(String[] args) throws InterruptedException {
        final int thread_num = 1000;
        final AtomicInteger total = new AtomicInteger(0);
        ExecutorService executors = Executors.newFixedThreadPool(10);
        final CountDownLatch gate = new CountDownLatch(1);
        for(int a = 0; a < thread_num; a++ ){
            executors.execute(new Runnable() {
                @Override
                public void run() {
                    try {
                        gate.countDown();
                        gate.await();
                        for (int a = 0; a < thread_num; a++) {
//                            Thread.sleep(10);
                            URL url = new URL("http://127.0.0.1:9090/pssite");
                            HttpURLConnection conn = null;
                            conn = (HttpURLConnection) url.openConnection();
                            BufferedInputStream bis = new BufferedInputStream(conn.getInputStream());
//                            int len;
//                            byte[] bytes = new byte[1024];
//                            while((len = bis.read(bytes))!=-1){
//                                System.out.println(new String(bytes,0,len));
//                            }
                            System.out.println(Thread.currentThread() + ":" + total.incrementAndGet() + ":" + conn.getResponseCode());
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            });
        }
        gate.countDown();
    }
}
