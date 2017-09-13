package com.scut.psd.design.strategy;

import com.scut.psd.web.entity.Algorithm;
import com.scut.psd.web.entity.LaunchSignal;
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