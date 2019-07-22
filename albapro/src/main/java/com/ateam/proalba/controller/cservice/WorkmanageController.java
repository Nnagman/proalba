package com.ateam.proalba.controller.cservice;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
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
import com.ateam.proalba.service.EmployeeService;
import com.ateam.proalba.service.SalaryService;
import com.ateam.proalba.service.WorkManageService;
import com.ateam.proalba.service.mobile.MobileAttendanceService;
import com.ateam.proalba.service.mobile.MobileService;
import com.ateam.proalba.service.recruinfo.RecruinfoService;

import lombok.AllArgsConstructor;
import net.sf.json.JSON;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@Controller
@AllArgsConstructor
public class WorkmanageController {

	WorkManageService workManage;
	SalaryService salaryService;
	CareerService careerService;
	MobileService mobileService;
	MobileAttendanceService mobileAttendanceService;
	EmployeeService employeeService;
	RecruinfoService recruinfoService;

	private static final Logger logger = LoggerFactory.getLogger(WorkmanageController.class);

	@RequestMapping(value = "/cserEmpManage", method = RequestMethod.GET)
	public ModelAndView cworkmanageGET(Model model, String id) throws Exception {

		logger.info("c id:  " + id);
		logger.info("Welcome CserviceController");
		List<WorkManageVO> list = workManage.listAll(id);
		logger.info(list.toString());
		ModelAndView mav = new ModelAndView();
		mav.setViewName("cservicepage/cserEmpManage");
		mav.addObject("list", list);
		return mav;
	}

	@RequestMapping(value = "/cserfingerIdmanage", method = RequestMethod.GET)
	public ModelAndView cserfingeridmanageGET(Model model, String id) throws Exception {

		logger.info("c id:  " + id);
		logger.info("Welcome CserviceController");
		List<WorkManageVO> list = workManage.listAll(id);
		logger.info(list.toString());
		ModelAndView mav = new ModelAndView();
		mav.setViewName("cservicepage/cserfingerIdmanage");
		mav.addObject("list", list);
		return mav;
	}

	@ResponseBody
	@RequestMapping(value = "/cserfingerIdupdate", method = RequestMethod.POST)
	public JSON cserfingerIdupdate(Model model, @RequestBody String str) throws Exception {

		logger.info("str:  " + str);
		String id = str.substring(0, str.indexOf("/"));
		String em_code = str.substring(0, str.indexOf(" "));
		String finger_id = str.substring(str.lastIndexOf("/") + 1);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("finger_id", finger_id);
		map.put("em_code", em_code);
		System.out.println(map);

		employeeService.update_finger_id(map);

		JSONObject json = new JSONObject();
		json.put("message", "업데이트 성공");
		return json;
	}

	@ResponseBody
	@RequestMapping(value = "/cserfingerIdremove", method = RequestMethod.POST)
	public JSON cserfingerIdremove(Model model, @RequestBody String str) throws Exception {

		String em_code = str.substring(0, str.indexOf(" "));
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("em_code", em_code);
		System.out.println(map);

		employeeService.remove_finger_id(map);

		JSONObject json = new JSONObject();
		json.put("message", "삭제 성공");
		return json;
	}

	@RequestMapping(value = "/cserWorkmanagetable", method = RequestMethod.GET)
	public ModelAndView pservicepageGET(Model model, @RequestParam("id") String id, @RequestParam("cid") String cid, 
			@RequestParam("em_code") String em_code,@RequestParam("name") String name, @RequestParam("end_date") String end_date)
			throws Exception {
		model.addAttribute("message", "");
		model.addAttribute("name", name);
		Map<String, String> id_map = new HashMap<String, String>();
		id_map.put("id", id);
		id_map.put("cid", cid);
		List<MobileAttendanceVO> list = mobileAttendanceService.cmobileattendance(id_map);
		logger.info("workManager:  " + list.toString());
		logger.info(id);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("cservicepage/cserWorkmanagetable");
		Map<String, Object> map = new HashMap<String, Object>();
		
		//기업직원근태기록
		int size = list.size();
		String[] date = new String[size];
		String[] start_time = new String[size];
		String[] end_time = new String[size];
		int i=0;
		
		for(MobileAttendanceVO vo : list) {
			System.out.println(vo);
			date[i] = vo.getSa_date();
			start_time[i] = vo.getSa_start();
			end_time[i] = vo.getSa_end();
			i++;
		}
	
		System.out.println(date[0]);	
		System.out.println(start_time[0]);
		System.out.println(end_time[0]);
		//기업직원근태기록끝
		map.put("list", list);
		map.put("id", id);
		map.put("em_code", em_code);
		System.out.println(map);

		mav.addObject("map", map);
		mav.addObject("end_date", end_date);
		mav.addObject("date", date);
		mav.addObject("start_time", start_time);
		mav.addObject("end_time", end_time);
		return mav;
	}

	@RequestMapping(value = "/cserFullWorkmanagetable", method = RequestMethod.GET)
	public ModelAndView FullpservicepageGET(Model model, String id) throws Exception {
		model.addAttribute("message", "");

		List<MobileAttendanceVO> list = mobileAttendanceService.fullcmobileattendance(id);
		logger.info("workManager:  " + list.toString());
		logger.info(id);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("cservicepage/cserFullWorkmanagetable");
		mav.addObject("list", list);
		return mav;
	}

	@ResponseBody
	@RequestMapping(value = "/cserWorkmanagetableUpdate", method = RequestMethod.POST)
	public JSON cserWorkmanageUpdatePOST(@RequestBody String time) throws Exception {
		logger.info(time);

		Map<String, String> map = new HashMap<String, String>();
		map.put("work_start_time", time.substring(0, time.indexOf("/")));

		String work_end_time = time.substring(time.indexOf("/") + 1, time.indexOf("!"));

		map.put("work_end_time", work_end_time);
		String w_code = time.substring(time.lastIndexOf("!") + 1);
		String[] w_code_arr = new String[3];

		w_code_arr = w_code.split(" ");
		System.out.println(w_code_arr[0]);

		map.put("w_code", w_code_arr[0] + " " + w_code_arr[1]);

		String work_start_time = map.get("work_start_time");
		logger.info("work_start_time: " + work_start_time.substring(0, 2));
		logger.info("work_end_time: " + work_end_time.substring(0, 2));

		int start_hour = Integer.parseInt(work_start_time.substring(0, 2));
		int end_hour = Integer.parseInt(work_end_time.substring(0, 2));

		if (start_hour > end_hour) {
			end_hour = end_hour + 24;
		}
		int working_hours1 = (end_hour - start_hour) * 60;

		int working_hours2 = Integer.parseInt(work_end_time.substring(3, 5))
				- Integer.parseInt(work_start_time.substring(3, 5));

		String working_hours = Integer.toString(working_hours1 + working_hours2);
		map.put("working_hours", working_hours);

		System.out.println(map);

		mobileAttendanceService.mobileWorkRecordUpdate(map);

		Date today = new Date();
		SimpleDateFormat date = new SimpleDateFormat("yyyyMMdd");
		System.out.println(
				"today : " + w_code_arr[0].substring(w_code_arr[0].indexOf("/") + 1, w_code_arr[0].indexOf("/") + 7));
		if (!w_code_arr[0].substring(w_code_arr[0].indexOf("/") + 1, w_code_arr[0].indexOf("/") + 7)
				.equals(date.format(today).substring(0, 6))) {
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
	@RequestMapping(value = "/empfingeridUpdate", method = RequestMethod.POST)
	public String empfingeridUpdatePOST(@RequestParam("fingerid") String fingerid, @RequestParam("id") String id)
			throws Exception {
		logger.info("*** 지문 저장 ***");
		logger.info(id);
		logger.info(fingerid);

		return "redirect:/cserEmpManage?id=" + id;
	}

	@ResponseBody
	@RequestMapping(value = "/cserWorkmanagetableDelete", method = RequestMethod.POST)
	public JSON cserWorkmanageDeletePOST(@RequestBody String delete_w_code) throws Exception {
		delete_w_code = delete_w_code.substring(0, delete_w_code.indexOf(" ") + 6);
		logger.info("w_code: " + delete_w_code);

		Date today = new Date();
		SimpleDateFormat date = new SimpleDateFormat("yyyy/MM/dd");
		String[] w_code = delete_w_code.split("/");
		if (!w_code[1].substring(4, 6).equals(date.format(today).substring(5, 7))) {
			JSONObject json = new JSONObject();
			json.put("message", "이번달이 아니면 근태기록을 수정할 수 없습니다.");
			return json;
		}

		mobileAttendanceService.mobileWorkRecordDelete(delete_w_code);
		JSONObject json = new JSONObject();
		json.put("message", "삭제 성공");
		return json;
	}

	
	/* 채용공고 관리 채용공고 삭제 */
	  
	  @ResponseBody
	  
	  @RequestMapping(value = "/cserAddJobopeningfreemanageDelete", method = RequestMethod.POST)
	  public JSON cserAddJobopening_free_managePOST(@RequestBody String delete_n_code) throws Exception {  
		  logger.info("n_code: "+ delete_n_code);
	  
	  
	  recruinfoService.get_addjobopening_free_manage_delete(delete_n_code); JSONObject
	  json = new JSONObject(); json.put("message", "삭제 성공"); 
	  return json; } 
	 /* 채용공고 삭제*/
	 
	@ResponseBody
	@RequestMapping(value = "/cserWorkmanagetableInsert", method = RequestMethod.POST)
	public JSON cserWorkmanageInsertPOST(@RequestBody String str) throws Exception {
		logger.info(str);
		Map<String, String> map = new HashMap<String, String>();

		map.put("sa_code", str.substring(0, str.indexOf("!")));
		str = str.substring(str.indexOf("!") + 1, str.length());

		str = str.substring(str.indexOf("@") + 1, str.length());

		map.put("work_start_time", str.substring(0, str.indexOf("#")));
		str = str.substring(str.indexOf("#") + 1, str.length());

		map.put("work_end_time", str.substring(0, str.indexOf("$")));
		str = str.substring(str.indexOf("$") + 1, str.length());

		map.put("w_code", str.substring(0, str.indexOf("*")));
		str = str.substring(str.indexOf("*") + 1, str.length());

		map.put("em_code", str);
		System.out.println(map);

		Date today = new Date();
		SimpleDateFormat date = new SimpleDateFormat("yyyyMMdd");
		String[] sa_code = map.get("sa_code").split("/");
		sa_code[1] = sa_code[1].substring(0, 6);
		logger.info(sa_code[1]);
		if (!sa_code[1].equals(date.format(today).substring(0, 6))) {
			logger.info("sa_code[1].substring(4,6): " + sa_code[1].substring(4, 6));
			logger.info("date.format(today).substring(5,7): " + date.format(today).substring(5, 7));
			JSONObject json = new JSONObject();
			json.put("message", "이번달이 아니면 근태기록을 수정할 수 없습니다.");
			return json;
		}

		String work_start_time = map.get("work_start_time");
		String work_end_time = map.get("work_end_time");
		logger.info("work_start_time: " + work_start_time.substring(0, 2));
		logger.info("work_end_time: " + work_end_time.substring(0, 2));

		int start_hour = Integer.parseInt(work_start_time.substring(0, 2));
		int end_hour = Integer.parseInt(work_end_time.substring(0, 2));

		if (start_hour > end_hour) {
			end_hour = end_hour + 24;
		}
		int working_hours1 = (end_hour - start_hour) * 60;

		int working_hours2 = Integer.parseInt(work_end_time.substring(3, 5))
				- Integer.parseInt(work_start_time.substring(3, 5));

		String working_hours = Integer.toString(working_hours1 + working_hours2);
		map.put("working_hours", working_hours);
		System.out.println(map.get("sa_code"));

		if (salaryService.select_salary(map.get("sa_code")) == null) {
			Map<String, String> salary_map = new HashMap<String, String>();
			salary_map.put("sa_code", map.get("sa_code"));
			salary_map.put("em_code", map.get("em_code"));

			String year_month = map.get("sa_code").substring(map.get("sa_code").indexOf("/") + 1,
					map.get("sa_code").lastIndexOf("/"));
			salary_map.put("year_month", year_month);

			salaryService.insert_salary(salary_map);
		}

		mobileAttendanceService.mobileWorkRecordInsert(map);
		JSONObject json = new JSONObject();
		json.put("message", "추가 성공");
		return json;
	}
	/* 이전 기업 급여조회 컨트롤러 */
	/*
	 * @RequestMapping(value = "/cserSalary", method = RequestMethod.GET) public
	 * String inqsalaryGET(Model model, String id, String name) throws Exception {
	 * 
	 * String p_id = id.substring(0, id.indexOf("/")); logger.info(id);
	 * model.addAttribute("name", name); model.addAttribute("message",
	 * "inqsalaryPage"); JSONArray pJson =
	 * JSONArray.fromObject(salaryService.listCriteria(id));
	 * model.addAttribute("salarys", pJson); logger.info(pJson.toString()); return
	 * "cservicepage/cserSalary"; }
	 */
	
	@RequestMapping(value = "/cserSalary", method = RequestMethod.GET)
	public String inqsalaryGET(Model model, String id) throws Exception {
		model.addAttribute("message", "inqsalaryPage");
		JSONArray pJson = JSONArray.fromObject(salaryService.listCriteria(id));
		model.addAttribute("salarys", pJson);
		logger.info(pJson.toString());
		
		logger.info("salarys");
		return "cservicepage/cserSalary";
	}

	@ResponseBody
	@RequestMapping(value = "/m.cworkmanage", method = RequestMethod.POST)
	public JSON mcworkmanageGET(@RequestBody String id) throws Exception {

		logger.info("c id:  " + id);
	
		List<WorkManageVO> list = workManage.listAll(id);
		for (WorkManageVO workManageVO : list) {
			if (workManageVO.getEnd_date() == null) {
				Date date = workManageVO.getJoin_date();
				workManageVO.setEnd_date(date);
			}
		}
		logger.info("fdfd"+list.toString());
		JSONArray pJson = JSONArray.fromObject(list);
		return pJson;
	}

	@ResponseBody
	@RequestMapping(value = "/m.csalary", method = RequestMethod.POST)
	public JSON mcsalaryPOST(Model model, String id) throws Exception {

		logger.info("id:  " + id);
		logger.info("Welcome CserviceController");
		List<MobileSalaryInfoVO> list = workManage.csalary(id);
		logger.info(list.toString());
		JSONArray pJson = JSONArray.fromObject(list);
		return pJson;
	}

	/* 이전 경력 조회 컨트롤러
	 * @ResponseBody
	 * 
	 * @RequestMapping(value = "/cserInqcareer", method = RequestMethod.GET) public
	 * ModelAndView inqcareerGET(Model model, @RequestParam("id") String
	 * id, @RequestParam("name") String name) throws Exception {
	 * model.addAttribute("message", ""); model.addAttribute("name", name);
	 * List<CareerVO> list = careerService.selectCareers("p" + id);
	 * logger.info(list.toString()); ModelAndView mav = new ModelAndView();
	 * mav.setViewName("cservicepage/cserInqcareer"); Map<String, Object> map = new
	 * HashMap<String, Object>(); map.put("list", list);
	 * 
	 * mav.addObject("map", map); return mav; }
	 */
	@ResponseBody
	@RequestMapping(value = "/cserInqcareer", method = RequestMethod.GET)
	public ModelAndView inqcareerGET(Model model, @RequestParam("id") String id)
			throws Exception {
		List<CareerVO> list = careerService.selectCareers("c"+id);
		logger.info(list.toString());
		ModelAndView mav = new ModelAndView();
		mav.setViewName("cservicepage/cserInqcareer");
		mav.addObject("list", list);
		return mav;
	}
	
	@ResponseBody
	@RequestMapping(value = "/cserCareerLeave", method = RequestMethod.GET)
	public ModelAndView cserCareerLeavePost(@RequestParam("em_code") String em_code, @RequestParam("id") String id) throws Exception {
		careerService.career_leave(em_code);
		
		logger.info("c id:  " + id);
		logger.info("Welcome CserviceController");
		List<WorkManageVO> list = workManage.listAll(id);
		logger.info(list.toString());
		ModelAndView mav = new ModelAndView();
		mav.setViewName("cservicepage/cserEmpManage");
		mav.addObject("list", list);
		return mav;
	}

	@ResponseBody
	@RequestMapping("/m.cInqcareer")

	public JSON mcInqcareerPOST(@RequestBody String m_code) throws Exception {

		logger.info("m_code:  " + m_code);
		logger.info("Welcome CserviceController");
		List<CareerVO> list = mobileService.careerInfo(m_code);

		for (CareerVO careerVO : list) {
			if (careerVO.getEnd_date() == null) {
				Date date = careerVO.getJoin_date();
				careerVO.setEnd_date(date);
			}
		}

		JSONArray pJson = JSONArray.fromObject(list);

		return pJson;
	}

}