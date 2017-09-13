package com.scut.psd.design.factory;


import com.scut.psd.web.entity.Algorithm;
import com.scut.psd.web.entity.LaunchSignal;

import java.util.List;
import java.util.Map;

public abstract class AlgorithmProduct {

	 public abstract Map<String,List<String>> getCalculateResult(LaunchSignal launchSignal, Algorithm algorithm);

}
