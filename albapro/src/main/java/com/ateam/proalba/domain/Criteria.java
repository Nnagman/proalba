package com.ateam.proalba.domain;

import lombok.Data;

//íŽ˜ì�´ì§•ì²˜ë¦¬ë¥¼ ìœ„í•œ ê¸°ì¤€ í�´ëž˜ìŠ¤
//íŽ˜ì�´ì§€ ë‹¹ ê²Œì‹œê¸€ì�˜ ê°¯ìˆ˜ë¥¼ íŒŒë�¼ë¯¸í„°ë¥¼ ë°›ì�„ ê²½ìš°, LIMIT #{pageStart} #{perPageNum} ì²˜ë¦¬ë¥¼ ìœ„í•œ í�´ëž˜ìŠ¤
@Data
public class Criteria {

	private int page; // í˜„ìž¬ íŽ˜ì�´ì§€ ë²ˆí˜¸
	private int perPageNum; // íŽ˜ì�´ì§€ ë‹¹ ë³´ì—¬ì§€ëŠ” ê²Œì‹œê¸€ì�˜ ê°¯ìˆ˜

	// ê¸°ë³¸ ìƒ�ì„±ìž� : 1íŽ˜ì�´ì§€, íŽ˜ì�´ì§€ë‹¹ 20ê°œì�˜ ê²Œì‹œê¸€ë¡œ ì´ˆê¸°í™”
	public Criteria() {

		this.page = 1;
		this.perPageNum =0; 

	}

	// setPage(), setPerPageNum() ë©”ì„œë“œì—� ìž˜ëª»ë�œ ê°’ì�´ ìž…ë ¥ë�˜ëŠ” ê²½ìš°, ê°•ì œë¡œ ê°’ì�„ ì¡°ì •
	public void setPage(int page) {

		// 0 ì�´í•˜ ì�¼ ê²½ìš° 1ë¡œ ê°•ì œ
		if (page <= 0) {
			this.page = 1;
			return;
		}

		this.page = page;
	}

	public void setPerPageNum(int perPageNum) {

		// 0 ì�´í•˜, 100ë³´ë‹¤ í�´ ê²½ìš° 10ìœ¼ë¡œ ê°•ì œ
		if (perPageNum <= 0 || perPageNum > 100) {
			this.perPageNum = 10;
			return;
		}

		this.perPageNum = perPageNum;
	}

	public int getPage() {

		return page;

	}

	// boardMapper.xml(listCriteria) SQLì�„ ìœ„í•œ ë©”ì„œë“œ
	// limit êµ¬ë¬¸ì—�ì„œ í˜„ìž¬ íŽ˜ì�´ì§€ì�˜ ê²Œì‹œë¬¼ì�˜ ì‹œìž‘ë²ˆí˜¸ë¥¼ ì§€ì •í•˜ê¸° ìœ„í•´
	public int getPageStart() {

		// ì˜ˆë¥¼ ë“¤ì–´ íŽ˜ì�´ì§€ë‹¹ 10ê°œì�˜ ê²Œì‹œë¬¼ì�„ ì¶œë ¥í•˜ëŠ” ê²½ìš°, 3íŽ˜ì�´ì§€ì�˜ ì²«ë²ˆì§¸ ê²Œì‹œë¬¼ì�„ ì¶œë ¥í•œë‹¤ë©´ ?
		// ì „ì²´ ê²Œì‹œê¸€ ì¤‘ì—�ì„œ ì •ë ¬í•œ ë�°ì�´í„°ì�˜ indexì�˜ 21ë²ˆì§¸ ë�°ì�´í„°, ì¦‰ 20
		// LIMIT 20, 10
		return (this.page - 1) * perPageNum;

	}

	// boardMapper.xml(listCriteria) SQLì�„ ìœ„í•œ ë©”ì„œë“œ
	// limit êµ¬ë¬¸ì—�ì„œ íŽ˜ì�´ì§€ ë‹¹ ê²Œì‹œë¬¼ì�˜ ê°¯ìˆ˜ë¥¼ ì§€ì •í•˜ê¸° ìœ„í•´
	public int getPerPageNum() {

		return this.perPageNum;

	}

	@Override
	public String toString() {
		return "Criteria{" + "page=" + page + ", perPageNum=" + perPageNum + '}';
	}
}