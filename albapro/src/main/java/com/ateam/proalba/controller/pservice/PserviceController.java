package com.ateam.proalba.controller.pservice;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ateam.proalba.domain.CareerVO;
import com.ateam.proalba.domain.Criteria;
import com.ateam.proalba.domain.LoginDTO;
import com.ateam.proalba.domain.PageMaker;
import com.ateam.proalba.domain.ResumeVO;
import com.ateam.proalba.domain.SalaryVO;
import com.ateam.proalba.service.CareerService;
import com.ateam.proalba.service.ResumeService;
import com.ateam.proalba.service.SalaryService;

import net.sf.json.JSONArray;


@Controller
public class PserviceController {
	private static final Logger logger = LoggerFactory.getLogger(PserviceController.class);
	private final CareerService careerService;
	private final SalaryService salaryService;
	private final ResumeService resumeService;
	
	@Inject
	public PserviceController(CareerService careerService, SalaryService salaryService, ResumeService resumeService) {
		this.resumeService = resumeService;
		this.careerService = careerService;
		this.salaryService = salaryService;
	}

	@RequestMapping("/pservice")
	public String pservice(Model model) {
		logger.info("Welcome PservicePage");
		model.addAttribute("message", "");
		return "pservice/pservice";
	}
	
	@RequestMapping(value = "/writeResume", method = RequestMethod.GET)
	public String wresumeGET(Model model, @RequestParam("id") String id) throws Exception {
		logger.info("Welcome wresumePage");
		
		List<CareerVO> careerVO = careerService.selectCareers("p"+id);
		
		model.addAttribute("careers", careerVO);
		model.addAttribute("message", "wresumePage");
		return "servicepage/pserwriteResume";
	}
	
	@RequestMapping(value = "/writeResume", method = RequestMethod.POST)
	public String wresumePOST(Model model, ResumeVO resumeVO) throws Exception {
		logger.info("Welcome wresumePage");
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
		model.addAttribute("message", "wresumePage");
		return "redirect:/listResume?id="+id;
	}
	
	@RequestMapping(value = "/listResume", method = RequestMethod.GET)
	public ModelAndView listResumeGET(Model model, @RequestParam("id") String id) throws Exception {
		logger.info("listResumeGET's id : " + id);
		logger.info("Welcome wresumePage");
		model.addAttribute("message", "wresumePage");
		
		List<ResumeVO> list = resumeService.list_resume(id);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("servicepage/pserResumeList");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list",list);
		
		mav.addObject("map", map);
		return mav;
	}
	
	@RequestMapping(value = "/viewResume", method = RequestMethod.GET)
	public String viewResumeGET(Model model, @RequestParam("r_code") String r_code, @RequestParam("id") String id) throws Exception {
		logger.info("Welcome wresumePage");
		
		List<CareerVO> careerVO = careerService.selectCareers("p"+id);
		
		model.addAttribute("careers", careerVO);
		
		ResumeVO resumeVO = resumeService.view_resume(r_code);
		
		model.addAttribute("resume", resumeVO);
		return "servicepage/pserResumeUpdate";
	}
	
	@RequestMapping(value = "/updateResume", method = RequestMethod.POST)
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
		
		resumeService.update_resume(map);
		model.addAttribute("message", "wresumePage");
		return "redirect:/listResume?id="+id;
	}
	
	@RequestMapping(value = "/deleteResume", method = RequestMethod.GET)
	public String deleteResumeGET(Model model, @RequestParam("r_code") String r_code, @RequestParam("id") String id) throws Exception {
		
		resumeService.delete_resume(r_code);

		return "redirect:/listResume?id="+id;
	}
	
	@RequestMapping(value = "/ecertifi", method = RequestMethod.GET)
	public String ecertifiGET(Model model) throws Exception {
		logger.info("Welcome ecertifiPage");
		model.addAttribute("message", "ecertifiPage");
		return "pservice/ecertifi";
	}
	
	@RequestMapping(value = "/pserSalary", method = RequestMethod.GET)
	public ModelAndView inqsalaryGET(Model model,@RequestParam("id") String id,@RequestParam("work_place") String work_place) throws Exception {
		logger.info("Welcome inqsalaryPage");
		
		Map<String, String> id_work_place = new HashMap<String, String>();
		id_work_place.put("id", id);
		id_work_place.put("work_place", work_place);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("servicepage/pserSalary");
		
		List<SalaryVO> list = salaryService.pserSalary(id_work_place);
		
		JSONArray pJson = JSONArray.fromObject(list);
		model.addAttribute("salarys", pJson);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list",list);
		
		mav.addObject("map", map);
		mav.addObject("salarys", pJson);
		
		System.out.println("SalaryVO List : " + mav);
		return mav;
	}
	
	@RequestMapping(value = "/pserworkList", method = RequestMethod.GET)
	public ModelAndView pworkListGET(Model model,@RequestParam("id") String id) throws Exception {
		model.addAttribute("message", "");
		List<CareerVO> list = careerService.selectCareers("p"+id);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("servicepage/pserworkList");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list",list);
		
		mav.addObject("map", map);
		return mav;
	}
		
	@RequestMapping(value = "/inqcareer", method = RequestMethod.GET)
	public ModelAndView inqcareerGET(Model model,@RequestParam("id") String id) throws Exception {
		model.addAttribute("message", "");
		List<CareerVO> list = careerService.selectCareers("p"+id);
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("servicepage/pserInqcareer");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list",list);
		
		mav.addObject("map", map);
		return mav;
	}
	

	@RequestMapping(value = "/employmentinfo", method = RequestMethod.GET)
	public String employmentinfoGET(Model model) throws Exception {
		logger.info("Welcome inqcareerPage");
		model.addAttribute("message", "inqcareerPage");
		return "pservice/employmentinfo";
	}

	  @RequestMapping(value = "/pmypage", method = RequestMethod.GET)
	  public String ModifyGet (HttpSession httpSession, Model model) throws Exception {
		  logger.info("pmypage");

			return "pservice/pmypage"; 

	  }
	
}
