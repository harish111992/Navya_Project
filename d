db2diag.log:
C:\ProgramData\IBM\DB2\DB2COPY1\DB2




grants: db2admin(admin)
scripts: juicenew/juiceold(schema owner)


Issue while executing bat files:
	db2 select * from fs_relcontrol



Juice App:
Static Data Setup:

copy the folder

db2 -tvf "C:\Users\navya.kasimkota\Desktop\NN\StaticDataJuice\Static_Data_JUICE\DB_Setup_Files\DB_Setup_Files\DB2\UFSA_LUW.sql" > "C:\Users\navya.kasimkota\Desktop\NN\StaticDataJuice\Static_Data_JUICE\DB_Setup_Files\DB_Setup_Files\DB2\UFSA_LUW.LOG"

Check the last line of UFSA_LUW.log(success status)

run the cmds in the setupfile:
db2 create tablespace USERTABLES
db2 create tablespace USERINDEXES
db2 grant use of tablespace USERTABLES to juicenew
db2 grant use of tablespace USERINDEXES to juicenew


db2 -tvf "C:\Users\navya.kasimkota\Desktop\NN\StaticDataJuice\Static_Data_JUICE\DB_Setup_Files\DB_Setup_Files\DB2\DDLsUpdated\COMMON_BASE_Updated.DDL" > "C:\Users\navya.kasimkota\Desktop\NN\StaticDataJuice\Static_Data_JUICE\DB_Setup_Files\DB_Setup_Files\DB2\DDLsUpdated\COMMON_BASE_Updated.LOG"

db2 -tvf "C:\Users\navya.kasimkota\Desktop\NN\StaticDataJuice\Static_Data_JUICE\DB_Setup_Files\DB_Setup_Files\DB2\DB_VERSION_SCHEMA.DDL" > "C:\Users\navya.kasimkota\Desktop\NN\StaticDataJuice\Static_Data_JUICE\DB_Setup_Files\DB_Setup_Files\DB2\DB_VERSION_SCHEMA.LOG"

db2 -tvf "C:\Users\navya.kasimkota\Desktop\NN\StaticDataJuice\Static_Data_JUICE\DB_Setup_Files\DB_Setup_Files\DB2\UFSA_FK.sql" > "C:\Users\navya.kasimkota\Desktop\NN\StaticDataJuice\Static_Data_JUICE\DB_Setup_Files\DB_Setup_Files\DB2\UFSA_FK.LOG"

db2 -tvf "C:\Users\navya.kasimkota\Desktop\NN\StaticDataJuice\Static_Data_JUICE\DB_Setup_Files\DB_Setup_Files\DB2\COMMON_TABLES_DATA.sql" > "C:\Users\navya.kasimkota\Desktop\NN\StaticDataJuice\Static_Data_JUICE\DB_Setup_Files\DB_Setup_Files\DB2\COMMON_TABLES_DATA.LOG"



run bat files:
latest DDL:

1. C:\Users\navya.kasimkota\Desktop\NN\StaticDataJuice\Static_Data_JUICE\DB_Setup_Files\DB_Setup_Files\DB2\DDL 
	>>DDLUpdate.bat
->execute bat files:




2. C:\Users\navya.kasimkota\Desktop\NN\StaticDataJuice\Static_Data_JUICE\DB_Setup_Files\DB_Setup_Files\StaticDBApplicationScripts\ApplicationDatabase\2_Life400\Delta\1_P6I5Patch..LIFE400LIS
	>>DBUpdate.bat(Life400)
3. C:\Users\navya.kasimkota\Desktop\NN\StaticDataJuice\Static_Data_JUICE\DB_Setup_Files\DB_Setup_Files\Deltas
	>>DBUpdate_Delta.bat(VZB)
db2 select * from fs_relcontrol

Go to:
C:\Users\navya.kasimkota\Desktop\NN\StaticDataJuice\Static_Data_JUICE\DB_Setup_Files\DB_Setup_Files\Deltas

db2 connect to juicesd USER juicenew using pwd

translations:
db2 delete from fs_errordesc
db2 delete from fs_listdescriptn
db2 delete from fs_listvaluedesc


db2 import from C:\Users\navya.kasimkota\Desktop\NN\StaticDataJuice\Static_Data_JUICE\AAL_Delta_Translations\AAL_Delta_Translations\Translations_ixf-AAL\Translations_ixf_Patch09\Translations_ixf_Patch09\FS_ERRORDESC.IXF of ixf insert into fs_errordesc

db2 import from C:\Users\navya.kasimkota\Desktop\NN\StaticDataJuice\Static_Data_JUICE\AAL_Delta_Translations\AAL_Delta_Translations\Translations_ixf-AAL\Translations_ixf_Patch09\Translations_ixf_Patch09\FS_LISTVALUEDESC.IXF of ixf insert into FS_LISTVALUEDESC

db2 C:\Users\navya.kasimkota\Desktop\NN\StaticDataJuice\Static_Data_JUICE\AAL_Delta_Translations\AAL_Delta_Translations\Translations_ixf-AAL\Translations_ixf_Patch09\Translations_ixf_Patch09\FS_LISTDESCRIPTN.IXF of ixf insert into FS_LISTDESCRIPTN

db2 alter table FS_LISTVALUEDESC drop column row_chg
db2 reorg table FS_LISTVALUEDESC

db2 import from C:\Users\navya.kasimkota\Desktop\NN\StaticDataJuice\Static_Data_JUICE\AAL_Delta_Translations\AAL_Delta_Translations\Patch13TranslationsapplicableTillPatch16\FS_LISTVALUEDESC.IXF 


db2 -tvf "LP_P6_I7_BL_D14_DATA.sql" > "LP_P6_I7_BL_D14_DATA.log"
db2 -tvf "LP_P6_I7_BL_D15_DATA.sql" > "LP_P6_I7_BL_D15_DATA.log"
db2 -tvf "LP_P6_I7_BL_D16_DATA.sql" > "LP_P6_I7_BL_D16_DATA.log"
db2 -tvf "LP_P6_I7_BL_D17_DATA.sql" > "LP_P6_I7_BL_D17_DATA.log"

db2 delete from fs_listvaluedesc

db2 import from C:\Users\navya.kasimkota\Desktop\NN\StaticDataJuice\Static_Data_JUICE\AAL_Delta_Translations\AAL_Delta_Translations\Latestpatch17-TranslationDelta\latestpatch17\FS_LISTVALUEDESC.IXF of ixf insert into FS_LISTVALUEDESC



db2 -tvf "LP_P6_I7_BL_D18_DATA.sql" > "LP_P6_I7_BL_D18_DATA.log"
db2 -tvf "LP_P6_I7_BL_D19_DATA.sql" > "LP_P6_I7_BL_D19_DATA.log"
db2 -tvf "LP_P6_I7_BL_D20_DATA.sql" > "LP_P6_I7_BL_D20_DATA.log"


Go to:
C:\Users\navya.kasimkota\Desktop\NN\StaticDataJuice\Static_Data_JUICE\AAL_Delta_Translations\AAL_Delta_Translations

db2 import from of ixf insert into FS_LISTVALUEDESC 




db2 delete from fs_errordesc
db2 delete from fs_listdescriptn
db2 delete from fs_listvaluedesc


db2 alter table fs_errordesc drop column row_chg
db2 reorg table fs_errordesc


================================================================================================================================================================

UFSA Setup:

Download 
C:\UFSA_TOOL_DL

Replace ApplicationConfig.xml with latest one

Open as archive: Zulu jar file with 7-zip and there replace the ApplicationConfig.xml with latest one

CMD as Admin:
C:\Program Files\IBM\SDP\jdk\bin>java -jar C:\UFSA_TOOL_DL\UFSA_TOOL_DL\ufsa_admin.jar

Steps to open UFSATool - 
1]open cmd and enter - cd C:\Program Files\IBM\SDP\jdk\bin
2]Enter second command- java -jar C:\UFSA_TOOL_DL\ufsa_admin.jar
3] Enter Username- SUPERUSE , PW- SUPERUSE
4] Click on Life and Pensions

================================================================================================================================================================

BufferPool Cmnds:
CREATE BUFFERPOOL BP8K pagesize 8K

CREATE SYSTEM TEMPORARY TABLESPACE STB_8 PAGESIZE 8K BUFFERPOOL BP8K

CREATE BUFFERPOOL BP16K pagesize 16K

CREATE SYSTEM TEMPORARY TABLESPACE STB_16 PAGESIZE 16K BUFFERPOOL BP16K

CREATE BUFFERPOOL BP32K pagesize 32K

CREATE SYSTEM TEMPORARY TABLESPACE STB_32 PAGESIZE 32K BUFFERPOOL BP32K

================================================================================================================================================================

db2 -tvf "LP_P6_I8_BL_D01_DATA.sql" > "LP_P6_I8_BL_D01_DATA.log"
db2 -tvf "LP_P6_I8_BL_D02_DATA.sql" > "LP_P6_I8_BL_D02_DATA.log"
db2 -tvf "LP_P6_I8_BL_D03_DATA.sql" > "LP_P6_I8_BL_D03_DATA.log"
db2 -tvf "LP_P6_I8_BL_D04_DATA.sql" > "LP_P6_I8_BL_D04_DATA.log"
db2 -tvf "LP_P6_I8_BL_D05_DATA.sql" > "LP_P6_I8_BL_D05_DATA.log"
db2 -tvf "LP_P6_I8_BL_D06_DATA.sql" > "LP_P6_I8_BL_D06_DATA.log"
db2 -tvf "LP_P6_I8_BL_D07_DATA.sql" > "LP_P6_I8_BL_D07_DATA.log"
db2 -tvf "LP_P6_I8_BL_D08_DATA.sql" > "LP_P6_I8_BL_D08_DATA.log"

db2 delete from fs_errordesc   
db2 delete from FS_LISTDESCRIPTN
db2 delete from fs_listvaluedesc 

If any error persist like 4 rows were rejected something then try below command
db2 reorg table fs_errordesc

================================================================================================================================================================
db2 alter table fs_errordesc drop column row_chg
db2 reorg table fs_errordesc


db2 delete from fs_errordesc   
db2 delete from FS_LISTDESCRIPTN
db2 delete from fs_listvaluedesc

db2 import from C:\Users\navya.kasimkota\Desktop\NN\StaticDataJuice\Static_Data_JUICE\AAL_Delta_Translations\AAL_Delta_Translations\Translations_ixf-AAL\FS_ERRORDESC.IXF of ixf insert into fs_errordesc

db2 import from C:\Users\navya.kasimkota\Desktop\NN\StaticDataJuice\Static_Data_JUICE\AAL_Delta_Translations\AAL_Delta_Translations\Translations_ixf-AAL\FS_LISTDESCRIPTN.IXF of ixf insert into FS_LISTDESCRIPTN


db2 import from C:\Users\navya.kasimkota\Desktop\NN\StaticDataJuice\Static_Data_JUICE\AAL_Delta_Translations\AAL_Delta_Translations\Translations_ixf-AAL\FS_LISTVALUEDESC.IXF of ixf insert into FS_LISTVALUEDESC
