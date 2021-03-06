--------------------------------------------------------
--  파일이 생성됨 - 월요일-6월-15-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence APPLY_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SCOTT"."APPLY_SEQ"  MINVALUE 0 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence FREE_REPLY_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SCOTT"."FREE_REPLY_SEQ"  MINVALUE 0 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 141 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence FREE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SCOTT"."FREE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 161 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence INFORM_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SCOTT"."INFORM_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence MEMBER_SEEKER_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SCOTT"."MEMBER_SEEKER_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 81 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence NOTIFICATION_NSEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SCOTT"."NOTIFICATION_NSEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 221 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence QUESTION_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SCOTT"."QUESTION_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 141 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table APPLY
--------------------------------------------------------

  CREATE TABLE "SCOTT"."APPLY" 
   (	"MSID" VARCHAR2(20 BYTE), 
	"NSEQ" NUMBER, 
	"APPDATE" DATE, 
	"PASS" VARCHAR2(10 BYTE), 
	"R_CHECKED" VARCHAR2(10 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table FREE
--------------------------------------------------------

  CREATE TABLE "SCOTT"."FREE" 
   (	"FNO" NUMBER(5,0), 
	"FTITLE" VARCHAR2(100 BYTE), 
	"FWRITER" VARCHAR2(30 BYTE), 
	"FCONTENT" VARCHAR2(400 BYTE), 
	"FDATE" DATE DEFAULT sysdate, 
	"FHIT" NUMBER(5,0) DEFAULT 0, 
	"FGROUP" NUMBER(5,0), 
	"FSTEP" NUMBER(5,0), 
	"FINDENT" NUMBER(5,0), 
	"FILESRC" VARCHAR2(200 BYTE), 
	"FREPLY" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table FREE_REPLY
--------------------------------------------------------

  CREATE TABLE "SCOTT"."FREE_REPLY" 
   (	"FNO" NUMBER, 
	"FRNO" NUMBER, 
	"FRCONTENT" VARCHAR2(500 BYTE), 
	"FRWRITER" VARCHAR2(50 BYTE), 
	"FRDATE" DATE DEFAULT sysdate
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table INFORM
--------------------------------------------------------

  CREATE TABLE "SCOTT"."INFORM" 
   (	"INO" NUMBER(5,0), 
	"ITITLE" VARCHAR2(100 BYTE), 
	"IWRITER" VARCHAR2(50 BYTE), 
	"ICONTENT" VARCHAR2(400 BYTE), 
	"IDATE" DATE DEFAULT sysdate, 
	"IHIT" NUMBER(5,0) DEFAULT 0, 
	"IFILESRC" VARCHAR2(300 BYTE), 
	"IMASTER" VARCHAR2(10 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MEMBER_SEEKER
--------------------------------------------------------

  CREATE TABLE "SCOTT"."MEMBER_SEEKER" 
   (	"MSNO" NUMBER, 
	"MSID" VARCHAR2(20 BYTE), 
	"MSPW" VARCHAR2(256 BYTE), 
	"MSNAME" VARCHAR2(20 BYTE), 
	"MSEMAIL" VARCHAR2(50 BYTE), 
	"MSEMAILHASH" VARCHAR2(64 BYTE), 
	"MSEMAILCHECKED" NUMBER, 
	"MSADDR" VARCHAR2(300 BYTE), 
	"MSTEL" VARCHAR2(20 BYTE), 
	"MSBIRTH" VARCHAR2(20 BYTE), 
	"MSGENDER" VARCHAR2(20 BYTE), 
	"MSMASTER" VARCHAR2(10 BYTE), 
	"MSPOSTCODE" VARCHAR2(100 BYTE), 
	"MSDETAILADDRESS" VARCHAR2(100 BYTE), 
	"MSEXTRAADDRESS" VARCHAR2(100 BYTE), 
	"MOLISENSE" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PICKLIST
--------------------------------------------------------

  CREATE TABLE "SCOTT"."PICKLIST" 
   (	"MSID" VARCHAR2(20 BYTE), 
	"NSEQ" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table NOTIFICATION
--------------------------------------------------------

  CREATE TABLE "SCOTT"."NOTIFICATION" 
   (	"NSEQ" NUMBER, 
	"NTITLE" VARCHAR2(100 BYTE), 
	"NWRITER" VARCHAR2(20 BYTE), 
	"NCONTENT" VARCHAR2(500 BYTE), 
	"NREGDATE" DATE DEFAULT SYSDATE, 
	"NDEADLINE" VARCHAR2(20 BYTE), 
	"NHIT" NUMBER, 
	"NCATEGORY" VARCHAR2(50 BYTE), 
	"NGENDER" VARCHAR2(20 BYTE), 
	"NAGE" VARCHAR2(20 BYTE), 
	"NAG" VARCHAR2(20 BYTE), 
	"NPERSONNEL" VARCHAR2(20 BYTE), 
	"NPT" VARCHAR2(50 BYTE), 
	"NPERIOD" VARCHAR2(50 BYTE), 
	"NWELFARE" VARCHAR2(100 BYTE), 
	"NLOCATION" VARCHAR2(50 BYTE), 
	"NDAY" VARCHAR2(20 BYTE), 
	"NTIME" VARCHAR2(40 BYTE), 
	"NRECEPTION" VARCHAR2(20 BYTE), 
	"NTPAY" VARCHAR2(10 BYTE), 
	"NPAY" NUMBER, 
	"NNEARSUB" VARCHAR2(20 BYTE), 
	"NPREMIUM" VARCHAR2(10 BYTE), 
	"NADDR" VARCHAR2(100 BYTE), 
	"LAT" VARCHAR2(100 BYTE), 
	"LNG" VARCHAR2(100 BYTE), 
	"MSID" VARCHAR2(100 BYTE), 
	"NIMG" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table QUESTION
--------------------------------------------------------

  CREATE TABLE "SCOTT"."QUESTION" 
   (	"QNO" NUMBER(5,0), 
	"QTITLE" VARCHAR2(100 BYTE), 
	"QWRITER" VARCHAR2(30 BYTE), 
	"QCONTENT" VARCHAR2(400 BYTE), 
	"QRCONTENT" VARCHAR2(400 BYTE), 
	"QTYPE" VARCHAR2(100 BYTE), 
	"QDATE" DATE DEFAULT sysdate, 
	"QHIT" NUMBER(5,0) DEFAULT 0, 
	"QGROUP" NUMBER(5,0), 
	"QSTEP" NUMBER(5,0), 
	"QINDENT" NUMBER(5,0), 
	"QMASTER" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table RESUME
--------------------------------------------------------

  CREATE TABLE "SCOTT"."RESUME" 
   (	"MSID" VARCHAR2(20 BYTE), 
	"RREF" VARCHAR2(500 BYTE), 
	"ROPEN" VARCHAR2(10 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into SCOTT.APPLY
SET DEFINE OFF;
Insert into SCOTT.APPLY (MSID,NSEQ,APPDATE,PASS,R_CHECKED) values ('seeker',187,to_date('20/06/09','RR/MM/DD'),'확인중','0');
REM INSERTING into SCOTT.FREE
SET DEFINE OFF;
Insert into SCOTT.FREE (FNO,FTITLE,FWRITER,FCONTENT,FDATE,FHIT,FGROUP,FSTEP,FINDENT,FILESRC,FREPLY) values (2,'알바 후기 입니다','작성자','안녕하세요 만나서 정말 반갑습니다
다음에 또 만나요',to_date('20/05/15','RR/MM/DD'),57,2,0,0,null,'hihi');
Insert into SCOTT.FREE (FNO,FTITLE,FWRITER,FCONTENT,FDATE,FHIT,FGROUP,FSTEP,FINDENT,FILESRC,FREPLY) values (43,'제목 : 파일을 넣어보자','나나','파랑색!!!!',to_date('20/05/19','RR/MM/DD'),31,43,0,0,'blue.png','2222ㄴ');
Insert into SCOTT.FREE (FNO,FTITLE,FWRITER,FCONTENT,FDATE,FHIT,FGROUP,FSTEP,FINDENT,FILESRC,FREPLY) values (44,'우왕ㅠㅠㅠ','ㅎㅎ','ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ',to_date('20/05/19','RR/MM/DD'),29,44,0,0,'yellow.png',null);
Insert into SCOTT.FREE (FNO,FTITLE,FWRITER,FCONTENT,FDATE,FHIT,FGROUP,FSTEP,FINDENT,FILESRC,FREPLY) values (61,'제목 : ㅎㅎㅎ','ㅎㅎ','ㄴㄴddddd',to_date('20/05/20','RR/MM/DD'),35,61,0,0,'blue.png','답변');
Insert into SCOTT.FREE (FNO,FTITLE,FWRITER,FCONTENT,FDATE,FHIT,FGROUP,FSTEP,FINDENT,FILESRC,FREPLY) values (101,'우왕','me','ㅇㄹㅇㄹ',to_date('20/06/04','RR/MM/DD'),15,101,0,0,'Koala.jpg',null);
Insert into SCOTT.FREE (FNO,FTITLE,FWRITER,FCONTENT,FDATE,FHIT,FGROUP,FSTEP,FINDENT,FILESRC,FREPLY) values (82,'ㅇㅎㅇㅎ','ㄴㅇㄴㅇ','ㅇㅇㅇ',to_date('20/05/26','RR/MM/DD'),8,82,0,0,null,null);
Insert into SCOTT.FREE (FNO,FTITLE,FWRITER,FCONTENT,FDATE,FHIT,FGROUP,FSTEP,FINDENT,FILESRC,FREPLY) values (21,' 우왕','yellow','안녕하세요',to_date('20/05/18','RR/MM/DD'),15,21,0,0,null,null);
Insert into SCOTT.FREE (FNO,FTITLE,FWRITER,FCONTENT,FDATE,FHIT,FGROUP,FSTEP,FINDENT,FILESRC,FREPLY) values (22,'후우우기이이','me','Have a nice day',to_date('20/05/18','RR/MM/DD'),5,22,0,0,null,null);
Insert into SCOTT.FREE (FNO,FTITLE,FWRITER,FCONTENT,FDATE,FHIT,FGROUP,FSTEP,FINDENT,FILESRC,FREPLY) values (25,'ㄱㄱㄱ','ㄱㄱ','ㄱㄱㄱㄱ',to_date('20/05/18','RR/MM/DD'),3,25,0,0,null,null);
Insert into SCOTT.FREE (FNO,FTITLE,FWRITER,FCONTENT,FDATE,FHIT,FGROUP,FSTEP,FINDENT,FILESRC,FREPLY) values (24,'안녕안녕','나','반갑다 정말로',to_date('20/05/18','RR/MM/DD'),23,24,0,0,'car1.txt',null);
Insert into SCOTT.FREE (FNO,FTITLE,FWRITER,FCONTENT,FDATE,FHIT,FGROUP,FSTEP,FINDENT,FILESRC,FREPLY) values (26,'ㄴㄴㄴ','ㄴㄴ','ㄴㄴㄴㄴㄴ',to_date('20/05/18','RR/MM/DD'),1,26,0,0,null,null);
Insert into SCOTT.FREE (FNO,FTITLE,FWRITER,FCONTENT,FDATE,FHIT,FGROUP,FSTEP,FINDENT,FILESRC,FREPLY) values (27,'ㄷㄷㄷ','ㄷㄷ','ㄷㄷㄷㄷㄷㄷ',to_date('20/05/18','RR/MM/DD'),0,27,0,0,null,null);
Insert into SCOTT.FREE (FNO,FTITLE,FWRITER,FCONTENT,FDATE,FHIT,FGROUP,FSTEP,FINDENT,FILESRC,FREPLY) values (28,'ㄹㄹㄹ','ㄹㄹ','ㄹㄹㄹㄹㄹㄹㄹ',to_date('20/05/18','RR/MM/DD'),0,28,0,0,null,null);
Insert into SCOTT.FREE (FNO,FTITLE,FWRITER,FCONTENT,FDATE,FHIT,FGROUP,FSTEP,FINDENT,FILESRC,FREPLY) values (29,'ㅁㅁㅁ','ㅁㅁ','ㅁㅁㅁㅁㅁㅁㅁ',to_date('20/05/18','RR/MM/DD'),3,29,0,0,null,null);
Insert into SCOTT.FREE (FNO,FTITLE,FWRITER,FCONTENT,FDATE,FHIT,FGROUP,FSTEP,FINDENT,FILESRC,FREPLY) values (30,'dㅂㅂㅂ','ㅂㅂ','ㅂㅂㅂㅂㅂㅂㅂ',to_date('20/05/18','RR/MM/DD'),21,30,0,0,null,'hihi');
Insert into SCOTT.FREE (FNO,FTITLE,FWRITER,FCONTENT,FDATE,FHIT,FGROUP,FSTEP,FINDENT,FILESRC,FREPLY) values (42,'ㅇㅇㅇㅇ','ㅇㅇㅇ','ㅇㅇㅇㅇㅇㅇㅇㅇ',to_date('20/05/19','RR/MM/DD'),27,42,0,0,null,'ㄹ오');
Insert into SCOTT.FREE (FNO,FTITLE,FWRITER,FCONTENT,FDATE,FHIT,FGROUP,FSTEP,FINDENT,FILESRC,FREPLY) values (81,'hello','me','dgdg',to_date('20/05/26','RR/MM/DD'),7,81,0,0,'Tulips.jpg',null);
Insert into SCOTT.FREE (FNO,FTITLE,FWRITER,FCONTENT,FDATE,FHIT,FGROUP,FSTEP,FINDENT,FILESRC,FREPLY) values (41,'ㅅㅅㅅㅅ','ㅅㅅㅅ','ㅅㅅㅅㅅㅅㅅㅅㅅ',to_date('20/05/19','RR/MM/DD'),4,41,0,0,null,null);
REM INSERTING into SCOTT.FREE_REPLY
SET DEFINE OFF;
Insert into SCOTT.FREE_REPLY (FNO,FRNO,FRCONTENT,FRWRITER,FRDATE) values (41,41,'우리동네알바입니다','너너너',to_date('20/05/25','RR/MM/DD'));
Insert into SCOTT.FREE_REPLY (FNO,FRNO,FRCONTENT,FRWRITER,FRDATE) values (43,44,'ㅎㅎㅎ','ㅎㅎㅎ',to_date('20/05/25','RR/MM/DD'));
Insert into SCOTT.FREE_REPLY (FNO,FRNO,FRCONTENT,FRWRITER,FRDATE) values (43,45,'ㅇㅇㅇ','너너너',to_date('20/05/25','RR/MM/DD'));
Insert into SCOTT.FREE_REPLY (FNO,FRNO,FRCONTENT,FRWRITER,FRDATE) values (25,47,'rrrr','rr',to_date('20/05/25','RR/MM/DD'));
Insert into SCOTT.FREE_REPLY (FNO,FRNO,FRCONTENT,FRWRITER,FRDATE) values (43,61,'ggg','dgdg',to_date('20/06/02','RR/MM/DD'));
Insert into SCOTT.FREE_REPLY (FNO,FRNO,FRCONTENT,FRWRITER,FRDATE) values (44,5,'ㄱㄱㄱㄱ','ㄱㄱ',to_date('20/05/22','RR/MM/DD'));
Insert into SCOTT.FREE_REPLY (FNO,FRNO,FRCONTENT,FRWRITER,FRDATE) values (61,6,'ㅎㅎㅎㅎ','gㅎ',to_date('20/05/22','RR/MM/DD'));
Insert into SCOTT.FREE_REPLY (FNO,FRNO,FRCONTENT,FRWRITER,FRDATE) values (61,7,'ㅇㅇㅇㅇ','ㅇㅇㅇ',to_date('20/05/22','RR/MM/DD'));
Insert into SCOTT.FREE_REPLY (FNO,FRNO,FRCONTENT,FRWRITER,FRDATE) values (44,21,'안녕하세요 
만나서 반갑습니다','하하하',to_date('20/05/25','RR/MM/DD'));
Insert into SCOTT.FREE_REPLY (FNO,FRNO,FRCONTENT,FRWRITER,FRDATE) values (29,48,'hh','dgg',to_date('20/05/25','RR/MM/DD'));
REM INSERTING into SCOTT.INFORM
SET DEFINE OFF;
Insert into SCOTT.INFORM (INO,ITITLE,IWRITER,ICONTENT,IDATE,IHIT,IFILESRC,IMASTER) values (1,'공','MASTER','공공공',to_date('20/05/20','RR/MM/DD'),4,'green.png','0');
Insert into SCOTT.INFORM (INO,ITITLE,IWRITER,ICONTENT,IDATE,IHIT,IFILESRC,IMASTER) values (6,'개인정보처리방침 개정 안내','MASTER','개인정보처리방침 개정 안내ㅠㅠ',to_date('20/05/20','RR/MM/DD'),0,null,'0');
Insert into SCOTT.INFORM (INO,ITITLE,IWRITER,ICONTENT,IDATE,IHIT,IFILESRC,IMASTER) values (7,'구글맵 서비스 관련 오류 안내','MASTER','구글맵 서비스 관련 오류 안내ㅠㅠ',to_date('20/05/20','RR/MM/DD'),0,null,'0');
Insert into SCOTT.INFORM (INO,ITITLE,IWRITER,ICONTENT,IDATE,IHIT,IFILESRC,IMASTER) values (8,'정액권 정책 변경 안내','MASTER','정액권 정책 변경 안내ㅠㅠ',to_date('20/05/20','RR/MM/DD'),3,null,'0');
Insert into SCOTT.INFORM (INO,ITITLE,IWRITER,ICONTENT,IDATE,IHIT,IFILESRC,IMASTER) values (9,'2020년 최저임금 적용 안내','MASTER','2020년 최저임금 적용 안내ㅍㅍ',to_date('20/05/20','RR/MM/DD'),2,null,'0');
Insert into SCOTT.INFORM (INO,ITITLE,IWRITER,ICONTENT,IDATE,IHIT,IFILESRC,IMASTER) values (11,' 새로운 공지사항 파일 첨부','MASTER','사진 첨부했습니다!ff',to_date('20/05/20','RR/MM/DD'),23,'yellow1.png','0');
Insert into SCOTT.INFORM (INO,ITITLE,IWRITER,ICONTENT,IDATE,IHIT,IFILESRC,IMASTER) values (22,' 공지를 합니다!','MASTER','<p>안녕하세요</p><p>만나서</p><p>정말</p><p>반갑습니다</p><p>ㅎㅎㅎ</p>',to_date('20/06/08','RR/MM/DD'),40,'Desert.jpg','0');
Insert into SCOTT.INFORM (INO,ITITLE,IWRITER,ICONTENT,IDATE,IHIT,IFILESRC,IMASTER) values (46,' 제목을 수정합니다','작성자','내용',to_date('20/05/19','RR/MM/DD'),14,'파일','1');
Insert into SCOTT.INFORM (INO,ITITLE,IWRITER,ICONTENT,IDATE,IHIT,IFILESRC,IMASTER) values (3,'사','MASTER','사사사사',to_date('20/05/20','RR/MM/DD'),0,null,'0');
Insert into SCOTT.INFORM (INO,ITITLE,IWRITER,ICONTENT,IDATE,IHIT,IFILESRC,IMASTER) values (2,'지','MASTER','지지지지지',to_date('20/05/20','RR/MM/DD'),4,'yellow.png','0');
Insert into SCOTT.INFORM (INO,ITITLE,IWRITER,ICONTENT,IDATE,IHIT,IFILESRC,IMASTER) values (4,'항','MASTER','항항항항',to_date('20/05/20','RR/MM/DD'),0,null,'0');
Insert into SCOTT.INFORM (INO,ITITLE,IWRITER,ICONTENT,IDATE,IHIT,IFILESRC,IMASTER) values (5,'회원이용약관 개정 안내','MASTER','회원이용약관 개정 안내ㅍㅍ',to_date('20/05/20','RR/MM/DD'),1,null,'0');
Insert into SCOTT.INFORM (INO,ITITLE,IWRITER,ICONTENT,IDATE,IHIT,IFILESRC,IMASTER) values (10,'서비스 일시 점검 안내 (2019년 12월 12일 새벽 0시 ~ 6시)','MASTER','서비스 일시 점검 안내 (2019년 12월 12일 새벽 0시 ~ 6시)ㅍㅍ',to_date('20/05/20','RR/MM/DD'),2,null,'0');
REM INSERTING into SCOTT.MEMBER_SEEKER
SET DEFINE OFF;
Insert into SCOTT.MEMBER_SEEKER (MSNO,MSID,MSPW,MSNAME,MSEMAIL,MSEMAILHASH,MSEMAILCHECKED,MSADDR,MSTEL,MSBIRTH,MSGENDER,MSMASTER,MSPOSTCODE,MSDETAILADDRESS,MSEXTRAADDRESS,MOLISENSE) values (43,'seeker','f9cc7a1f349bb65294bfd7142d9687808fd30a77286e8cc75062e3d6ff463906','dd','kyeonjooooo@naver.com','d59b1cdc044b67a06d265a5c745c8ced0d70e82e7aa6b70dcf086033bd394cfe',1,'서울 강동구 구천면로 140','12345678','2020-01-01','남','seeker','05247','천호동',' (천호동)',null);
Insert into SCOTT.MEMBER_SEEKER (MSNO,MSID,MSPW,MSNAME,MSEMAIL,MSEMAILHASH,MSEMAILCHECKED,MSADDR,MSTEL,MSBIRTH,MSGENDER,MSMASTER,MSPOSTCODE,MSDETAILADDRESS,MSEXTRAADDRESS,MOLISENSE) values (45,'offer2','f9cc7a1f349bb65294bfd7142d9687808fd30a77286e8cc75062e3d6ff463906','기업이름','kyeonjooooo@naver.com','d59b1cdc044b67a06d265a5c745c8ced0d70e82e7aa6b70dcf086033bd394cfe',1,'서울 강동구 명일로 191','010123456',null,null,'offer','05350','길동',' (길동)','12345678');
Insert into SCOTT.MEMBER_SEEKER (MSNO,MSID,MSPW,MSNAME,MSEMAIL,MSEMAILHASH,MSEMAILCHECKED,MSADDR,MSTEL,MSBIRTH,MSGENDER,MSMASTER,MSPOSTCODE,MSDETAILADDRESS,MSEXTRAADDRESS,MOLISENSE) values (46,'offer3','f9cc7a1f349bb65294bfd7142d9687808fd30a77286e8cc75062e3d6ff463906','기업','kyeonjooooo@naver.com','d59b1cdc044b67a06d265a5c745c8ced0d70e82e7aa6b70dcf086033bd394cfe',1,'서울 강동구 명일로 193-1','010-1234-5678',null,null,'offer','05350','길동',' (길동)','321456');
Insert into SCOTT.MEMBER_SEEKER (MSNO,MSID,MSPW,MSNAME,MSEMAIL,MSEMAILHASH,MSEMAILCHECKED,MSADDR,MSTEL,MSBIRTH,MSGENDER,MSMASTER,MSPOSTCODE,MSDETAILADDRESS,MSEXTRAADDRESS,MOLISENSE) values (62,'offer4','f9cc7a1f349bb65294bfd7142d9687808fd30a77286e8cc75062e3d6ff463906','기이이업','kyeonjooooo@naver.com','d59b1cdc044b67a06d265a5c745c8ced0d70e82e7aa6b70dcf086033bd394cfe',1,'서울 강동구 구천면로 140','010-3214-7845',null,null,'offer','05247','236호',' (천호동)','12345678');
Insert into SCOTT.MEMBER_SEEKER (MSNO,MSID,MSPW,MSNAME,MSEMAIL,MSEMAILHASH,MSEMAILCHECKED,MSADDR,MSTEL,MSBIRTH,MSGENDER,MSMASTER,MSPOSTCODE,MSDETAILADDRESS,MSEXTRAADDRESS,MOLISENSE) values (44,'offer','f9cc7a1f349bb65294bfd7142d967808fd30a77286e8cc750562e3d6ff463906','기업용','rldjqdyd@naver.com','1',1,'기업주소','기업전화',null,null,'offer','우편번호','기업상세주소','기업기타주소','사업자번호');
REM INSERTING into SCOTT.PICKLIST
SET DEFINE OFF;
Insert into SCOTT.PICKLIST (MSID,NSEQ) values ('seeker',208);
REM INSERTING into SCOTT.NOTIFICATION
SET DEFINE OFF;
Insert into SCOTT.NOTIFICATION (NSEQ,NTITLE,NWRITER,NCONTENT,NREGDATE,NDEADLINE,NHIT,NCATEGORY,NGENDER,NAGE,NAG,NPERSONNEL,NPT,NPERIOD,NWELFARE,NLOCATION,NDAY,NTIME,NRECEPTION,NTPAY,NPAY,NNEARSUB,NPREMIUM,NADDR,LAT,LNG,MSID,NIMG) values (182,'같이 일하실 분 모집합니다!','담당자','상품 진열 및 계산 ',to_date('20/06/08','RR/MM/DD'),'2020-06-30',10,'베이커리 · 도넛 · 떡','성별무관','연령제한','25','1명','동종업계 경력자','3개월~6개월','4대보험','길동','월~금','오전','010-1234-1234','시급',8590,'길동역','1','서울 강동구 명일로 193-1','37.5361501661743','127.145325524961','offer2','paris.PNG');
Insert into SCOTT.NOTIFICATION (NSEQ,NTITLE,NWRITER,NCONTENT,NREGDATE,NDEADLINE,NHIT,NCATEGORY,NGENDER,NAGE,NAG,NPERSONNEL,NPT,NPERIOD,NWELFARE,NLOCATION,NDAY,NTIME,NRECEPTION,NTPAY,NPAY,NNEARSUB,NPREMIUM,NADDR,LAT,LNG,MSID,NIMG) values (183,'[버거킹 길동사거리점]마감크루 모집합니다.','버거킹','버거킹 길동사거리점에서 가족을 구하고있습니다.',to_date('20/06/08','RR/MM/DD'),'2020-06-29',2,'패스트푸드점','성별무관','연령제한','20세','2명','없음','3개월~6개월','야간수당','길동','월~금','오후','010-321-321','시급',8590,'길동역','0','서울 강동구 길동 429','37.534377886259','127.139126801041',null,'burgerking.PNG');
Insert into SCOTT.NOTIFICATION (NSEQ,NTITLE,NWRITER,NCONTENT,NREGDATE,NDEADLINE,NHIT,NCATEGORY,NGENDER,NAGE,NAG,NPERSONNEL,NPT,NPERIOD,NWELFARE,NLOCATION,NDAY,NTIME,NRECEPTION,NTPAY,NPAY,NNEARSUB,NPREMIUM,NADDR,LAT,LNG,MSID,NIMG) values (186,'투썸플레이스 길동점에서 주말마감 모집합니다~','투썸','주말 마감에 커피 만들어주세요!',to_date('20/06/08','RR/MM/DD'),'2020-06-28',1,'커피전문점','성별무관','연령제한','25','1명','경력자','6개월~1년','야간수당','길동','토, 일','오후','010-1212-3434','시급',9000,'길동역','0','서울 강동구 길동 252-4','37.5355084804723','127.145100482636',null,'twosome.PNG');
Insert into SCOTT.NOTIFICATION (NSEQ,NTITLE,NWRITER,NCONTENT,NREGDATE,NDEADLINE,NHIT,NCATEGORY,NGENDER,NAGE,NAG,NPERSONNEL,NPT,NPERIOD,NWELFARE,NLOCATION,NDAY,NTIME,NRECEPTION,NTPAY,NPAY,NNEARSUB,NPREMIUM,NADDR,LAT,LNG,MSID,NIMG) values (188,'이마트 배송원 모집','이마트','담당 업무 : 소화물 택배',to_date('20/06/08','RR/MM/DD'),'2020-06-21',0,'택배·퀵서비스','성별무관','연령제한','25','3명','운전면허 소지자','1년이상','4대보험','길동','월~금','09:00~18:00','010-4444-5555','시급',10000,'길동역','0','서울 강동구 명일로 189','37.5356574949286','127.145182687143',null,'emart.PNG');
Insert into SCOTT.NOTIFICATION (NSEQ,NTITLE,NWRITER,NCONTENT,NREGDATE,NDEADLINE,NHIT,NCATEGORY,NGENDER,NAGE,NAG,NPERSONNEL,NPT,NPERIOD,NWELFARE,NLOCATION,NDAY,NTIME,NRECEPTION,NTPAY,NPAY,NNEARSUB,NPREMIUM,NADDR,LAT,LNG,MSID,NIMG) values (191,'배스킨라빈스에서 주말 오전 구해요','배스킨','서비스',to_date('20/06/08','RR/MM/DD'),'2020-06-22',1,'아이스크림 · 디저트','성별무관','연령제한','25','2명','동종업계 경력자','3개월~6개월','중식 ','천호동','월~금','오전','010-5656-6565','시급',8590,'천호역','0','서울 강동구 천호대로157길 11','37.5384039171409','127.126800749075',null,'baskin.PNG');
Insert into SCOTT.NOTIFICATION (NSEQ,NTITLE,NWRITER,NCONTENT,NREGDATE,NDEADLINE,NHIT,NCATEGORY,NGENDER,NAGE,NAG,NPERSONNEL,NPT,NPERIOD,NWELFARE,NLOCATION,NDAY,NTIME,NRECEPTION,NTPAY,NPAY,NNEARSUB,NPREMIUM,NADDR,LAT,LNG,MSID,NIMG) values (201,'[천호동 올리브영]평일 오픈 mate를 구합니다~','올리브','어렵지 않아요~~',to_date('20/06/09','RR/MM/DD'),'2020-06-27',2,'뷰티·헬스스토어','성별무관','연령제한','25','2명','밝고 성실한 분!','1년이상','4대보험','천호동','월~금','오전','010-2323-8989','시급',9000,'천호역','0','서울 강동구 천호대로 997','37.5393391659214','127.123301730964',null,'olive.PNG');
Insert into SCOTT.NOTIFICATION (NSEQ,NTITLE,NWRITER,NCONTENT,NREGDATE,NDEADLINE,NHIT,NCATEGORY,NGENDER,NAGE,NAG,NPERSONNEL,NPT,NPERIOD,NWELFARE,NLOCATION,NDAY,NTIME,NRECEPTION,NTPAY,NPAY,NNEARSUB,NPREMIUM,NADDR,LAT,LNG,MSID,NIMG) values (204,'써브웨이 천호점에서 근무하실 분을 모집합니다.','서브웨이','주말 오후에 샌드위치 제조입니다',to_date('20/06/09','RR/MM/DD'),'2020-06-24',1,'패스트푸드점','성별무관','연령제한','25','1명','인근거주자','1개월~3개월','휴가','천호동','토, 일','오후','010-4545-5454','시급',9000,'천호역','0','서울 강동구 올림픽로 664','37.540555377209','127.124975762766',null,'subway.PNG');
Insert into SCOTT.NOTIFICATION (NSEQ,NTITLE,NWRITER,NCONTENT,NREGDATE,NDEADLINE,NHIT,NCATEGORY,NGENDER,NAGE,NAG,NPERSONNEL,NPT,NPERIOD,NWELFARE,NLOCATION,NDAY,NTIME,NRECEPTION,NTPAY,NPAY,NNEARSUB,NPREMIUM,NADDR,LAT,LNG,MSID,NIMG) values (205,'[천호 애슐리] 주방 세척 알바 구해요','애슐리','설거지',to_date('20/06/09','RR/MM/DD'),'2020-06-30',1,'페밀리레스토랑','성별무관','연령제한','25','5명','성실하신 분','3개월~6개월','중식석식','천호동','월~토','오후','010-2323-8989','시급',10000,'천호역','0','서울 강동구 천호대로 1005','37.5389750482546','127.124440988259',null,'ashley.PNG');
Insert into SCOTT.NOTIFICATION (NSEQ,NTITLE,NWRITER,NCONTENT,NREGDATE,NDEADLINE,NHIT,NCATEGORY,NGENDER,NAGE,NAG,NPERSONNEL,NPT,NPERIOD,NWELFARE,NLOCATION,NDAY,NTIME,NRECEPTION,NTPAY,NPAY,NNEARSUB,NPREMIUM,NADDR,LAT,LNG,MSID,NIMG) values (207,'cu에서 평일 마감 스탭 구합니다','씨유','캐셔및 상품 진열',to_date('20/06/09','RR/MM/DD'),'2020-06-29',1,'편의점','성별무관','연령제한','25','1명','인근거주자','1개월~3개월','야간수당','천호동','월~금','오후','010-1212-1212','시급',8590,'천호역','0','서울 강동구 천호대로 1005','37.5389750482546','127.124440988259',null,'cu.PNG');
Insert into SCOTT.NOTIFICATION (NSEQ,NTITLE,NWRITER,NCONTENT,NREGDATE,NDEADLINE,NHIT,NCATEGORY,NGENDER,NAGE,NAG,NPERSONNEL,NPT,NPERIOD,NWELFARE,NLOCATION,NDAY,NTIME,NRECEPTION,NTPAY,NPAY,NNEARSUB,NPREMIUM,NADDR,LAT,LNG,MSID,NIMG) values (209,'[뚜레쥬르 천호] 제빵보조 구합니다','뚜레쥬르','제빵 보조',to_date('20/06/09','RR/MM/DD'),'2020-06-29',4,'베이커리 · 도넛 · 떡','성별무관','연령제한','25','1명','제빵 기술 경력자','3개월~6개월','4대보험','천호동','월~토','오전','010-2323-6565','시급',9000,'천호역','0','서울 강동구 천호대로 1033','37.5378954041968','127.126957954012','offer2','tous.PNG');
Insert into SCOTT.NOTIFICATION (NSEQ,NTITLE,NWRITER,NCONTENT,NREGDATE,NDEADLINE,NHIT,NCATEGORY,NGENDER,NAGE,NAG,NPERSONNEL,NPT,NPERIOD,NWELFARE,NLOCATION,NDAY,NTIME,NRECEPTION,NTPAY,NPAY,NNEARSUB,NPREMIUM,NADDR,LAT,LNG,MSID,NIMG) values (202,'아디다스 천호점에서 직원 구합니다.','아디다스','상품 판매및 진열과 고객 응대',to_date('20/06/09','RR/MM/DD'),'2020-06-28',0,'의류·잡화매장','성별무관','연령제한','25','1명','판매직에 대한 경험이 있거나 열정과 관심이 많은 분','1년이상','4대보험','천호동','월~토','09:00~18:00','010-9898-6565','시급',9500,'천호역','0','서울 강동구 천호대로 1005','37.5389750482546','127.124440988259',null,'adidas.PNG');
Insert into SCOTT.NOTIFICATION (NSEQ,NTITLE,NWRITER,NCONTENT,NREGDATE,NDEADLINE,NHIT,NCATEGORY,NGENDER,NAGE,NAG,NPERSONNEL,NPT,NPERIOD,NWELFARE,NLOCATION,NDAY,NTIME,NRECEPTION,NTPAY,NPAY,NNEARSUB,NPREMIUM,NADDR,LAT,LNG,MSID,NIMG) values (203,'[교보문고 천호]도서 판매 아르바이트 구합니다','교보문고','도서 판매 및 진열',to_date('20/06/09','RR/MM/DD'),'2020-06-30',0,'서점·문구·팬시','성별무관','연령제한','25','3명','유사업무 경험','6개월~1년','4대보험','천호동','월~금','오후','010-2365-2365','시급',9000,'천호역','0','서울 강동구 천호대로 1005','37.5389750482546','127.124440988259',null,'kyobo.PNG');
Insert into SCOTT.NOTIFICATION (NSEQ,NTITLE,NWRITER,NCONTENT,NREGDATE,NDEADLINE,NHIT,NCATEGORY,NGENDER,NAGE,NAG,NPERSONNEL,NPT,NPERIOD,NWELFARE,NLOCATION,NDAY,NTIME,NRECEPTION,NTPAY,NPAY,NNEARSUB,NPREMIUM,NADDR,LAT,LNG,MSID,NIMG) values (206,'[할리스 천호]에서 주말 파트타임 구해요','할리스','커피 제조및 서비스 응대',to_date('20/06/09','RR/MM/DD'),'2020-06-23',3,'커피전문점','성별무관','연령제한','25','2명','커피 제조 경력자','1개월~3개월','4대보험','천호동','토, 일','오전','010-7854-7854','시급',8590,'천호역','0','서울 강동구 양재대로 1591','37.5476808183203','127.143015082712',null,'hollys.PNG');
Insert into SCOTT.NOTIFICATION (NSEQ,NTITLE,NWRITER,NCONTENT,NREGDATE,NDEADLINE,NHIT,NCATEGORY,NGENDER,NAGE,NAG,NPERSONNEL,NPT,NPERIOD,NWELFARE,NLOCATION,NDAY,NTIME,NRECEPTION,NTPAY,NPAY,NNEARSUB,NPREMIUM,NADDR,LAT,LNG,MSID,NIMG) values (208,'[이디야 천호]에서 함께 일할 직원을 모집합니다.','이디야','커피 제조',to_date('20/06/09','RR/MM/DD'),'2020-06-30',5,'커피전문점','성별무관','연령제한','25','2명','카페 근무 경력자','1년이상','4대보험','천호동','월~금','09:00~18:00','010-5656-7878','시급',9000,'천호역','0','서울 강동구 천호대로 1027','37.5381084632581','127.126395521678',null,'ediya.PNG');
Insert into SCOTT.NOTIFICATION (NSEQ,NTITLE,NWRITER,NCONTENT,NREGDATE,NDEADLINE,NHIT,NCATEGORY,NGENDER,NAGE,NAG,NPERSONNEL,NPT,NPERIOD,NWELFARE,NLOCATION,NDAY,NTIME,NRECEPTION,NTPAY,NPAY,NNEARSUB,NPREMIUM,NADDR,LAT,LNG,MSID,NIMG) values (184,'[동대문엽기떡볶이]홀서빙 구해요~','엽떡','주말 오후에 근무하실 분 구합니다',to_date('20/06/08','RR/MM/DD'),'2020-06-25',2,'일반음식점','성별무관','연령제한','23','1명','인근거주자','1개월~3개월','4대보험','길동','토, 일','오후','010-789-789','시급',9000,'길동역','0','서울 강동구 길동 456-1','37.5356334711405','127.137165983787',null,'bbok.PNG');
Insert into SCOTT.NOTIFICATION (NSEQ,NTITLE,NWRITER,NCONTENT,NREGDATE,NDEADLINE,NHIT,NCATEGORY,NGENDER,NAGE,NAG,NPERSONNEL,NPT,NPERIOD,NWELFARE,NLOCATION,NDAY,NTIME,NRECEPTION,NTPAY,NPAY,NNEARSUB,NPREMIUM,NADDR,LAT,LNG,MSID,NIMG) values (185,'도미노피자 길동점에서 배달 알바 모집합니다','도미노','평일 배달 알바 구해요',to_date('20/06/08','RR/MM/DD'),'2020-06-30',1,'패스트푸드점','성별무관','연령제한','23','3명','운전면혀 소지자','6개월~1년','4대보험','길동','월~금','09:00~18:00','010-321-3214','시급',10000,'길동역','0','서울 강동구 천중로 200','37.5407002551692','127.142556499397',null,'domino.PNG');
Insert into SCOTT.NOTIFICATION (NSEQ,NTITLE,NWRITER,NCONTENT,NREGDATE,NDEADLINE,NHIT,NCATEGORY,NGENDER,NAGE,NAG,NPERSONNEL,NPT,NPERIOD,NWELFARE,NLOCATION,NDAY,NTIME,NRECEPTION,NTPAY,NPAY,NNEARSUB,NPREMIUM,NADDR,LAT,LNG,MSID,NIMG) values (187,'메가커피 길동역점에서 함께 일하실 분을 모집합니다.','메가','평일 오전에 커피제조하실 분을 모집합니다.',to_date('20/06/08','RR/MM/DD'),'2020-06-19',6,'커피전문점','성별무관','연령제한','23','1명','모두모두~~','1개월~3개월','야간수당','길동','월~금','오전','010-1212-1212','시급',9000,'길동역','0','서울 강동구 양재대로 1465','37.5368399179472','127.139314330701',null,'mega.PNG');
Insert into SCOTT.NOTIFICATION (NSEQ,NTITLE,NWRITER,NCONTENT,NREGDATE,NDEADLINE,NHIT,NCATEGORY,NGENDER,NAGE,NAG,NPERSONNEL,NPT,NPERIOD,NWELFARE,NLOCATION,NDAY,NTIME,NRECEPTION,NTPAY,NPAY,NNEARSUB,NPREMIUM,NADDR,LAT,LNG,MSID,NIMG) values (189,'메가박스에서 함께 일할 크루를 모집합니다','메가박스','평일 오후',to_date('20/06/08','RR/MM/DD'),'2020-06-29',0,'영화·공연','성별무관','연령제한','21','1명','없음','6개월~1년','4대보험','길동','월~금','오후','010-7878-9898','시급',9000,'길동역','0','서울 강동구 명일로 199','37.5366038391067','127.145529160806',null,'megabox.PNG');
Insert into SCOTT.NOTIFICATION (NSEQ,NTITLE,NWRITER,NCONTENT,NREGDATE,NDEADLINE,NHIT,NCATEGORY,NGENDER,NAGE,NAG,NPERSONNEL,NPT,NPERIOD,NWELFARE,NLOCATION,NDAY,NTIME,NRECEPTION,NTPAY,NPAY,NNEARSUB,NPREMIUM,NADDR,LAT,LNG,MSID,NIMG) values (190,'bhc치킨에서 치킨 튀겨주실 분을 구합니다','비에이치씨','주방 ',to_date('20/06/08','RR/MM/DD'),'2020-06-26',2,'치킨 · 피자전문점','성별무관','연령제한','22','2명','주방 업무 경력자','1개월~3개월','야간수당','천호동','월~토','오후','010-8787-7878','시급',9000,'길동역','0','서울 강동구 천중로 152','37.5411109303866','127.136922331705',null,'bhc.PNG');
Insert into SCOTT.NOTIFICATION (NSEQ,NTITLE,NWRITER,NCONTENT,NREGDATE,NDEADLINE,NHIT,NCATEGORY,NGENDER,NAGE,NAG,NPERSONNEL,NPT,NPERIOD,NWELFARE,NLOCATION,NDAY,NTIME,NRECEPTION,NTPAY,NPAY,NNEARSUB,NPREMIUM,NADDR,LAT,LNG,MSID,NIMG) values (192,'gs25편의점에서 알바 구해요!','지에스','주말 오후!!',to_date('20/06/08','RR/MM/DD'),'2020-06-19',1,'캐셔·카운터','성별무관','연령제한','23','1명','없음','1개월~3개월','야간수당','천호동','토, 일','오후','010-4848-4848','시급',8590,'천호역','0','서울 강동구 천호대로163길 21','37.5375677862629','127.130850648133',null,'gs.PNG');
REM INSERTING into SCOTT.QUESTION
SET DEFINE OFF;
Insert into SCOTT.QUESTION (QNO,QTITLE,QWRITER,QCONTENT,QRCONTENT,QTYPE,QDATE,QHIT,QGROUP,QSTEP,QINDENT,QMASTER) values (4,'비밀번호 까먹었어요','나','비밀번호를 까먹어버렸어요ㅜㅜ',null,'modi',to_date('20/05/21','RR/MM/DD'),0,4,0,0,'0');
Insert into SCOTT.QUESTION (QNO,QTITLE,QWRITER,QCONTENT,QRCONTENT,QTYPE,QDATE,QHIT,QGROUP,QSTEP,QINDENT,QMASTER) values (101,'이이려어어억서엉','MASTER','이이려어어억서엉이이려어어억서엉','이이려어어억서엉 답변이에우~~~','write',to_date('20/06/03','RR/MM/DD'),1,14,1,1,'1');
Insert into SCOTT.QUESTION (QNO,QTITLE,QWRITER,QCONTENT,QRCONTENT,QTYPE,QDATE,QHIT,QGROUP,QSTEP,QINDENT,QMASTER) values (121,'비밀번호 까먹었어요','seeker','찾아주세요ㅜㅜ',null,'service',to_date('20/06/08','RR/MM/DD'),25,121,0,0,'0');
Insert into SCOTT.QUESTION (QNO,QTITLE,QWRITER,QCONTENT,QRCONTENT,QTYPE,QDATE,QHIT,QGROUP,QSTEP,QINDENT,QMASTER) values (45,'서비스이용1','MASTER','ㄴㄴㄴㄴ','서비스이용 답변','service',to_date('20/05/22','RR/MM/DD'),0,9,1,1,'1');
Insert into SCOTT.QUESTION (QNO,QTITLE,QWRITER,QCONTENT,QRCONTENT,QTYPE,QDATE,QHIT,QGROUP,QSTEP,QINDENT,QMASTER) values (46,'등록등로오오옹ㄱ','MASTER','ㅎㅎㅎㅎ','ㅇㅇㅇㅇ','insert',to_date('20/05/22','RR/MM/DD'),0,12,1,1,'1');
Insert into SCOTT.QUESTION (QNO,QTITLE,QWRITER,QCONTENT,QRCONTENT,QTYPE,QDATE,QHIT,QGROUP,QSTEP,QINDENT,QMASTER) values (47,'정보1','MASTER','ㅇㅇㅇㅇ','ㄱ,렝~~','modi',to_date('20/05/22','RR/MM/DD'),3,16,1,1,'1');
Insert into SCOTT.QUESTION (QNO,QTITLE,QWRITER,QCONTENT,QRCONTENT,QTYPE,QDATE,QHIT,QGROUP,QSTEP,QINDENT,QMASTER) values (61,'정보 수정4','MASTER','ㅇㄹㅇㄹㅇㄹ','답변을 완료했습니다!','all',to_date('20/05/25','RR/MM/DD'),1,18,1,1,'1');
Insert into SCOTT.QUESTION (QNO,QTITLE,QWRITER,QCONTENT,QRCONTENT,QTYPE,QDATE,QHIT,QGROUP,QSTEP,QINDENT,QMASTER) values (3,'제목 문의','작성자','내용',null,'modify',to_date('20/05/21','RR/MM/DD'),0,3,0,0,'0');
Insert into SCOTT.QUESTION (QNO,QTITLE,QWRITER,QCONTENT,QRCONTENT,QTYPE,QDATE,QHIT,QGROUP,QSTEP,QINDENT,QMASTER) values (7,'정보 수정1','ㅇㅇ','ㅇㅇㅇㅇㅇㅇ',null,'modi',to_date('20/05/21','RR/MM/DD'),0,7,0,0,'0');
Insert into SCOTT.QUESTION (QNO,QTITLE,QWRITER,QCONTENT,QRCONTENT,QTYPE,QDATE,QHIT,QGROUP,QSTEP,QINDENT,QMASTER) values (8,'정보 수정3','ㅇㅇ','ㅇㅇㅇㅇ',null,'modi',to_date('20/05/21','RR/MM/DD'),1,8,0,0,'0');
Insert into SCOTT.QUESTION (QNO,QTITLE,QWRITER,QCONTENT,QRCONTENT,QTYPE,QDATE,QHIT,QGROUP,QSTEP,QINDENT,QMASTER) values (11,'등록등록','ㅁㅁ','ㅁㅁㅁㅁ',null,'insert',to_date('20/05/21','RR/MM/DD'),0,11,0,0,'0');
Insert into SCOTT.QUESTION (QNO,QTITLE,QWRITER,QCONTENT,QRCONTENT,QTYPE,QDATE,QHIT,QGROUP,QSTEP,QINDENT,QMASTER) values (12,'등록등로오오옹ㄱ','ㅎㅎ','ㅎㅎㅎㅎ',null,'insert',to_date('20/05/21','RR/MM/DD'),1,12,0,0,'0');
Insert into SCOTT.QUESTION (QNO,QTITLE,QWRITER,QCONTENT,QRCONTENT,QTYPE,QDATE,QHIT,QGROUP,QSTEP,QINDENT,QMASTER) values (14,'이이려어어억서엉','ㅇㅇ','이이려어어억서엉이이려어어억서엉',null,'write',to_date('20/05/21','RR/MM/DD'),1,14,0,0,'0');
Insert into SCOTT.QUESTION (QNO,QTITLE,QWRITER,QCONTENT,QRCONTENT,QTYPE,QDATE,QHIT,QGROUP,QSTEP,QINDENT,QMASTER) values (81,'정보 수정55','MASTER','ㅛㅛㅛㅛ','dsgshsdhshs','modi',to_date('20/05/26','RR/MM/DD'),1,21,1,1,'1');
Insert into SCOTT.QUESTION (QNO,QTITLE,QWRITER,QCONTENT,QRCONTENT,QTYPE,QDATE,QHIT,QGROUP,QSTEP,QINDENT,QMASTER) values (16,'정보1','ㅇ','ㅇㅇㅇㅇ',null,'modi',to_date('20/05/21','RR/MM/DD'),3,16,0,0,'0');
Insert into SCOTT.QUESTION (QNO,QTITLE,QWRITER,QCONTENT,QRCONTENT,QTYPE,QDATE,QHIT,QGROUP,QSTEP,QINDENT,QMASTER) values (17,'정보 수정2','나','ㅇㅎㄶㄶ',null,'modi',to_date('20/05/21','RR/MM/DD'),1,17,0,0,'0');
Insert into SCOTT.QUESTION (QNO,QTITLE,QWRITER,QCONTENT,QRCONTENT,QTYPE,QDATE,QHIT,QGROUP,QSTEP,QINDENT,QMASTER) values (18,'정보 수정4','너너','ㅇㄹㅇㄹㅇㄹ',null,'all',to_date('20/05/21','RR/MM/DD'),6,18,0,0,'0');
Insert into SCOTT.QUESTION (QNO,QTITLE,QWRITER,QCONTENT,QRCONTENT,QTYPE,QDATE,QHIT,QGROUP,QSTEP,QINDENT,QMASTER) values (20,'정보 수정55','ㅛㅛ','ㅛㅛㅛㅛ',null,'modi',to_date('20/05/21','RR/MM/DD'),0,20,0,0,'0');
Insert into SCOTT.QUESTION (QNO,QTITLE,QWRITER,QCONTENT,QRCONTENT,QTYPE,QDATE,QHIT,QGROUP,QSTEP,QINDENT,QMASTER) values (22,' 정보 수정합니당~~','ㅕㅕ','ㅕㅕㅕㅕㅕㅕ',null,'modi',to_date('20/05/21','RR/MM/DD'),43,22,0,0,'0');
Insert into SCOTT.QUESTION (QNO,QTITLE,QWRITER,QCONTENT,QRCONTENT,QTYPE,QDATE,QHIT,QGROUP,QSTEP,QINDENT,QMASTER) values (43,'정보 수정6','MASTER','ㅕㅕㅕㅕㅕㅕ','진짜답변!!','modi',to_date('20/05/22','RR/MM/DD'),11,22,1,1,'1');
Insert into SCOTT.QUESTION (QNO,QTITLE,QWRITER,QCONTENT,QRCONTENT,QTYPE,QDATE,QHIT,QGROUP,QSTEP,QINDENT,QMASTER) values (6,'정보 수정1','ㅇㅇ','ㅇㅇㅇㅇ',null,'modi',to_date('20/05/21','RR/MM/DD'),0,6,0,0,'0');
Insert into SCOTT.QUESTION (QNO,QTITLE,QWRITER,QCONTENT,QRCONTENT,QTYPE,QDATE,QHIT,QGROUP,QSTEP,QINDENT,QMASTER) values (9,'서비스이용1','ㄴㄴ','ㄴㄴㄴㄴ',null,'service',to_date('20/05/21','RR/MM/DD'),1,9,0,0,'0');
Insert into SCOTT.QUESTION (QNO,QTITLE,QWRITER,QCONTENT,QRCONTENT,QTYPE,QDATE,QHIT,QGROUP,QSTEP,QINDENT,QMASTER) values (10,'서비스 이용이용ㅂㅂ','ㅂㅂ','ㅂㅂㅂㅂㅂ',null,'service',to_date('20/05/21','RR/MM/DD'),0,10,0,0,'0');
Insert into SCOTT.QUESTION (QNO,QTITLE,QWRITER,QCONTENT,QRCONTENT,QTYPE,QDATE,QHIT,QGROUP,QSTEP,QINDENT,QMASTER) values (13,'이력서','ㅇㅇ','이히히히',null,'write',to_date('20/05/21','RR/MM/DD'),0,13,0,0,'0');
Insert into SCOTT.QUESTION (QNO,QTITLE,QWRITER,QCONTENT,QRCONTENT,QTYPE,QDATE,QHIT,QGROUP,QSTEP,QINDENT,QMASTER) values (21,'정보 수정55','ㅛㅛ','ㅛㅛㅛㅛ',null,'modi',to_date('20/05/21','RR/MM/DD'),5,21,0,0,'0');
Insert into SCOTT.QUESTION (QNO,QTITLE,QWRITER,QCONTENT,QRCONTENT,QTYPE,QDATE,QHIT,QGROUP,QSTEP,QINDENT,QMASTER) values (5,' 서비스 이용이용','너너','서비스를 어떻게 이용하나요 호호호홓',null,'service',to_date('20/05/21','RR/MM/DD'),2,5,0,0,'0');
Insert into SCOTT.QUESTION (QNO,QTITLE,QWRITER,QCONTENT,QRCONTENT,QTYPE,QDATE,QHIT,QGROUP,QSTEP,QINDENT,QMASTER) values (122,'비밀번호 까먹었어요','MASTER','찾아주세요ㅜㅜ','찾아드릴게요','service',to_date('20/06/08','RR/MM/DD'),7,121,1,1,'1');
REM INSERTING into SCOTT.RESUME
SET DEFINE OFF;
Insert into SCOTT.RESUME (MSID,RREF,ROPEN) values ('seeker','car.txt','0');
--------------------------------------------------------
--  DDL for Procedure RE_SEQ
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "SCOTT"."RE_SEQ" 
(
sname in varchar2
)
is
val number;
begin
execute immediate 'select '|| sname ||'.nextval from dual ' into val;
execute immediate 'alter sequence ' || sname || ' increment by -'|| val || ' minvalue 0';
execute immediate 'select '|| sname ||'.nextval from dual ' into val;
execute immediate 'alter sequence '|| sname|| ' increment by 1 minvalue 0';
end;

/
--------------------------------------------------------
--  Constraints for Table FREE
--------------------------------------------------------

  ALTER TABLE "SCOTT"."FREE" ADD PRIMARY KEY ("FNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table FREE_REPLY
--------------------------------------------------------

  ALTER TABLE "SCOTT"."FREE_REPLY" ADD PRIMARY KEY ("FNO", "FRNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table INFORM
--------------------------------------------------------

  ALTER TABLE "SCOTT"."INFORM" ADD PRIMARY KEY ("INO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MEMBER_SEEKER
--------------------------------------------------------

  ALTER TABLE "SCOTT"."MEMBER_SEEKER" ADD PRIMARY KEY ("MSNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "SCOTT"."MEMBER_SEEKER" ADD UNIQUE ("MSID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table QUESTION
--------------------------------------------------------

  ALTER TABLE "SCOTT"."QUESTION" ADD PRIMARY KEY ("QNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table FREE_REPLY
--------------------------------------------------------

  ALTER TABLE "SCOTT"."FREE_REPLY" ADD CONSTRAINT "FREE_REPLY_FNO" FOREIGN KEY ("FNO")
	  REFERENCES "SCOTT"."FREE" ("FNO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PICKLIST
--------------------------------------------------------

  ALTER TABLE "SCOTT"."PICKLIST" ADD FOREIGN KEY ("MSID")
	  REFERENCES "SCOTT"."MEMBER_SEEKER" ("MSID") ON DELETE SET NULL ENABLE;
