package com.ateam.proalba.service.post;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ateam.proalba.domain.AttachVO;
import com.ateam.proalba.domain.PostVO;
import com.ateam.proalba.persistence.post.PostDAO;

@Service
public class PostServiceImpl implements PostService{

	@Autowired
	PostDAO postDao;
	
	@Override
	public List<PostVO> listAll(int start, int end, String search_option, String keyword) throws Exception {
		return postDao.listAll(start, end, search_option, keyword);
	}

	@Override
	public int countArticle(String search_option, String keyword) throws Exception {
		return postDao.countArticle(search_option, keyword);
	}

	@Override
	public PostVO read(int p_code) throws Exception {
		return postDao.read(p_code);
	}

	@Transactional
	@Override
	public void create(PostVO vo) throws Exception {
		String title = vo.getTitle();
		String content = vo.getP_content();
		String id = vo.getId();
		// *태그문자 처리 (< ==> &lt; > ==> &gt;)
		// replace(A, B) A를 B로 변경
		title = title.replace("<", "&lt;");
		title = title.replace("<", "&gt;");
		id = id.replace("<", "&lt;");
		id = id.replace("<", "&gt;");
		// *공백문자 처리  
		title = title.replace("  ",	"&nbsp;&nbsp;");
		id = id.replace("  ",	"&nbsp;&nbsp;");
		// *줄바꿈 문자처리
		content = content.replace("\n", "<br>");
		vo.setTitle(title);
		vo.setP_content(content);
		vo.setId(id);
		// 게시물 등록
		int curP_code = postDao.create(vo);
		System.out.println("curP_code : "+curP_code);
		
		// 게시물의 첨부파일 정보 등록
		String[] files = vo.getFiles(); // 첨부파일 배열
		if(files == null) return; // 첨부파일이 없으면 메서드 종료
		// 첨부파일들의 정보를 tbl_attach 테이블에 insert
		for(String name : files){ 
			System.out.println("addAttach Service, name: " + name);
			postDao.addAttach(name, curP_code);
		}
	}

	@Override
	public String getMcode(String id) throws Exception {
		return postDao.getMcode(id);
	}

	@Override
	public List<AttachVO> listAttach(int p_code) throws Exception {
		return postDao.listAttach(p_code);

	}

	@Override
	public void increaseViewcnt(int p_code, HttpSession session) throws Exception {
		long update_time = 0;
		// 세션에 저장된 조회시간 검색
		// 최초로 조회할 경우 세션에 저장된 값이 없기 때문에 if문은 실행X
		if(session.getAttribute("update_time_"+p_code) != null){
								// 세션에서 읽어오기
			update_time = (long)session.getAttribute("update_time_"+p_code);
		}
		// 시스템의 현재시간을 current_time에 저장
		long current_time = System.currentTimeMillis();
		// 일정시간이 경과 후 조회수 증가 처리 24*60*60*1000(24시간)
		 // 시스템현재시간 - 열람시간 > 일정시간(조회수 증가가 가능하도록 지정한 시간)
		if(current_time - update_time > 5*1000){
			postDao.increaseViewcnt(p_code);
			// 세션에 시간을 저장 : "update_time_"+bno는 다른변수와 중복되지 않게 명명한 것
			session.setAttribute("update_time_"+p_code, current_time);
			
		}
		
	}

	@Override
	public void deleteFile(String fullName) throws Exception {
		postDao.deleteFile(fullName);
	}

	@Override
	public void update(PostVO vo) throws Exception {
		postDao.update(vo);
		String[] files = vo.getFiles();
		if(files == null) return; // 첨부파일이 없으면 메서드 종료
		// 첨부파일들의 정보를 tbl_attach 테이블에 insert
		for(String name : files){ 
			System.out.println("addAttach Service, name: " + name);
			postDao.addAttach(name, vo.getP_code());
		}
		
	}

	@Override
	public void delete(int p_code) throws Exception {
		postDao.delete(p_code);
	}

}
