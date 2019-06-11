package com.ateam.proalba.controller.mobile;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ateam.proalba.domain.Criteria;
import com.ateam.proalba.domain.MemberVO;
import com.ateam.proalba.domain.PageMaker;
import com.ateam.proalba.domain.WorkManageVO;
import com.ateam.proalba.domain.mobile.MobileAttendanceVO;
import com.ateam.proalba.domain.mobile.MobileCWorkRecordVO;
import com.ateam.proalba.domain.mobile.MobileSalaryInfoVO;
import com.ateam.proalba.domain.mobile.MobileWorkInfoVO;
import com.ateam.proalba.domain.mobile.MobileWorkPlaceVO;
import com.ateam.proalba.domain.mobile.MobileWorkRecordVO;
import com.ateam.proalba.service.MemberService;
import com.ateam.proalba.service.SalaryService;
import com.ateam.proalba.service.WorkManageService;
import com.ateam.proalba.service.mobile.MobileAttendanceService;
import com.ateam.proalba.service.mobile.MobileService;
import com.ateam.proalba.service.qna.QnAService;

import lombok.AllArgsConstructor;
import net.sf.json.JSON;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@Controller
@AllArgsConstructor
public class MobileController {
	private static final Logger logger = LoggerFactory.getLogger(MobileController.class);
	private MobileService mobileService;
	private MobileAttendanceService mobileAttendanceService;
	private QnAService qnaService;
	private WorkManageService workmanage;
	private SalaryService salaryService;
	private MemberService memberService;


	// 테이블 형식 레이아웃 메인페이지
	@ResponseBody
	@RequestMapping(value = "m.workinfo", method = RequestMethod.POST)
	//	   @CrossOrigin(origins = "*", allowedHeaders = "*")
	public JSON tableBoardMain(@ModelAttribute("criteria") Criteria criteria,Model model, HttpServletRequest request, @RequestBody String id) throws Exception {
		logger.info(id);
		criteria.setId("p"+id);
		PageMaker pageMaker = new PageMaker();
		//		   criteria.setM_code("p"+loginDTO.getId()); // m_code니깐 앞에 p붙여줘야함.
		pageMaker.setCriteria(criteria);
		pageMaker.setTotalCount(mobileService.count_mobile_workplace_info("p"+id));
		System.out.println("mobileService.count_mobile_workplace_info(\"p\"+id) = "+mobileService.count_mobile_workplace_info("p"+id));
		
		model.addAttribute("message", "contractPage");
		model.addAttribute("contracts", mobileService.listCriteria(criteria));
		model.addAttribute("pageMaker", pageMaker);

		List<MobileWorkInfoVO> mobileWorkInfo;
		mobileWorkInfo = mobileService.listCriteria(criteria);
		JSONArray pJson = JSONArray.fromObject(mobileWorkInfo);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("pList", pJson);
		map.put("criteria", criteria);
		JSONObject json = JSONObject.fromObject(map);
		return json;

	}
	
	@ResponseBody
	@RequestMapping(value = "m.workManage", method = RequestMethod.POST)
	public JSON mobileWorkManagePOST(@RequestBody String p_id) throws Exception {
		logger.info(p_id);
		List<MobileWorkPlaceVO> mobileWorkPlaceVO;
		mobileWorkPlaceVO = mobileAttendanceService.mobileFoundWorkPlace(p_id);
		JSONArray pJson = JSONArray.fromObject(mobileWorkPlaceVO);
		return pJson;
	}
	
	@ResponseBody
	@RequestMapping(value = "/m.cworkManage", method = RequestMethod.GET)
	public JSON mobilecworkManagePOST(@RequestBody String id) throws Exception {
		logger.info(id);
		List<WorkManageVO> WorkManageVO;
		WorkManageVO = workmanage.listAll(id);
		JSONArray pJson = JSONArray.fromObject(WorkManageVO);
		return pJson;
	}
	
	@ResponseBody
	@RequestMapping(value = "/m.startWork", method = RequestMethod.POST)
	public JSON mobileStartWorkPOST(@RequestBody String str) throws Exception {
		//str에 담겨 있는 내용 -> '개인회원아이디/근무지명(workplace)/sa_code'
		String[] str_arr = str.split("/");
		String p_id = str_arr[0];
		String workplace = str_arr[1];
		String c_id = str_arr[4];
		
		String month = (new SimpleDateFormat("yyyyMM").format(new Date()));
		String time = (new SimpleDateFormat("yyyyMMdd HH:mm").format(new Date()));
		String w_code = p_id + "/" + time;
		
		String thisMonthSa_code = p_id.substring(1)+"/"+month+"/"+c_id;
		
		//출석하려면 work_record 테이블에 새로운 열을 추가해야 하는데, 그러기 위해선 w_code, sa_code, work_start_time가 필요하다.
		Map<String, String> map = new HashMap<String, String>();
		map.put("sa_code", thisMonthSa_code);
		map.put("work_start_time", time);
		map.put("w_code", w_code);
		
		//해당 월에 급여코드가 없다면 새로운 급여 코드를 만들고 출석한다. 급여코드가 있으면 그냥 출석한다.
		if(salaryService.select_salary(thisMonthSa_code) != null) {
			mobileAttendanceService.mobileStartWork(map);
		}else {
			salaryService.insert_salary(thisMonthSa_code);
			mobileAttendanceService.mobileStartWork(map);
		}
		
		JSONObject json = new JSONObject();
		json.put("message", "출근완료");
		return json;
	}
	
	@ResponseBody
	@RequestMapping(value = "/m.endtWork", method = RequestMethod.POST)
	public JSON mobileEndWorkPOST(@RequestBody String str) throws Exception {
		String[] str_arr = str.split("/");
		String p_id = str_arr[0];
		String workplace = str_arr[1];
		String c_id = str_arr[4];
		
		JSONObject json = new JSONObject();
		json.put("message", "퇴근완료");
		return json;
	}
	
	@ResponseBody
	@RequestMapping(value = "m.workRecord", method = RequestMethod.POST)
	public JSON mobileWorkRecordPOST(@RequestBody String sa_code) throws Exception {
		logger.info(sa_code);
		List<MobileWorkRecordVO> mobileWorkRecordVO;
		mobileWorkRecordVO = mobileAttendanceService.mobileFoundWorkRecord(sa_code);
		String str = mobileWorkRecordVO.get(0).getW_code();
		logger.info(str);
		JSONArray pJson = JSONArray.fromObject(mobileWorkRecordVO);
		return pJson;
	}
	
	@ResponseBody
	@RequestMapping("m.cworkRecord")
	public List<MobileCWorkRecordVO> cmobileWorkRecordPOST(String id, String p_id) throws Exception {
		logger.info("sss");
		logger.info(id);
		logger.info(p_id);
		Map<String, String> id_map = new HashMap<String, String>();
		id_map.put("id", id);
		id_map.put("p_id", p_id);
		List<MobileCWorkRecordVO> list = mobileAttendanceService.mobileCFoundWorkRecord(id_map);
		logger.info("workManager:  "+list.toString());
		/*
		 * ModelAndView mav = new ModelAndView(); mav.setViewName("cworkManage.html");
		 * Map<String, Object> map = new HashMap<String, Object>();
		 * map.put("list",list);
		 * 
		 * mav.addObject("map", map);
		 */
		return list;
		
	}
	
	@ResponseBody
	@RequestMapping("m.cworkname")
	public JSON getListPOST(String id) throws Exception {
		logger.info(id);
		MemberVO memberVO;
		memberVO = memberService.getList(id);
		JSONArray list = JSONArray.fromObject(memberVO);
//		logger.info("workManager:  "+list.toString());
		return list;
		
	}
	
			
	
	@ResponseBody
	@RequestMapping(value = "m.salaryInfo", method = RequestMethod.POST)
	public JSON mobileSalaryInfoPOST(@RequestBody String m_code) throws Exception {
		logger.info(m_code);
		List<MobileSalaryInfoVO> mobileSalaryInfoVO;
		mobileSalaryInfoVO = mobileService.salaryInfo(m_code);
		JSONArray pJson = JSONArray.fromObject(mobileSalaryInfoVO);
		return pJson;
	}
	
	@ResponseBody
	@RequestMapping(value = "m.qnalist", method = RequestMethod.POST)
	public JSON qnaListPOST(@ModelAttribute("criteria") Criteria criteria, @RequestBody String m_code) throws Exception {
		PageMaker pageMaker = new PageMaker();
		criteria.setM_code(m_code); // m_code니깐 앞에 p붙여줘야함.
		logger.info(m_code);
		
	    pageMaker.setCriteria(criteria);
	    pageMaker.setTotalCount(qnaService.count_qna(m_code));
	    
	    criteria.setId(m_code);
		logger.info(Integer.toString(criteria.getPageStart()));
		logger.info(Integer.toString(criteria.getPerPageNum()));
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("qnas", qnaService.listCriteria(criteria));
		map.put("pageMaker", pageMaker);
		JSONObject json = JSONObject.fromObject(map);
		return json;
	}
	
	@ResponseBody
	@RequestMapping(value= "/m.viewQnA", method = RequestMethod.POST)
	public JSON viewQnA(HttpServletRequest request,@RequestBody String cs_code) throws Exception {
		logger.info("viewQnA");
		JSONObject pJson = JSONObject.fromObject(qnaService.select_qna(cs_code));
		
		logger.info(qnaService.select_qna(cs_code).toString());
		
		return pJson;
	}
	
}
