package com.scut.psd.design.strategy;

import com.scut.psd.web.entity.Algorithm;
import com.scut.psd.web.entity.LaunchSignal;
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