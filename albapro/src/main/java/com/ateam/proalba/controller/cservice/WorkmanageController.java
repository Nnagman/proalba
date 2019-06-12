package com.ateam.proalba.controller.cservice;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.web.bind.annotation.ResponseBody;

import org.springframework.web.servlet.ModelAndView;

import com.ateam.proalba.domain.CareerVO;
import com.ateam.proalba.domain.WorkManageVO;
import com.ateam.proalba.domain.mobile.MobileAttendanceVO;
import com.ateam.proalba.domain.mobile.MobileSalaryInfoVO;
import com.ateam.proalba.service.CareerService;
import com.ateam.proalba.service.SalaryService;
import com.ateam.proalba.service.WorkManageService;
import com.ateam.proalba.service.mobile.MobileAttendanceService;
import com.ateam.proalba.service.mobile.MobileService;
import com.google.gson.Gson;
import com.google.gson.JsonObject;

import net.sf.json.JSON;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@Controller
public class WorkmanageController {

	@Autowired
	WorkManageService workManage;
	@Autowired
	SalaryService salaryService;
	@Autowired
	CareerService careerService;
	@Autowired
	MobileService mobileService;
	
	private static final Logger logger = LoggerFactory.getLogger(WorkmanageController.class);
	
	@RequestMapping(value ="/cserEmpManage", method = RequestMethod.GET)
	public ModelAndView cworkmanageGET(Model model, String id) throws Exception {
		
		logger.info("c id:  "+ id);
		logger.info("Welcome CserviceController");
		List<WorkManageVO> list = workManage.listAll(id);
		logger.info(list.toString());
		ModelAndView mav = new ModelAndView();
		mav.setViewName("cservicepage/cserEmpManage");
		mav.addObject("list", list);
		return mav;
	}
	

	
	
	
	@Autowired
	MobileAttendanceService mobileAttendanceService;

	@RequestMapping(value = "/cserWorkmanagetable", method = RequestMethod.GET)
	public ModelAndView pservicepageGET(Model model,@RequestParam("id") String id, @RequestParam("cid") String cid) throws Exception {
		model.addAttribute("message", "");
		Map<String, String> id_map = new HashMap<String, String>();
		id_map.put("id", id);
		id_map.put("cid", cid);
		List<MobileAttendanceVO> list = mobileAttendanceService.cmobileattendance(id_map);
		logger.info("workManager:  "+list.toString());
		logger.info(id);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("cservicepage/cserWorkmanagetable");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list",list);
		
		mav.addObject("map", map);
		return mav;
	}
	
	@ResponseBody
	@RequestMapping(value = "/cserWorkmanagetableUpdate", method = RequestMethod.POST)
	public JSON cserWorkmanageUpdatePOST(@RequestBody String time) throws Exception {
		logger.info(time);
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("work_start_time", time.substring(0, time.indexOf("/")));
		map.put("work_end_time", time.substring(time.indexOf("/")+1, time.indexOf("!")));
		map.put("w_code", time.substring(time.indexOf("!")+1, time.indexOf(" ")));
		
		Date today = new Date();
		SimpleDateFormat date = new SimpleDateFormat("yyyy/MM/dd");
		String[] w_code = map.get("w_code").split("/");
		if(!w_code[1].substring(4,6).equals(date.format(today).substring(5,7))) {
			JSONObject json = new JSONObject();
			json.put("message", "이번달이 아니면 근태기록을 수정할 수 없습니다.");
			return json;
		}
		
		mobileAttendanceService.mobileWorkRecordUpdate(map);
		JSONObject json = new JSONObject();
		json.put("message", "업데이트 성공");
		return json;
	}
	
	@ResponseBody
	@RequestMapping(value = "/cserWorkmanagetableDelete", method = RequestMethod.POST)
	public JSON cserWorkmanageDeletePOST(@RequestBody String delete_w_code) throws Exception {
		delete_w_code = delete_w_code.substring(0, delete_w_code.indexOf(" "));
		logger.info("w_code: "+ delete_w_code);
		
		Date today = new Date();
		SimpleDateFormat date = new SimpleDateFormat("yyyy/MM/dd");
		String[] w_code = delete_w_code.split("/");
		if(!w_code[1].substring(4,6).equals(date.format(today).substring(5,7))) {
			JSONObject json = new JSONObject();
			json.put("message", "이번달이 아니면 근태기록을 수정할 수 없습니다.");
			return json;
		}
		
		mobileAttendanceService.mobileWorkRecordDelete(delete_w_code);
		JSONObject json = new JSONObject();
		json.put("message", "삭제 성공");
		return json;
	}
	
	@ResponseBody
	@RequestMapping(value = "/cserWorkmanagetableInsert", method = RequestMethod.POST)
	public JSON cserWorkmanageInsertPOST(@RequestBody String str) throws Exception {
		logger.info(str);
		Map<String, String> map = new HashMap<String, String>();
		
		map.put("sa_code", str.substring(0, str.indexOf("!")));
		str = str.substring(str.indexOf("!")+1, str.length());
		
		str = str.substring(str.indexOf("@")+1, str.length());
		
		map.put("work_start_time", str.substring(0, str.indexOf("#")));
		str = str.substring(str.indexOf("#")+1, str.length());
		
		map.put("work_end_time",str.substring(0, str.indexOf("$")));
		str = str.substring(str.indexOf("$")+1, str.length());
		
		map.put("w_code", str);
		System.out.println(map);
		
		 Date today = new Date();
		 SimpleDateFormat date = new SimpleDateFormat("yyyy/MM/dd");
		 String[] sa_code = map.get("sa_code").split("/");
		 if(!sa_code[1].substring(4,6).equals(date.format(today).substring(5,7))) {
			 logger.info("sa_code[1].substring(4,6): "+sa_code[1].substring(4,6));
			 logger.info("date.format(today).substring(5,7): "+date.format(today).substring(5,7));
			 JSONObject json = new JSONObject();
			json.put("message", "이번달이 아니면 근태기록을 수정할 수 없습니다.");
			return json;
		 }
		
		String work_start_time = map.get("work_start_time");
		String work_end_time = map.get("work_end_time");
		logger.info("work_start_time: "+ work_start_time.substring(9,11));
		logger.info("work_end_time: " + work_end_time.substring(9,11));
		int start_hour = Integer.parseInt(work_start_time.substring(9,11));
		int end_hour = Integer.parseInt(work_end_time.substring(9,11));
		if(start_hour > end_hour) { end_hour = end_hour + 24; }
		int working_hours1 = (end_hour - start_hour)*60;
		
		int working_hours2 = Integer.parseInt(work_end_time.substring(12,14))-Integer.parseInt(work_start_time.substring(12,14));
		
		String working_hours = Integer.toString(working_hours1+working_hours2);
		map.put("working_hours", working_hours);
		
		mobileAttendanceService.mobileWorkRecordInsert(map);
		
		JSONObject json = new JSONObject();
		json.put("message", "업데이트 성공");
		return json;
	}
	
	
	@RequestMapping(value = "/cserSalary", method = RequestMethod.GET)
	public String inqsalaryGET(Model model, String id) throws Exception {

	    logger.info(id);
	    model.addAttribute("salary_id", id);
		model.addAttribute("message", "inqsalaryPage");
		JSONArray pJson = JSONArray.fromObject(salaryService.listCriteria(id));
		model.addAttribute("salarys", pJson);
		logger.info(pJson.toString());
		return "cservicepage/cserSalary";
	}
	
	
	

	@ResponseBody
	@RequestMapping(value ="/m.cworkmanage", method = RequestMethod.GET)
	public JSON mcworkmanageGET(Model model, String id) throws Exception {
		
		logger.info("c id:  "+ id);
		logger.info("Welcome CserviceController");
		List<WorkManageVO> list = workManage.listAll(id);
		logger.info(list.toString());
		JSONArray pJson = JSONArray.fromObject(list);
		return pJson;
	}
	
	@ResponseBody
	@RequestMapping(value ="/m.csalary", method = RequestMethod.POST)
	public JSON mcsalaryPOST(Model model, String id) throws Exception {
		
		logger.info("id:  "+ id);
		logger.info("Welcome CserviceController");
		List<MobileSalaryInfoVO> list = workManage.csalary(id);
		logger.info(list.toString());
		JSONArray pJson = JSONArray.fromObject(list);
		return pJson;
	}
	
	@ResponseBody
	@RequestMapping(value = "/cserInqcareer", method = RequestMethod.GET)
	public ModelAndView inqcareerGET(Model model,@RequestParam("id") String id) throws Exception {
		model.addAttribute("message", "");
		List<CareerVO> list = careerService.selectCareers("p"+id);
		logger.info(list.toString());		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("cservicepage/cserInqcareer");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list",list);
		
		mav.addObject("map", map);
		return mav;
	}
	
	@ResponseBody
	@RequestMapping("/m.cInqcareer")
	public JSON mcInqcareerPOST(Model model,@RequestBody String m_code) throws Exception {
		
		logger.info("m_code:  "+ m_code);
		logger.info("Welcome CserviceController");
		List<CareerVO> list = mobileService.careerInfo(m_code);

		for(CareerVO careerVO : list) {
			if(careerVO.getEnd_date() == null) {
				Date date = careerVO.getJoin_date();
				careerVO.setEnd_date(date);
			}
		}
		
		JSONArray pJson = JSONArray.fromObject(list);
		
		return pJson;
	}

}