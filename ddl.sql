һ�����ݿ⼶��
	��ʾ�������ݿ�
		show databases;
	����ĳ�����ݿ�
		use ���ݿ���;
	����һ�����ݿ�
		create database ����;
	����ָ���ַ��������ݿ�
		create database ���� default character set='utf-8';
	��ʾ���ݿ�Ĵ�����Ϣ
		
	�޸����ݿ�ı���
		alter database ���� default character set 'charset';
	ɾ��һ�����ݿ�
		drop databases ����;
		
��������
	�޸ı���
		alter table ���� rename ����;
	�޸��ֶε���������
		alter table ���� modify �ֶ��� ������;
	�޸��ֶ���
		alter table ���� change column �ֶ��� ���ֶ���;
	����ֶ�
		alter table ���� add column �ֶ��� �ֶ�����;
	ɾ���ֶ�
		alter table ���� drop column �ֶ���;
	�޸ı�Ĵ洢����
		alter table ���� engine=InnoDB;
	ɾ��������Լ��
		alter table ���� drop foreign key Լ����;
	ɾ��һ�ű�
		drop table '����'