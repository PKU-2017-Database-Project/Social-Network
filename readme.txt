���ݿ�����working
���ݿ��¼�û�����admin
���룺1234567890

Ŀǰ��5�ű�

1. User��
���ڴ����¼��ע�������Ϣ�����Խṹ��
* EMAIL CHAR(30) PRIMARY KEY ע��ʱ��д��email��ַ����¼Ҳ�������
* USERNAME CHAR(20) ��ʾ���û�������½����޸�
* PASSWD CHAR(20) ��¼����

2. Friends��
���ڼ�¼��ע��ϵ����ϵ�ǵ���ģ�A��ע��B��A�ܿ���B����״̬�������򲻳��������Խṹ��
* NUMBER INT AUTO_INCREMENT PRIMARY KEY ������Ϊ�ñ��������ƽʱ�ò���
* EMAIL CHAR(30) ��ע�ߵ�email
* EMAIL2 CHAR(30) ����ע�ߵ�email

3. Status��
���ڼ�¼�û�����״̬�����Խṹ��
* STATUSNUM INT AUTO_INCREMENT PRIMARY KEY ���ڱ�ʶÿһ������״̬�ı��
* EMAIL CHAR(30) ����״̬���û���email
* CONTENT VARCHAR(255) ״̬����
* TIME CHAR(25) ״̬����ʱ��

4. Reply��
���ڼ�¼�û���״̬�����û��ظ��Ļظ������Խṹ��
* REPLYNUM INT AUTO_INCREMENT PRIMARY KEY ���ڱ�ʶÿһ������ظ��ı��
* STATUSNUM INT �ûظ���Ӧ��״̬
* REPLY VARCHAR(255) �ظ�����
* EMAIL CHAR(30) ����ظ����û���email
* TIME CHAR(25) ״̬����ʱ��
* EMAIL2 CHAR(30) ���ظ����û���email

5. UserDetail��
���ڼ�¼�û��ĸ�����Ϣ�����Խṹ��
* EMAIL CHAR(30) PRIMARY KEY �û���email���������ָ��User.EMAIL��Ϊ���
FOREIGN KEY (EMAIL) REFERENCES User(EMAIL)
* SEX CHAR(3) �û����Ա�
* YEAR INT �û�������
* MONTH INT �û�������
* DAY INT �û�������
* INTRODUCTION VARCHAR(255) �û���һ�仰���
* ICON VARCHAR(255) �û���ͷ���Ӧ��URL ��ͷ������ʱδ���ߣ�
