package com.scut.psd.matlab;

import com.scut.psd.dao.po.CalculateData;
import com.scut.psd.utils.ArithUtils;
import java.util.*;

public class CalculatePsd {
    public static Map<String,List<String>> getResultMap(int scale){
        CalculateData calculateData = new CalculateData();
        List<String> smc = new ArrayList<>();
        List<String> smcRelative = new ArrayList<>();
        List<String> sms = new ArrayList<>();
        List<String> smsRelative = new ArrayList<>();
        for (int i = 0; i < 1000; i++) {
            /**运算工具类ArithUtils*/
            smc.add(String.valueOf(ArithUtils.mul(Math.random(), scale)).substring(0,8));
            smcRelative.add(String.valueOf(ArithUtils.mul(Math.random(), scale)).substring(0,8));
            sms.add(String.valueOf(ArithUtils.mul(Math.random(), scale)).substring(0,8));
            smsRelative.add(String.valueOf(ArithUtils.mul(Math.random(), scale)).substring(0,8));
        }
        Map<String,List<String>> resultMap = new HashMap<>();
        resultMap.put("smc",smc);
        resultMap.put("smcRelative",smcRelative);
        resultMap.put("sms",sms);
        resultMap.put("smsRelative",smsRelative);
        return resultMap;
    }
}
