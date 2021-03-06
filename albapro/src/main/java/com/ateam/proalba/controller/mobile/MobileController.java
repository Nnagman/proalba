package com.ateam.proalba.controller.mobile;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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

import com.ateam.proalba.domain.CareerVO;
import com.ateam.proalba.domain.Criteria;
import com.ateam.proalba.domain.MemberVO;
import com.ateam.proalba.domain.NoticeVO;
import com.ateam.proalba.domain.PageMaker;
import com.ateam.proalba.domain.QnAVO;
import com.ateam.proalba.domain.ResumeVO;
import com.ateam.proalba.domain.WcontractVO;
import com.ateam.proalba.domain.WorkManageVO;
import com.ateam.proalba.domain.mobile.MobileAttendanceVO;
import com.ateam.proalba.domain.mobile.MobileCWorkRecordVO;
import com.ateam.proalba.domain.mobile.MobileNoticeVO;
import com.ateam.proalba.domain.mobile.MobileSalaryInfoVO;
import com.ateam.proalba.domain.mobile.MobileWorkInfoVO;
import com.ateam.proalba.domain.mobile.MobileWorkManageVO;
import com.ateam.proalba.domain.mobile.MobileWorkPlaceVO;
import com.ateam.proalba.domain.mobile.MobileWorkRecordVO;
import com.ateam.proalba.service.AddJobOpeningService;
import com.ateam.proalba.service.CareerService;
import com.ateam.proalba.service.ContractService;
import com.ateam.proalba.service.MemberService;
import com.ateam.proalba.service.ResumeService;
import com.ateam.proalba.service.SalaryService;
import com.ateam.proalba.service.WorkManageService;
import com.ateam.proalba.service.mobile.MobileAttendanceService;
import com.ateam.proalba.service.mobile.MobileService;
import com.ateam.proalba.service.qna.QnAService;
import com.ateam.proalba.service.recruinfo.RecruinfoService;
import com.google.gson.JsonArray;
import com.google.gson.JsonParser;

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
	private CareerService careerService;
	private AddJobOpeningService addJobOpeningService;
	private ResumeService resumeService;
	private RecruinfoService recruinfoService;


	private ContractService contractService;

	// 占쏙옙占싱븝옙 占쏙옙占쏙옙 占쏙옙占싱아울옙 占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙
	@ResponseBody
	@RequestMapping(value = "m.workinfo", method = RequestMethod.POST)
	// @CrossOrigin(origins = "*", allowedHeaders = "*")
	public JSON tableBoardMain(@ModelAttribute("criteria") Criteria criteria, Model model, HttpServletRequest request,
			@RequestBody String id) throws Exception {
		logger.info(id);
		criteria.setId("p" + id);
		PageMaker pageMaker = new PageMaker();
		// criteria.setM_code("p"+loginDTO.getId()); // m_code占싹깍옙 占쌌울옙 p占쌕울옙占쏙옙占쏙옙占�.
		pageMaker.setCriteria(criteria);
		pageMaker.setTotalCount(mobileService.count_mobile_workplace_info("p" + id));
		System.out.println("mobileService.count_mobile_workplace_info(\"p\"+id) = "
				+ mobileService.count_mobile_workplace_info("p" + id));

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
	@RequestMapping(value = "/m.cworkmanage", method = RequestMethod.POST)
	public JSON mcworkmanageGET(@RequestBody String id) throws Exception {

		logger.info("c id:  " + id);
	
		List<MobileWorkManageVO> list = mobileAttendanceService.mobileCWorkManage(id);
		for (MobileWorkManageVO MobileWorkManageVO : list) {
			if (MobileWorkManageVO.getEnd_date() == null) {
				Date date = MobileWorkManageVO.getJoin_date();
				MobileWorkManageVO.setEnd_date(date);
			}
		}
		logger.info("fdfd"+list.toString());
		JSONArray pJson = JSONArray.fromObject(list);
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
	@RequestMapping(value = "/m.recruinfoDetail", method = RequestMethod.POST)
	public JSON mobilerecruinfoDetail(@RequestBody String n_code) throws Exception {

		logger.info("n_code:" + n_code);
		List<MobileNoticeVO> MobileNoticeVO;
		MobileNoticeVO = mobileService.mobile_recruinfode(n_code);
		JSONArray pJson = JSONArray.fromObject(MobileNoticeVO);
		logger.info("mobile_recruinfode:" + pJson.toString());
		return pJson;

	}

	/* 모바일 개인 경력 */
	@ResponseBody
	@RequestMapping(value = "/m.pinqcareer", method = RequestMethod.POST)
	public JSON inqcareer(@RequestBody String m_code, HttpServletResponse response) throws Exception {

		List<CareerVO> list = mobileService.mobile_inqcareer(m_code);

		for (CareerVO careerVO : list) {
			if (careerVO.getEnd_date() == null) {
				Date date = careerVO.getJoin_date();
				careerVO.setEnd_date(date);
			}
		}

		JSONArray pJson = JSONArray.fromObject(list);
	

		logger.info("mobile_inqcareer:" + pJson.toString());
	

		return pJson;
	}
	/* 모바일 개인 경력 */

	@ResponseBody
	@RequestMapping(value = "/m.startWork", method = RequestMethod.POST)
	public JSON mobileStartWorkPOST(@RequestBody String str) throws Exception {
		// str占쏙옙 占쏙옙占� 占쌍댐옙 占쏙옙占쏙옙 -> '占쏙옙占쏙옙회占쏙옙占쏙옙占싱듸옙/占쌕뱄옙占쏙옙占쏙옙(workplace)/sa_code'
		String[] str_arr = str.split("/");
		String p_id = str_arr[0];
		String workplace = str_arr[1];
		String c_id = str_arr[4];

		String month = (new SimpleDateFormat("yyyyMM").format(new Date()));
		String time = (new SimpleDateFormat("yyyyMMdd HH:mm").format(new Date()));
		String w_code = p_id + "/" + time;

		String thisMonthSa_code = p_id.substring(1) + "/" + month + "/" + c_id;

		// 占썩석占싹뤄옙占쏙옙 work_record 占쏙옙占싱븝옙 占쏙옙占싸울옙 占쏙옙占쏙옙 占쌩곤옙占쌔억옙 占싹는듸옙, 占쌓뤄옙占쏙옙 占쏙옙占쌔쇽옙
		// w_code, sa_code, work_start_time占쏙옙 占십울옙占싹댐옙.
		Map<String, String> map = new HashMap<String, String>();
		map.put("sa_code", thisMonthSa_code);
		map.put("work_start_time", time);
		map.put("w_code", w_code);

		// 占쌔댐옙 占쏙옙占쏙옙 占쌨울옙占쌘드가 占쏙옙占쌕몌옙 占쏙옙占싸울옙 占쌨울옙 占쌘드를 占쏙옙占쏙옙占� 占썩석占싼댐옙. 占쌨울옙占쌘드가
		// 占쏙옙占쏙옙占쏙옙 占쌓놂옙 占썩석占싼댐옙.
		if (salaryService.select_salary(thisMonthSa_code) != null) {
			mobileAttendanceService.mobileStartWork(map);
		} else {
			// salaryService.insert_salary(thisMonthSa_code);
			mobileAttendanceService.mobileStartWork(map);
		}

		JSONObject json = new JSONObject();
		json.put("message", "占쏙옙牟狗占�");
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
		json.put("message", "占쏙옙牟狗占�");
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
		logger.info("workManager:  " + list.toString());
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
		logger.info("workManager:  " + list.toString());
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
	@RequestMapping(value = "/m.Inqcareer", method = RequestMethod.POST)
	public List inqcareerPOST(@RequestBody String m_code) throws Exception {
		logger.info("ㅇㅇ");
		List<CareerVO> list = careerService.selectCareers(m_code);
		logger.info(list.toString());
		return list;
	}
	
	

	/* 모바일 출근현황 */
	@ResponseBody
	@RequestMapping(value = "m.attendancecheck", method = RequestMethod.POST)
	public JSON mobileattendancecheckPOST(@RequestBody String id) throws Exception {
		logger.info(id);
		List<MobileAttendanceVO> mobileAttendanceVO;
		mobileAttendanceVO = mobileService.mo_attendance_check(id);
		JSONArray pJson = JSONArray.fromObject(mobileAttendanceVO);
		logger.info("mo_attendance_check:  " + pJson.toString());
		return pJson;
	}
	/* 모바일 출근현황 */
	
	/* 모바일 채용공고 작성 */
	@ResponseBody
	@RequestMapping(value = "/m.cserAddJobopening_free", method = RequestMethod.POST)
	public String addjobopeningfreePOST(NoticeVO noticeVO) throws Exception {
		logger.info("채용공고 작성");
		logger.info(noticeVO.toString());
		addJobOpeningService.addJobOpening(noticeVO);

		String m_code = noticeVO.getM_code();
		String id = m_code.substring(1);
		List<NoticeVO> list=recruinfoService.get_addjobopening_free_manage_list(id);
		
		logger.info(list.toString());

		return "redirect:/recruinfo";


	}

	/* 모바일 채용공고 관리 */
	@ResponseBody
	@RequestMapping(value = "m.AddJobfreemanage", method = RequestMethod.POST)
	public JSON mobileAddJobopening_free_manage(@RequestBody String id) throws Exception {
		logger.info(id + " ?????");
		List<MobileNoticeVO> MobileNoticeVO;
		MobileNoticeVO = mobileService.mobile_addjobopening_free_manage_list(id);
		JSONArray pJson = JSONArray.fromObject(MobileNoticeVO);
		logger.info("AddJobopeningfreemanage:  " + pJson.toString());
		return pJson;
	}

	/* 모바일 채용공고 관리 */

	/* 모바일 채용공고 페이지 */
	@ResponseBody
	@RequestMapping(value = "m.recruinfo", method = RequestMethod.POST)
	public JSON recruinfo() throws Exception {

		List<MobileNoticeVO> MobileNoticeVO;

		MobileNoticeVO = mobileService.mobile_recruinfo();
		JSONArray pJson = JSONArray.fromObject(MobileNoticeVO);
		logger.info("notice:  " + pJson.toString());

		return pJson;
	}
	/* 모바일 채용공고 페이지 */

	@ResponseBody
	@RequestMapping(value = "m.salaryInfo", method = RequestMethod.POST)
	public JSON mobileSalaryInfoPOST(@RequestBody String m_code) throws Exception {
		logger.info(m_code);
		List<MobileSalaryInfoVO> mobileSalaryInfoVO;
		mobileSalaryInfoVO = mobileService.salaryInfo(m_code);
		JSONArray pJson = JSONArray.fromObject(mobileSalaryInfoVO);
		logger.info("salaryInfo:  " + pJson.toString());
		return pJson;
	}
	
	/* 모바일 개인 계약서 목록 */
	@ResponseBody
	@RequestMapping(value = "/m.contract", method = RequestMethod.POST)
	public JSON pcontractPOST(@RequestBody String id) throws Exception {
	
		List<WcontractVO> wcontractVO;  
		wcontractVO = contractService.select_contract("p"+id);
	
		
		JSONArray pJson = JSONArray.fromObject(wcontractVO);
		logger.info("WcontractVO:  " + pJson.toString());
		return pJson;
	
	}
	/* 모바일 개인 계약서 목록 */

//	고객센터	
	@ResponseBody
	@RequestMapping(value = "/m.onlineQnA", method = RequestMethod.POST)
	public String add_qnaPOST(HttpServletRequest request, QnAVO qnaVO) throws Exception {
		logger.info(qnaVO.toString());
		qnaService.add_qna(qnaVO);
		
		return "redirect:/onlineQnA";
	}
	
	
	@ResponseBody
	@RequestMapping(value = "m.qnalist", method = RequestMethod.POST)
	public JSON qnaListPOST(@ModelAttribute("criteria") Criteria criteria, @RequestBody String m_code)
			throws Exception {
		PageMaker pageMaker = new PageMaker();
		criteria.setM_code(m_code); // m_code占싹깍옙 占쌌울옙 p占쌕울옙占쏙옙占쏙옙占�.
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
	@RequestMapping(value = "/m.viewQnA", method = RequestMethod.POST)
	public JSON viewQnA(HttpServletRequest request, @RequestBody String cs_code) throws Exception {
		logger.info("viewQnA");
		JSONObject pJson = JSONObject.fromObject(qnaService.select_qna(cs_code));

		logger.info(qnaService.select_qna(cs_code).toString());

		return pJson;
	}
	
	

	

	@ResponseBody
	@RequestMapping(value = "/m.getContList", method = RequestMethod.POST)
	public List<WcontractVO> getContList(HttpServletRequest request, @RequestBody String id) throws Exception {
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
		Map<String, String> map = new HashMap<String, String>();
		map.put("b_num", bnum);
		return map;
	}

	@ResponseBody
	@RequestMapping(value = "/m.cserWcontract", method = RequestMethod.POST)
	public Map<String, Object> wcontractPOST(ServletRequest request, WcontractVO wcontractVO, Model model)
			throws Exception {
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

		if (check_wcontractVO != null && (transFormat.parse(check_wcontractVO.getEnd_period()).compareTo(date) != -1)) {
			List<WcontractVO> list = contractService.select_contract(wcontractVO.getC_id());

			Map<String, Object> map = new HashMap<String, Object>();
			map.put("list", list);
			map.put("message", "�깅� �ㅽ��. 湲곗〈�� 怨��쎌���� ��濡��� 怨��쎌���� 湲곌��� 以�蹂듬�⑸����.");

			return map;
		}

		wcontractVO.setC_date(transFormat.format(new java.util.Date()));
		contractService.add_contract(wcontractVO);

		List<WcontractVO> list = contractService.select_contract(wcontractVO.getC_id());
		logger.info(list.toString());

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		map.put("message", "怨��쎌�� �깅� ��猷�");
		map.put("check", "success");
		return map;
	}
	
	@ResponseBody
	@RequestMapping(value = "/m.writeResume", method = RequestMethod.POST)
	public String wresumePOST(ResumeVO resumeVO) throws Exception {
		logger.info("Welcome wresumePage");
		System.out.println(resumeVO);
		
		String id = resumeVO.getId();
		
		SimpleDateFormat fmt = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		Date date = new Date();
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("r_code", id + "/" + fmt.format(date));
		map.put("m_code", "p" + id);
		map.put("title", resumeVO.getTitle());
		map.put("address", resumeVO.getAddress());
		map.put("content", resumeVO.getContent());
		map.put("file_name", resumeVO.getFile_name());
		map.put("education", resumeVO.getEducation());
		map.put("license", resumeVO.getLicense());
		
		resumeService.write_resume(map);
//		model.addAttribute("message", "wresumePage");
		return "redirect:/listResume?id="+id;
	}
	
	@ResponseBody
	@RequestMapping(value = "/m.listResume", method = RequestMethod.POST)
	public  List<ResumeVO> listResumeGET(@RequestBody String id) throws Exception {
		logger.info("listResumeGET's id : " + id);
		logger.info("Welcome wresumePage");
		
		List<ResumeVO> list = resumeService.list_resume(id);
		
		System.out.println(list);

		return list;
	}
	
	@ResponseBody
	@RequestMapping(value = "/m.deleteResume", method = RequestMethod.POST)
	public String deleteResumePOST(@RequestBody String r_code) throws Exception {
		
		logger.info("r_code: " + r_code);
		resumeService.delete_resume(r_code);
		System.out.println("이력서 삭제");

		return "redirect:/listResume";
	}
	
	@ResponseBody
	@RequestMapping(value = "/m.viewResume", method = RequestMethod.POST)
	public JSON viewResumePOST(String r_code, String id) throws Exception {
		logger.info("Welcome resumePage");
		logger.info(r_code +" "+ id);
		
		List<CareerVO> careerVO = careerService.selectCareers("p"+id);
	
		List<ResumeVO> list = mobileService.mobile_view_resume(r_code);
		JSONArray pJson = JSONArray.fromObject(list);
		System.out.println(list);
		
		System.out.println("이력서 출력");
		
		return pJson;
	}
	
	@ResponseBody
	@RequestMapping(value = "/m.updateResume", method = RequestMethod.POST)
	public String updateResumePOST(Model model, ResumeVO resumeVO) throws Exception {
		logger.info("Welcome wresumePage");
		String id = resumeVO.getId();
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("r_code", resumeVO.getR_code());
		map.put("title", resumeVO.getTitle());
		map.put("address", resumeVO.getAddress());
		map.put("content", resumeVO.getContent());
		map.put("file_name", resumeVO.getFile_name());
		map.put("education", resumeVO.getEducation());
		map.put("late_status", resumeVO.getLate_status());
		System.out.println(resumeVO.getLate_status());
		resumeService.update_resume(map);
		model.addAttribute("message", "wresumePage");
		return "redirect:/listResume?id="+id;
	}
	
	@ResponseBody
	@RequestMapping(value="/m.applyResume", method=RequestMethod.POST)
	public String applyResume(String r_code, String n_code) throws Exception {
		String r_code2 = new String();
		
		int length = r_code.length();
		r_code2 = r_code.substring(0, length-9) + " " + r_code.substring(length-8);
		
		logger.info(r_code +" "+ n_code);
		Map<String, String> map = new HashMap<String, String>();
		map.put("r_code", r_code2);
		map.put("n_code", n_code);

		
		resumeService.apply_resume(map);


		return "redirect:/recruinfoDe";
	}
	
	

}