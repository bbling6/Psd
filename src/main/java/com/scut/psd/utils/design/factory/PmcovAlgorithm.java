package com.scut.psd.utils.design.factory;


import com.scut.psd.web.request.Algorithm;
import com.scut.psd.web.request.LaunchSignal;
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
