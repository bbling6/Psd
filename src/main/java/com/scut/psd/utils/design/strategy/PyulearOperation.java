package com.scut.psd.utils.design.strategy;

import com.scut.psd.web.request.Algorithm;
import com.scut.psd.web.request.LaunchSignal;
import com.scut.psd.constant.CardinalConst;
import com.scut.psd.matlab.CalculatePsd;

import java.util.List;
import java.util.Map;

/**
 * Pyulear
 * @author Administrator
 *
 */
public class PyulearOperation extends Strategy{

	@Override
	public Map<String,List<String>> doOperation(LaunchSignal launchSignal, Algorithm algorithm) {
		return CalculatePsd.getResultMap(CardinalConst.PYULEAR);
	}
}
