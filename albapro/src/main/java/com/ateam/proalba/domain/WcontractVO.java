package com.ateam.proalba.domain;

import lombok.Data;

@Data
public class WcontractVO {
	private int c_code;
	private String start_period;	//�ٷΰ��Ⱓ
	private String end_period;	//�ٷΰ��Ⱓ
	private String work_place_name;	//���ü��
	private String c_id;	//����־��̵�
	private String p_id;	//�˹ٻ����̵�
	private String fileName; //������ġ�� �̸�
	private String email_check;
	private String name; // �˹ٻ��̸�
	private int hour_wage; // �ñ�
}
