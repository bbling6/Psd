package com.scut.psd.matlab;

import com.scut.psd.web.request.Algorithm;
import com.scut.psd.web.request.LaunchSignal;
import lombok.extern.log4j.Log4j;

@Log4j
public class DrawPsd {
    /**
     * 根据传入的参数画图
     */
    public void draw(LaunchSignal launchSignal, Algorithm algorithm) {
        String threadName = Thread.currentThread().getName();
        log.info("线程:"+threadName+"开始画图：");
        log.info("----------------------------------------");
        log.info("线程:"+threadName+"结束画图！");
    }

    /**
     * 等待线程释放，用Scanner来模拟线程阻塞
     */
    public void waitForFigures() {
        try {
            String threadName = Thread.currentThread().getName();
            log.info("线程:"+threadName+"阻塞开始：");
            /**线程睡眠3秒，模拟画图和线程关闭*/
            Thread.sleep(3000);
            log.info("线程:"+threadName+"释放！");
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }
}

