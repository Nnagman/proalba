package com.ateam.proalba.controller.mobile;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ateam.proalba.domain.Criteria;
import com.ateam.proalba.domain.MemberVO;
import com.ateam.proalba.domain.PageMaker;
import com.ateam.proalba.domain.WcontractVO;
import com.ateam.proalba.domain.WorkManageVO;
import com.ateam.proalba.domain.mobile.MobileCWorkRecordVO;
import com.ateam.proalba.domain.mobile.MobileSalaryInfoVO;
import com.ateam.proalba.domain.mobile.MobileWorkInfoVO;
import com.ateam.proalba.domain.mobile.MobileWorkPlaceVO;
import com.ateam.proalba.domain.mobile.MobileWorkRecordVO;
import com.ateam.proalba.service.ContractService;
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
	private ContractService contractService;


	// ���̺� ���� ���̾ƿ� ����������
	@ResponseBody
	@RequestMapping(value = "m.workinfo", method = RequestMethod.POST)
	//	   @CrossOrigin(origins = "*", allowedHeaders = "*")
	public JSON tableBoardMain(@ModelAttribute("criteria") Criteria criteria,Model model, HttpServletRequest request, @RequestBody String id) throws Exception {
		logger.info(id);
		criteria.setId("p"+id);
		PageMaker pageMaker = new PageMaker();
		//		   criteria.setM_code("p"+loginDTO.getId()); // m_code�ϱ� �տ� p�ٿ������.
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
		//str�� ��� �ִ� ���� -> '����ȸ�����̵�/�ٹ�����(workplace)/sa_code'
		String[] str_arr = str.split("/");
		String p_id = str_arr[0];
		String workplace = str_arr[1];
		String c_id = str_arr[4];
		
		String month = (new SimpleDateFormat("yyyyMM").format(new Date()));
		String time = (new SimpleDateFormat("yyyyMMdd HH:mm").format(new Date()));
		String w_code = p_id + "/" + time;
		
		String thisMonthSa_code = p_id.substring(1)+"/"+month+"/"+c_id;
		
		//�⼮�Ϸ��� work_record ���̺� ���ο� ���� �߰��ؾ� �ϴµ�, �׷��� ���ؼ� w_code, sa_code, work_start_time�� �ʿ��ϴ�.
		Map<String, String> map = new HashMap<String, String>();
		map.put("sa_code", thisMonthSa_code);
		map.put("work_start_time", time);
		map.put("w_code", w_code);
		
		//�ش� ���� �޿��ڵ尡 ���ٸ� ���ο� �޿� �ڵ带 ����� �⼮�Ѵ�. �޿��ڵ尡 ������ �׳� �⼮�Ѵ�.
		if(salaryService.select_salary(thisMonthSa_code) != null) {
			mobileAttendanceService.mobileStartWork(map);
		}else {
			//salaryService.insert_salary(thisMonthSa_code);
			mobileAttendanceService.mobileStartWork(map);
		}
		
		JSONObject json = new JSONObject();
		json.put("message", "��ٿϷ�");
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
		json.put("message", "��ٿϷ�");
		return json;
	}
	
	@ResponseBody
	@RequestMapping("m.workRecord")
	public List<MobileWorkRecordVO> mobileWorkRecordPOST(String id, String work_place) throws Exception {
		logger.info("sss");
		logger.info(id);
		logger.info(work_place);
		Map<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("work_place", work_place);
		List<MobileWorkRecordVO> list = mobileAttendanceService.mobileFoundWorkRecord(map);
		logger.info("workManager:  "+list.toString());
//		List<MobileWorkRecordVO> mobileWorkRecordVO;
//		mobileWorkRecordVO = mobileAttendanceService.mobileFoundWorkRecord(id);
//		String str = mobileWorkRecordVO.get(0).getW_code();
//		logger.info(str);
//		JSONArray pJson = JSONArray.fromObject(mobileWorkRecordVO);
		return list;
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
		logger.info("salaryInfo:  "+pJson.toString());
		return pJson;
	}
	
	@ResponseBody
	@RequestMapping(value = "m.qnalist", method = RequestMethod.POST)
	public JSON qnaListPOST(@ModelAttribute("criteria") Criteria criteria, @RequestBody String m_code) throws Exception {
		PageMaker pageMaker = new PageMaker();
		criteria.setM_code(m_code); // m_code�ϱ� �տ� p�ٿ������.
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
	
	@ResponseBody
	@RequestMapping(value= "/m.getContList", method = RequestMethod.POST)
	public List<WcontractVO> getContList(HttpServletRequest request,@RequestBody String id) throws Exception {
		logger.info("getContList");
		String m_code = memberService.getMcode(id);
		List<WcontractVO> list = contractService.select_contract(m_code);
		logger.info(list.toString());
		return list;
	}
	
	@ResponseBody
	@RequestMapping(value = "/m.vcontract", method = RequestMethod.POST)
	public WcontractVO contractGET(@RequestBody String c_code) throws Exception {	
		WcontractVO wcontractVO = contractService.select_contract3(c_code);
		logger.info("m.vcontract");
		return wcontractVO;
	}
	
	@ResponseBody
	@RequestMapping(value = "/m.gebnum", method = RequestMethod.POST)
	public Map<String, String> gebnum(String id) throws Exception {	
		logger.info("dd");
		logger.info(id);
		String bnum = memberService.getbnum(id);
		Map<String,String> map=new HashMap<String,String>();
		map.put("b_num",bnum);
		return map;
	}
	
	@ResponseBody
	@RequestMapping(value = "/m.cserWcontract", method = RequestMethod.POST)
	public Map<String, Object> wcontractPOST(ServletRequest request, WcontractVO wcontractVO, Model model) throws Exception {
		SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		date = transFormat.parse(transFormat.format(date));
				
		logger.info(wcontractVO.toString());
		
		String[] id = new String[2];
		id[1] = wcontractVO.getP_phone();
		id[0] = wcontractVO.getC_id();
		
		
		Map<String, String[]> id_map = new HashMap<String, String[]>();
		id_map.put("id", id);
		
		WcontractVO check_wcontractVO = contractService.select_contract2(id_map);
		
		if(check_wcontractVO != null && (transFormat.parse(check_wcontractVO.getEnd_period()).compareTo(date) != -1)){
			List<WcontractVO> list = contractService.select_contract(wcontractVO.getC_id());
		
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("list",list);
			map.put("message", "등록 실패. 기존의 계약서와 새로운 계약서의 기간이 중복됩니다.");
			
			return map;
		}
		
		wcontractVO.setC_date(transFormat.format(new java.util.Date()));
		contractService.add_contract(wcontractVO);
		
		List<WcontractVO> list = contractService.select_contract(wcontractVO.getC_id());
		logger.info(list.toString());

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list",list);
		map.put("message","계약서 등록 완료");
		map.put("check","success");
		return map;
	}
	
}