package com.scut.psd.utils.design.strategy;

import com.scut.psd.web.request.Algorithm;
import com.scut.psd.web.request.LaunchSignal;
import lombok.Data;

import java.util.List;
import java.util.Map;

@Data
public class Context{

	private Strategy strategy;

	/**执行操作*/
	public Map<String,List<String>> executeOperation(LaunchSignal launchSignal, Algorithm algorithm){
		return strategy.doOperation(launchSignal, algorithm);
	}

}