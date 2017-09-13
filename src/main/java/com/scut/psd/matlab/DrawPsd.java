package com.scut.psd.matlab;

import com.scut.psd.web.entity.Algorithm;
import com.scut.psd.web.entity.LaunchSignal;
import org.apache.log4j.Logger;

public class DrawPsd {

    private Logger logger = Logger.getLogger(DrawPsd.class);
    /**
     * 根据传入的参数画图
     */
    public void draw(LaunchSignal launchSignal, Algorithm algorithm) {
        String threadName = Thread.currentThread().getName();
        logger.info("线程:"+threadName+"开始画图：");
        logger.info("----------------------------------------");
        logger.info("线程:"+threadName+"结束画图！");
    }

    /**
     * 等待线程释放，用Scanner来模拟线程阻塞
     */
    public void waitForFigures() {
        try {
            String threadName = Thread.currentThread().getName();
            logger.info("线程:"+threadName+"阻塞开始：");
            /**线程睡眠3秒，模拟画图和线程关闭*/
            Thread.sleep(3000);
            logger.info("线程:"+threadName+"释放！");
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }
}

