package com.scut.psd.controller;

import com.scut.psd.cache.LocalCache;
import com.scut.psd.constant.PageQuality;
import com.scut.psd.dao.po.CalculateData;
import com.scut.psd.service.DataProcessService;
import com.scut.psd.web.entity.Algorithm;
import com.scut.psd.web.entity.LaunchSignal;
import com.scut.psd.web.entity.Pagination;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/process")
public class DataProcessController {
	/**要注意处理线程安全问题，单例模式下的controller不能有成员变量*/

	@Autowired
	private DataProcessService dataProcessService;

	@Autowired
	private LocalCache localCache;

	@RequestMapping(value="/handle")
	public ModelAndView handle(LaunchSignal launchSignal, Algorithm algorithm) throws InterruptedException {

		Map<String,List<String>> resultMap =  dataProcessService.drawAndCalculate(launchSignal,algorithm);

		/**添加到本地缓存*/
		localCache.putCache("launchSignal",launchSignal);
		localCache.putCache("algorithm", algorithm);
		localCache.putCache("resultMap", resultMap);

		ModelAndView modelAndView = new ModelAndView("/result/showLast");
		modelAndView.addObject("resultMap",resultMap);
		return modelAndView;
	}

	@RequestMapping("/insert")
	public String save(){
		dataProcessService.save();
		return "redirect:/process/list";
	}

	@RequestMapping("/list")
	public ModelAndView list(@RequestParam(value="currentPage",required=false) String currentPage){
		if(currentPage==null || currentPage.isEmpty()){
			currentPage = String.valueOf(PageQuality.CURRENTPAGE_ONE);
		}
		/**获取对象*/
		Pagination<CalculateData> pagination = dataProcessService.getPagination(Integer.valueOf(currentPage), PageQuality.PAGE_SIZE_TEN);
		ModelAndView modelAndView = new ModelAndView("/back/dataList");
		modelAndView.addObject("pagination", pagination);
		return modelAndView;
	}

	@RequestMapping("/detail")
	public ModelAndView detail(@RequestParam("id") String calId){
		ModelAndView modelAndView = new ModelAndView("/back/dataDetail");
		CalculateData calculateData = dataProcessService.getById(calId);
		modelAndView.addObject("calculateData",calculateData);
		return modelAndView;
	}

}
