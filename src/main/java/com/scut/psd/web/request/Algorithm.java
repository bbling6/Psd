package com.scut.psd.web.request;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Algorithm {

    /**
     * 算法种类
     */
	private String algorithmType;
    /**
     * 阶数
     */
    private String order;
    /**
     * FFT变换点数
     */
    private String nfft;
    /**
     * 采样频率
     */
    private String algorithmSamplingFrequency;

}
