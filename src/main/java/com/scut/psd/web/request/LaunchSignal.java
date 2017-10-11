package com.scut.psd.web.request;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.data.mongodb.core.mapping.Document;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class LaunchSignal {
	/**
	 * 下限频率
	 */
	private String downFrequency;
	/**
	 * 上限频率
	 */
	private String upFrequency;
	/**
	 * 采样频率
	 */
	private String signalSamplingFrequency;
	/**
	 * 信号幅度
	 */
	private String signalLevel;
	/**
	 * 信号周期
	 */
	private String signalPeriod;
		
}
