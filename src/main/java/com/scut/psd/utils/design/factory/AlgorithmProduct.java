package com.scut.psd.utils.design.factory;


import com.scut.psd.web.request.Algorithm;
import com.scut.psd.web.request.LaunchSignal;

import java.util.List;
import java.util.Map;

public abstract class AlgorithmProduct {

	 public abstract Map<String,List<String>> getCalculateResult(LaunchSignal launchSignal, Algorithm algorithm);

}
