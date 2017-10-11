package com.scut.psd.utils;

import com.scut.psd.matlab.DrawPsd;
import com.scut.psd.web.request.Algorithm;
import com.scut.psd.web.request.LaunchSignal;

public class DrawThread extends Thread{

	private LaunchSignal launchSignal;

	private Algorithm algorithm;

	public DrawThread(LaunchSignal launchSignal, Algorithm algorithm) {
		   this.launchSignal = launchSignal;
		   this.algorithm = algorithm;
	}
	   
	   @Override
	   public void run() {
		   DrawPsd drawPsd = new DrawPsd();
		   /**
			* 开始画图
			*/
		   drawPsd.draw(launchSignal, algorithm);
		   /**
			* 等待关闭
			*/
		   drawPsd.waitForFigures();
	   }
}
