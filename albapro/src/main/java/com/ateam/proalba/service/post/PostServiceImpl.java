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
		
		title = title.replace("<", "&lt;");
		title = title.replace("<", "&gt;");
		id = id.replace("<", "&lt;");
		id = id.replace("<", "&gt;");

		title = title.replace("  ",	"&nbsp;&nbsp;");
		id = id.replace("  ",	"&nbsp;&nbsp;");

		content = content.replace("\n", "<br>");
		vo.setTitle(title);
		vo.setP_content(content);
		vo.setId(id);

		int curP_code = postDao.create(vo);
		System.out.println("curP_code : "+curP_code);
		

		String[] files = vo.getFiles();
		if(files == null) return;

		for(String name : files){
			if(name.equals("undefined")) {
				return;
			}
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

		if(session.getAttribute("update_time_"+p_code) != null){

			update_time = (long)session.getAttribute("update_time_"+p_code);
		}

		long current_time = System.currentTimeMillis();

		if(current_time - update_time > 5*1000){
			postDao.increaseViewcnt(p_code);

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
		if(files == null) return;

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
