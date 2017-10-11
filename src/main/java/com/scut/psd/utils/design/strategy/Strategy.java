package com.scut.psd.utils.design.strategy;


import com.scut.psd.web.request.Algorithm;
import com.scut.psd.web.request.LaunchSignal;

import java.util.List;
import java.util.Map;

public abstract class Strategy {

	public abstract Map<String,List<String>> doOperation(LaunchSignal launchSignal, Algorithm algorithm);

}
