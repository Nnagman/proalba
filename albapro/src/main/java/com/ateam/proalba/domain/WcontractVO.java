package com.ateam.proalba.domain;

import lombok.Data;

@Data
public class WcontractVO {
	private int c_code;
	private String start_period;	//�ٷΰ��Ⱓ
	private String end_period;	//�ٷΰ��Ⱓ
	private String c_id;	//����־��̵�
	private String p_id;	//�˹ٻ����̵�
	private String work_place_name;	//���ü��
	private String fileName; //������ġ�� �̸�
	private int hour_wage; //�ñ�
	private String dedicated_work; //����
	private String work_place; //�ٹ����
	private String work_detail; //��������
	private String start_work_time; //�ٹ����۽���
	private String end_work_time; //�ٹ�����ð�
	private String additional_wage; //��Ÿ�޿����޿���
	private String payday; //������
	private String b_number; //����ڵ�Ϲ�ȣ
	private String b_name; //��ǥ���̸�
	private String c_address; //������ּ�
	private String work_place_phone; //����ڿ���ó
	private String c_date; //��༭ ���� �ۼ���
	private String email_check; //��༭ Ȯ�� ����
	private String c_sign; // ����� ����
	private String p_sign; // �ٷ��� ����
	private String p_name; // �ٷ��� �̸�
	private String p_phone; // �ٷ��� ��ȣ
	private String p_address; // �ٷ��� �ּ�
}
