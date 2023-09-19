--------------------------------------------------------
--  File created - Wednesday-September-20-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table CATEGORY
--------------------------------------------------------

  CREATE TABLE "SOCIAL_NETWORK"."CATEGORY" 
   (	"ID" NUMBER(*,0) GENERATED BY DEFAULT AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"PARENTID" NUMBER(*,0) DEFAULT NULL, 
	"TITLE" VARCHAR2(75 BYTE), 
	"METATITLE" VARCHAR2(100 BYTE) DEFAULT NULL, 
	"SLUG" VARCHAR2(100 BYTE), 
	"CONTENT" CLOB DEFAULT NULL
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" 
 LOB ("CONTENT") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW 4000 CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES ) ;
--------------------------------------------------------
--  DDL for Table POST
--------------------------------------------------------

  CREATE TABLE "SOCIAL_NETWORK"."POST" 
   (	"ID" NUMBER(*,0) GENERATED BY DEFAULT AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"AUTHORID" NUMBER(*,0), 
	"PARENTID" NUMBER(*,0) DEFAULT NULL, 
	"TITLE" VARCHAR2(45 BYTE), 
	"MEGATITLE" VARCHAR2(100 BYTE) DEFAULT NULL, 
	"SLUG" VARCHAR2(100 BYTE), 
	"SUMMARY" VARCHAR2(1000 BYTE), 
	"PUBLISHED" NUMBER(1,0) DEFAULT 0, 
	"CREATEDAT" DATE, 
	"UPDATEDAT" DATE DEFAULT NULL, 
	"PUBLISHEDAT" DATE DEFAULT NULL, 
	"CONTENT" CLOB
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" 
 LOB ("CONTENT") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW 4000 CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES ) ;
--------------------------------------------------------
--  DDL for Table POSTCATEGORY
--------------------------------------------------------

  CREATE TABLE "SOCIAL_NETWORK"."POSTCATEGORY" 
   (	"POSTID" NUMBER(*,0), 
	"CATEGORYID" NUMBER(*,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table POSTCOMMENT
--------------------------------------------------------

  CREATE TABLE "SOCIAL_NETWORK"."POSTCOMMENT" 
   (	"ID" NUMBER(*,0) GENERATED BY DEFAULT AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"POSTID" NUMBER(*,0), 
	"PARENTID" NUMBER(*,0) DEFAULT NULL, 
	"TITLE" VARCHAR2(100 BYTE), 
	"PUBLISHED" NUMBER(1,0) DEFAULT 0, 
	"CREATEDAT" DATE, 
	"PUBLISHEDAT" DATE DEFAULT NULL, 
	"CONTENT" CLOB DEFAULT NULL
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" 
 LOB ("CONTENT") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW 4000 CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES ) ;
--------------------------------------------------------
--  DDL for Table POSTMETA
--------------------------------------------------------

  CREATE TABLE "SOCIAL_NETWORK"."POSTMETA" 
   (	"ID" NUMBER(*,0) GENERATED BY DEFAULT AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"POSTID" NUMBER(*,0), 
	"KEY" VARCHAR2(50 BYTE), 
	"CONTENT" CLOB DEFAULT NULL
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" 
 LOB ("CONTENT") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW 4000 CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES ) ;
--------------------------------------------------------
--  DDL for Table TAG
--------------------------------------------------------

  CREATE TABLE "SOCIAL_NETWORK"."TAG" 
   (	"ID" NUMBER(*,0) GENERATED BY DEFAULT AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"TITLE" VARCHAR2(75 BYTE), 
	"METATITLE" VARCHAR2(100 BYTE) DEFAULT NULL, 
	"SLUG" VARCHAR2(100 BYTE), 
	"CONTENT" CLOB DEFAULT NULL
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" 
 LOB ("CONTENT") STORE AS SECUREFILE (
  TABLESPACE "USERS" ENABLE STORAGE IN ROW 4000 CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES ) ;
--------------------------------------------------------
--  DDL for Table TAGTABLE
--------------------------------------------------------

  CREATE TABLE "SOCIAL_NETWORK"."TAGTABLE" 
   (	"TAGID" NUMBER(*,0), 
	"POSTID" NUMBER(*,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table USERS
--------------------------------------------------------

  CREATE TABLE "SOCIAL_NETWORK"."USERS" 
   (	"ID" NUMBER(*,0) GENERATED BY DEFAULT AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"FNAME" VARCHAR2(50 BYTE) DEFAULT NULL, 
	"MIDNAME" VARCHAR2(50 BYTE) DEFAULT NULL, 
	"LNAME" VARCHAR2(50 BYTE) DEFAULT NULL, 
	"MOBILE" VARCHAR2(15 BYTE) DEFAULT NULL, 
	"EMAIL" VARCHAR2(50 BYTE) DEFAULT NULL, 
	"PASSWORDHASH" VARCHAR2(32 BYTE), 
	"REGISTEREDAT" DATE, 
	"LASTLOGIN" DATE DEFAULT NULL, 
	"INTRO" VARCHAR2(500 BYTE) DEFAULT NULL, 
	"PROFILE" VARCHAR2(3000 BYTE) DEFAULT NULL
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
REM INSERTING into SOCIAL_NETWORK.CATEGORY
SET DEFINE OFF;
REM INSERTING into SOCIAL_NETWORK.POST
SET DEFINE OFF;
REM INSERTING into SOCIAL_NETWORK.POSTCATEGORY
SET DEFINE OFF;
REM INSERTING into SOCIAL_NETWORK.POSTCOMMENT
SET DEFINE OFF;
REM INSERTING into SOCIAL_NETWORK.POSTMETA
SET DEFINE OFF;
REM INSERTING into SOCIAL_NETWORK.TAG
SET DEFINE OFF;
REM INSERTING into SOCIAL_NETWORK.TAGTABLE
SET DEFINE OFF;
REM INSERTING into SOCIAL_NETWORK.USERS
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index SYS_C008431
--------------------------------------------------------

  CREATE UNIQUE INDEX "SOCIAL_NETWORK"."SYS_C008431" ON "SOCIAL_NETWORK"."CATEGORY" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IDX_CATEGORY
--------------------------------------------------------

  CREATE INDEX "SOCIAL_NETWORK"."IDX_CATEGORY" ON "SOCIAL_NETWORK"."CATEGORY" ("PARENTID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008413
--------------------------------------------------------

  CREATE UNIQUE INDEX "SOCIAL_NETWORK"."SYS_C008413" ON "SOCIAL_NETWORK"."POST" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index UNIQ_SLUG
--------------------------------------------------------

  CREATE UNIQUE INDEX "SOCIAL_NETWORK"."UNIQ_SLUG" ON "SOCIAL_NETWORK"."POST" ("SLUG") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index POST_USER
--------------------------------------------------------

  CREATE INDEX "SOCIAL_NETWORK"."POST_USER" ON "SOCIAL_NETWORK"."POST" ("AUTHORID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index POST_PARENT
--------------------------------------------------------

  CREATE INDEX "SOCIAL_NETWORK"."POST_PARENT" ON "SOCIAL_NETWORK"."POST" ("PARENTID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008435
--------------------------------------------------------

  CREATE UNIQUE INDEX "SOCIAL_NETWORK"."SYS_C008435" ON "SOCIAL_NETWORK"."POSTCATEGORY" ("POSTID", "CATEGORYID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IDX_POSTID_PCAT
--------------------------------------------------------

  CREATE INDEX "SOCIAL_NETWORK"."IDX_POSTID_PCAT" ON "SOCIAL_NETWORK"."POSTCATEGORY" ("POSTID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IDX_CATEGORYID_PCAT
--------------------------------------------------------

  CREATE INDEX "SOCIAL_NETWORK"."IDX_CATEGORYID_PCAT" ON "SOCIAL_NETWORK"."POSTCATEGORY" ("CATEGORYID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IDX_POSTCOMMENT
--------------------------------------------------------

  CREATE INDEX "SOCIAL_NETWORK"."IDX_POSTCOMMENT" ON "SOCIAL_NETWORK"."POSTCOMMENT" ("POSTID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IDX_COMMENT_PARENT
--------------------------------------------------------

  CREATE INDEX "SOCIAL_NETWORK"."IDX_COMMENT_PARENT" ON "SOCIAL_NETWORK"."POSTCOMMENT" ("PARENTID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008425
--------------------------------------------------------

  CREATE UNIQUE INDEX "SOCIAL_NETWORK"."SYS_C008425" ON "SOCIAL_NETWORK"."POSTCOMMENT" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008419
--------------------------------------------------------

  CREATE UNIQUE INDEX "SOCIAL_NETWORK"."SYS_C008419" ON "SOCIAL_NETWORK"."POSTMETA" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IDX_POSTMETA
--------------------------------------------------------

  CREATE INDEX "SOCIAL_NETWORK"."IDX_POSTMETA" ON "SOCIAL_NETWORK"."POSTMETA" ("POSTID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index UNIQ_POSTMETA
--------------------------------------------------------

  CREATE UNIQUE INDEX "SOCIAL_NETWORK"."UNIQ_POSTMETA" ON "SOCIAL_NETWORK"."POSTMETA" ("POSTID", "KEY") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008441
--------------------------------------------------------

  CREATE UNIQUE INDEX "SOCIAL_NETWORK"."SYS_C008441" ON "SOCIAL_NETWORK"."TAG" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008444
--------------------------------------------------------

  CREATE UNIQUE INDEX "SOCIAL_NETWORK"."SYS_C008444" ON "SOCIAL_NETWORK"."TAGTABLE" ("TAGID", "POSTID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IDX_TAGTABLE_TAGID
--------------------------------------------------------

  CREATE INDEX "SOCIAL_NETWORK"."IDX_TAGTABLE_TAGID" ON "SOCIAL_NETWORK"."TAGTABLE" ("TAGID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IDX_TAGTABLE_POSTID
--------------------------------------------------------

  CREATE INDEX "SOCIAL_NETWORK"."IDX_TAGTABLE_POSTID" ON "SOCIAL_NETWORK"."TAGTABLE" ("POSTID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C008407
--------------------------------------------------------

  CREATE UNIQUE INDEX "SOCIAL_NETWORK"."SYS_C008407" ON "SOCIAL_NETWORK"."USERS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index UNIQ_MOBILE
--------------------------------------------------------

  CREATE UNIQUE INDEX "SOCIAL_NETWORK"."UNIQ_MOBILE" ON "SOCIAL_NETWORK"."USERS" ("MOBILE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index UNIQ_EMAIL
--------------------------------------------------------

  CREATE UNIQUE INDEX "SOCIAL_NETWORK"."UNIQ_EMAIL" ON "SOCIAL_NETWORK"."USERS" ("EMAIL") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table CATEGORY
--------------------------------------------------------

  ALTER TABLE "SOCIAL_NETWORK"."CATEGORY" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SOCIAL_NETWORK"."CATEGORY" MODIFY ("TITLE" NOT NULL ENABLE);
  ALTER TABLE "SOCIAL_NETWORK"."CATEGORY" MODIFY ("SLUG" NOT NULL ENABLE);
  ALTER TABLE "SOCIAL_NETWORK"."CATEGORY" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table POST
--------------------------------------------------------

  ALTER TABLE "SOCIAL_NETWORK"."POST" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SOCIAL_NETWORK"."POST" MODIFY ("AUTHORID" NOT NULL ENABLE);
  ALTER TABLE "SOCIAL_NETWORK"."POST" MODIFY ("TITLE" NOT NULL ENABLE);
  ALTER TABLE "SOCIAL_NETWORK"."POST" MODIFY ("SLUG" NOT NULL ENABLE);
  ALTER TABLE "SOCIAL_NETWORK"."POST" MODIFY ("CREATEDAT" NOT NULL ENABLE);
  ALTER TABLE "SOCIAL_NETWORK"."POST" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table POSTCATEGORY
--------------------------------------------------------

  ALTER TABLE "SOCIAL_NETWORK"."POSTCATEGORY" MODIFY ("POSTID" NOT NULL ENABLE);
  ALTER TABLE "SOCIAL_NETWORK"."POSTCATEGORY" MODIFY ("CATEGORYID" NOT NULL ENABLE);
  ALTER TABLE "SOCIAL_NETWORK"."POSTCATEGORY" ADD PRIMARY KEY ("POSTID", "CATEGORYID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table POSTCOMMENT
--------------------------------------------------------

  ALTER TABLE "SOCIAL_NETWORK"."POSTCOMMENT" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SOCIAL_NETWORK"."POSTCOMMENT" MODIFY ("POSTID" NOT NULL ENABLE);
  ALTER TABLE "SOCIAL_NETWORK"."POSTCOMMENT" MODIFY ("TITLE" NOT NULL ENABLE);
  ALTER TABLE "SOCIAL_NETWORK"."POSTCOMMENT" MODIFY ("CREATEDAT" NOT NULL ENABLE);
  ALTER TABLE "SOCIAL_NETWORK"."POSTCOMMENT" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table POSTMETA
--------------------------------------------------------

  ALTER TABLE "SOCIAL_NETWORK"."POSTMETA" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SOCIAL_NETWORK"."POSTMETA" MODIFY ("POSTID" NOT NULL ENABLE);
  ALTER TABLE "SOCIAL_NETWORK"."POSTMETA" MODIFY ("KEY" NOT NULL ENABLE);
  ALTER TABLE "SOCIAL_NETWORK"."POSTMETA" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TAG
--------------------------------------------------------

  ALTER TABLE "SOCIAL_NETWORK"."TAG" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SOCIAL_NETWORK"."TAG" MODIFY ("TITLE" NOT NULL ENABLE);
  ALTER TABLE "SOCIAL_NETWORK"."TAG" MODIFY ("SLUG" NOT NULL ENABLE);
  ALTER TABLE "SOCIAL_NETWORK"."TAG" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TAGTABLE
--------------------------------------------------------

  ALTER TABLE "SOCIAL_NETWORK"."TAGTABLE" MODIFY ("TAGID" NOT NULL ENABLE);
  ALTER TABLE "SOCIAL_NETWORK"."TAGTABLE" MODIFY ("POSTID" NOT NULL ENABLE);
  ALTER TABLE "SOCIAL_NETWORK"."TAGTABLE" ADD PRIMARY KEY ("TAGID", "POSTID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table USERS
--------------------------------------------------------

  ALTER TABLE "SOCIAL_NETWORK"."USERS" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SOCIAL_NETWORK"."USERS" MODIFY ("PASSWORDHASH" NOT NULL ENABLE);
  ALTER TABLE "SOCIAL_NETWORK"."USERS" MODIFY ("REGISTEREDAT" NOT NULL ENABLE);
  ALTER TABLE "SOCIAL_NETWORK"."USERS" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CATEGORY
--------------------------------------------------------

  ALTER TABLE "SOCIAL_NETWORK"."CATEGORY" ADD CONSTRAINT "CATEGORY_FK" FOREIGN KEY ("PARENTID")
	  REFERENCES "SOCIAL_NETWORK"."CATEGORY" ("ID") ON DELETE SET NULL ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table POST
--------------------------------------------------------

  ALTER TABLE "SOCIAL_NETWORK"."POST" ADD CONSTRAINT "POST_USER_FK" FOREIGN KEY ("AUTHORID")
	  REFERENCES "SOCIAL_NETWORK"."USERS" ("ID") ON DELETE SET NULL ENABLE;
  ALTER TABLE "SOCIAL_NETWORK"."POST" ADD CONSTRAINT "POST_PARENT_FK" FOREIGN KEY ("PARENTID")
	  REFERENCES "SOCIAL_NETWORK"."POST" ("ID") ON DELETE SET NULL ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table POSTCATEGORY
--------------------------------------------------------

  ALTER TABLE "SOCIAL_NETWORK"."POSTCATEGORY" ADD CONSTRAINT "PCAT_POST" FOREIGN KEY ("POSTID")
	  REFERENCES "SOCIAL_NETWORK"."POST" ("ID") ENABLE;
  ALTER TABLE "SOCIAL_NETWORK"."POSTCATEGORY" ADD CONSTRAINT "PCAT_CATEGORY" FOREIGN KEY ("CATEGORYID")
	  REFERENCES "SOCIAL_NETWORK"."CATEGORY" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table POSTCOMMENT
--------------------------------------------------------

  ALTER TABLE "SOCIAL_NETWORK"."POSTCOMMENT" ADD CONSTRAINT "POSTCOMMENT_FK" FOREIGN KEY ("POSTID")
	  REFERENCES "SOCIAL_NETWORK"."POST" ("ID") ON DELETE SET NULL ENABLE;
  ALTER TABLE "SOCIAL_NETWORK"."POSTCOMMENT" ADD CONSTRAINT "PARENTCOMMENT_FK" FOREIGN KEY ("PARENTID")
	  REFERENCES "SOCIAL_NETWORK"."POSTCOMMENT" ("ID") ON DELETE SET NULL ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table POSTMETA
--------------------------------------------------------

  ALTER TABLE "SOCIAL_NETWORK"."POSTMETA" ADD CONSTRAINT "METAPOST_FK" FOREIGN KEY ("POSTID")
	  REFERENCES "SOCIAL_NETWORK"."POST" ("ID") ON DELETE SET NULL ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table TAGTABLE
--------------------------------------------------------

  ALTER TABLE "SOCIAL_NETWORK"."TAGTABLE" ADD CONSTRAINT "TAGTABLE_TAGID_FK" FOREIGN KEY ("TAGID")
	  REFERENCES "SOCIAL_NETWORK"."TAG" ("ID") ON DELETE SET NULL ENABLE;
  ALTER TABLE "SOCIAL_NETWORK"."TAGTABLE" ADD CONSTRAINT "TAGTABLE_POSTID_FK" FOREIGN KEY ("POSTID")
	  REFERENCES "SOCIAL_NETWORK"."POST" ("ID") ON DELETE SET NULL ENABLE;
