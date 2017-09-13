package com.scut.psd.design.factory;


import com.scut.psd.web.entity.Algorithm;
import com.scut.psd.web.entity.LaunchSignal;
import com.scut.psd.constant.CardinalConst;
import com.scut.psd.matlab.CalculatePsd;

import java.util.List;
import java.util.Map;

public class PmcovAlgorithm extends AlgorithmProduct{

	@Override
	public Map<String,List<String>> getCalculateResult(LaunchSignal launchSignal, Algorithm algorithm) {
		return CalculatePsd.getResultMap(CardinalConst.PMCOV);
	}
}
