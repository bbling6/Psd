package com.scut.psd.design.strategy;


import com.scut.psd.web.entity.Algorithm;
import com.scut.psd.web.entity.LaunchSignal;

import java.util.List;
import java.util.Map;

public abstract class Strategy {

	public abstract Map<String,List<String>> doOperation(LaunchSignal launchSignal, Algorithm algorithm);

}
