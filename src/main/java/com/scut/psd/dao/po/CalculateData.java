package com.scut.psd.dao.po;

import com.scut.psd.web.entity.Algorithm;
import com.scut.psd.web.entity.LaunchSignal;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.data.annotation.Id;

import java.util.Date;
import java.util.List;
import java.util.Map;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CalculateData {
    /**
     * ID
     */
    @Id
    private String id;
    /**
     * 用户
     */
    private String userId;
    /**
     * 算法参数
     */
    private Algorithm algorithm;
    /**
     * 发射信号参数
     */
    private LaunchSignal launchSignal;
    /**
     * 运算结果
     * 悬浮物浓度，smc
     * 悬浮物浓度相对比值，smcRelative
     * 悬浮物线度，sms
     * 悬浮物线度相对比值，smsRelative
     */
    private Map<String,List<String>> resultMap;
    /**
     * 创建时间
     */
    private String createTime;

    public CalculateData(String userId,LaunchSignal launchSignal,Algorithm algorithm,Map<String,List<String>> resultMap,String createTime){
        this.userId = userId;
        this.algorithm = algorithm;
        this.launchSignal = launchSignal;
        this.resultMap = resultMap;
        this.createTime = createTime;
    }
}
