Connect System

DROP USER DBSEC CASCADE;

CREATE USER DBSEC IDENTIFIED BY secc$1new
   DEFAULT TABLESPACE USERS
   TEMPORARY TABLESPACE TEMP
   QUOTA UNLIMITED ON USERS
/

GRANT CONNECT,create table, DBA TO DBSEC;
connect DBSEC/secc$1new;

Drop table customer;

CREATE TABLE CUSTOMER (
       SALES_REP_ID         NUMBER(4),
       CUSTOMER_ID          NUMBER(8) NOT NULL,
       CUSTOMER_SSN         VARCHAR2(9),
       FIRST_NAME           VARCHAR2(20),
       LAST_NAME            VARCHAR2(20),
       ADDR_LINE            VARCHAR2(80),
       CITY                 VARCHAR2(30),
       STATE                VARCHAR2(30),
       ZIP_CODE             VARCHAR2(9),
       PHONE                VARCHAR2(15),
       EMAIL                VARCHAR2(80),
       CC_NUMBER            VARCHAR2(20),
       CREDIT_LIMIT         NUMBER,
       GENDER               CHAR(1),
       STATUS               CHAR(1),
       COMMENTS             VARCHAR2(1024),
       USER_NAME            VARCHAR2(30)
);






INSERT INTO CUSTOMER ( SALES_REP_ID, CUSTOMER_ID, CUSTOMER_SSN, FIRST_NAME, LAST_NAME, ADDR_LINE,
CITY, STATE, ZIP_CODE, PHONE, EMAIL, CC_NUMBER, CREDIT_LIMIT, GENDER, STATUS,
COMMENTS, USER_NAME ) VALUES ( 
6415, 201340, '969996970', 'Jeffrey', 'Antoine', '9938 Moreno St.', 'Champagne', 'SD'
, ' 43172', '4319071613', 'JAntoine@iodmgpvjdzprccx.gov', '231146832737266', 200000
, 'M', 'A', '/T  if=<iWZhEUBC3)/M~6wa#DgR) 129_J68$rJ#f^j$"''y/g~,Iot3yhSr','user1'); 


INSERT INTO CUSTOMER ( SALES_REP_ID, CUSTOMER_ID, CUSTOMER_SSN, FIRST_NAME, LAST_NAME, ADDR_LINE,
CITY, STATE, ZIP_CODE, PHONE, EMAIL, CC_NUMBER, CREDIT_LIMIT, GENDER, STATUS,
COMMENTS, USER_NAME ) VALUES ( 
2336, 801367, '596664413', 'Tristan', 'Weis', '88296 Cheatham St.', 'Victorville'
, 'MI', ' 30583', '6491535533', 'TWeis@tenleimrovgfgcj.edu', '936977663745292', 300000
, 'F', 'A', '%PN4lSF)Smf|eNGxD''K7-u9w:X*AD)b86+7hI]osFRNj,c''%Z''Pf1Sh?)YU2','user1'); 


INSERT INTO CUSTOMER ( SALES_REP_ID, CUSTOMER_ID, CUSTOMER_SSN, FIRST_NAME, LAST_NAME, ADDR_LINE,
CITY, STATE, ZIP_CODE, PHONE, EMAIL, CC_NUMBER, CREDIT_LIMIT, GENDER, STATUS,
COMMENTS, USER_NAME ) VALUES ( 
6415, 801397, '118869007', 'Leigha', 'Hernadez', '85 Tsai Road', 'Thorn', 'GA', ' 96955'
, '3367308904', 'LHernadez@ducimwwbulgmglj.ad', '973236712433695', 200000, 'F', 'A'
, '])Bjy~f0-8lkZz#:Z@}u_[(V]KX@em{(g2^AR5{9{tq5"S"lsf6h5^i;U{+`','user1'); 


INSERT INTO CUSTOMER ( SALES_REP_ID, CUSTOMER_ID, CUSTOMER_SSN, FIRST_NAME, LAST_NAME, ADDR_LINE,
CITY, STATE, ZIP_CODE, PHONE, EMAIL, CC_NUMBER, CREDIT_LIMIT, GENDER, STATUS,
COMMENTS, USER_NAME ) VALUES ( 
7719, 902654, '899466416', 'Kelvin', 'Norton', '65 Harley Street', 'Harlem Springs'
, 'AK', ' 08989', '7764173590', 'KNorton@ajcsnnbnpuyltwo.ad', '990273053627068', 200000
, 'F', NULL, '71O)5d}XpOucag]j2UB7t2''z `\BrC"Z1s=h;AcHrA*LuKS}j~S>o;U8q-L(','user1'); 


INSERT INTO CUSTOMER ( SALES_REP_ID, CUSTOMER_ID, CUSTOMER_SSN, FIRST_NAME, LAST_NAME, ADDR_LINE,
CITY, STATE, ZIP_CODE, PHONE, EMAIL, CC_NUMBER, CREDIT_LIMIT, GENDER, STATUS,
COMMENTS, USER_NAME ) VALUES ( 
7719, 402676, '421735374', 'Kurt', 'Thiel', '95 Albanese Ct.', 'Sunkist', 'ID', ' 99858'
, '1115042803', 'KThiel@zjmqntgomdqvhdx.ws', '829371860847345', 800000, 'F', NULL
, '|?CL:^<L0kLD}N-Ik3W(vV?x].z~R\RxoM(G@0RHu|<MQ`gz~@a|^ev}QH9','user1'); 


INSERT INTO CUSTOMER ( SALES_REP_ID, CUSTOMER_ID, CUSTOMER_SSN, FIRST_NAME, LAST_NAME, ADDR_LINE,
CITY, STATE, ZIP_CODE, PHONE, EMAIL, CC_NUMBER, CREDIT_LIMIT, GENDER, STATUS,
COMMENTS, USER_NAME ) VALUES ( 
6415, 402724, '936177368', 'Heriberto', 'Teixeira', '6766 Eugene Road', 'Hodge', 'MO'
, ' 73726', '7933962285', 'HTeixeira@bnywenkmnsouqyi.gov', '526478225001794', 900000
, 'M', 'A', '/wEZo4<qc|DZYcQlduC)16RC{X~X[Jk?KNH!UwOs2]"QR=He{ZNN`Ie,PE3K','user1'); 



INSERT INTO CUSTOMER ( SALES_REP_ID, CUSTOMER_ID, CUSTOMER_SSN, FIRST_NAME, LAST_NAME, ADDR_LINE,
CITY, STATE, ZIP_CODE, PHONE, EMAIL, CC_NUMBER, CREDIT_LIMIT, GENDER, STATUS,
COMMENTS, USER_NAME ) VALUES ( 
2336, 102008, '101723163', 'Helga', 'Barr', '12 Gill Street', 'North Fontana', 'AR'
, ' 98629', '4155187511', 'HBarr@ccgsgzmxkeutrjy.gov', '412170214720408', 500000, 'M'
, 'A', '^(2/Ll[0\"awSEZdS{)x3M''=tQL{s[M5!b$_J]a0?+]P!)44Fodr;iSZ_,@','user1'); 


INSERT INTO CUSTOMER ( SALES_REP_ID, CUSTOMER_ID, CUSTOMER_SSN, FIRST_NAME, LAST_NAME, ADDR_LINE,
CITY, STATE, ZIP_CODE, PHONE, EMAIL, CC_NUMBER, CREDIT_LIMIT, GENDER, STATUS,
COMMENTS, USER_NAME ) VALUES ( 
6415, 401989, '663728604', 'Alfonso', 'Branch', '86 Aleman Avenue', 'Hector', 'VT'
, ' 36347', '7667045227', 'ABranch@eyvmxphmrtqvxja.com', '536825384580287', 800000
, 'M', NULL, 'uXslFcxw}z:~E[hy$Z2NSYZV}*6)9*/gnDrmm"EVL4J}wXx8H<otju`sb*u`','user1'); 


INSERT INTO CUSTOMER ( SALES_REP_ID, CUSTOMER_ID, CUSTOMER_SSN, FIRST_NAME, LAST_NAME, ADDR_LINE,
CITY, STATE, ZIP_CODE, PHONE, EMAIL, CC_NUMBER, CREDIT_LIMIT, GENDER, STATUS,
COMMENTS, USER_NAME ) VALUES ( 
4587, 402022, '630624535', 'Bud', 'Chew', '7395 Tomlinson Ct.', 'Danby', 'MN', ' 92237'
, '4155081512', 'BChew@hgfggptewvgosrx.net', '292229267113932', 600000, 'F', 'I', 'n)_l?-m4]/PPo]LK3SoFF}$!p\ROhO]+CkB82VhJi8y=A}JP;*1teoy<?n','user1'); 


INSERT INTO CUSTOMER ( SALES_REP_ID, CUSTOMER_ID, CUSTOMER_SSN, FIRST_NAME, LAST_NAME, ADDR_LINE,
CITY, STATE, ZIP_CODE, PHONE, EMAIL, CC_NUMBER, CREDIT_LIMIT, GENDER, STATUS,
COMMENTS, USER_NAME ) VALUES ( 
7719, 802033, '322367549', 'Clay', 'Capone', '42 Bolick Rd', 'Kelso', 'KS', ' 47390'
, '6383996848', 'CCapone@cqgpygaihignrhl.mil', '768429811996829', 600000, 'M', 'I'
, 'v=qi5t=2v_"{}Y_@D?#KAw\`^5M%Cc[:V%@~?(Jp}DyI+zKU5h<<5{PUR@oY','user1'); 


INSERT INTO CUSTOMER ( SALES_REP_ID, CUSTOMER_ID, CUSTOMER_SSN, FIRST_NAME, LAST_NAME, ADDR_LINE,
CITY, STATE, ZIP_CODE, PHONE, EMAIL, CC_NUMBER, CREDIT_LIMIT, GENDER, STATUS,
COMMENTS, USER_NAME ) VALUES ( 
2336, 100016, '949402668', 'Fransisca', 'Kent', '79 Coates Ave', 'Chambless', 'VT'
, ' 68113', '9181639247', 'FKent@avvojyfatcbqgfa.org', '295141402987424', 100000, 'M'
, 'X', 'SS8d#QLs];xe1me|,aet;[QBk4)5vn;J R)/ F[o%"kx87)>t |X3]v?Lm8','user1'); 


INSERT INTO CUSTOMER ( SALES_REP_ID, CUSTOMER_ID, CUSTOMER_SSN, FIRST_NAME, LAST_NAME, ADDR_LINE,
CITY, STATE, ZIP_CODE, PHONE, EMAIL, CC_NUMBER, CREDIT_LIMIT, GENDER, STATUS,
COMMENTS, USER_NAME ) VALUES ( 
9644, 800043, '968948460', 'Foster', 'Arsenault', '83 Roundtree Avenue', 'Blue Jay'
, 'KS', ' 89861', '5068826104', 'FArsenault@rcdcqcowthfflac.ad', '127671708461896'
, 400000, 'F', 'A', '@x)5G/sCfi^P[,fQW''Y~MtFrxuI9oXA7-`Z/w%wRUzzD0N\@|sE;SjC:nSO7','user1'); 


INSERT INTO CUSTOMER ( SALES_REP_ID, CUSTOMER_ID, CUSTOMER_SSN, FIRST_NAME, LAST_NAME, ADDR_LINE,
CITY, STATE, ZIP_CODE, PHONE, EMAIL, CC_NUMBER, CREDIT_LIMIT, GENDER, STATUS,
COMMENTS, USER_NAME ) VALUES ( 
7719, 200055, '592492609', 'Lorelei', 'Mcpherson', '92879 Jaime Road', 'Earp', 'WV'
, ' 12476', '4949545616', 'LMcpherson@frjhixxqiqmhesw.ws', '562163275872341', 100000
, 'F', 'I', 'h6ZtK:_S1^$.#TD]C$4vjoUCDdQ|5*G`;RG!5ZwB.aN IjyvoW1ZC%[-{-r`','user1'); 


INSERT INTO CUSTOMER ( SALES_REP_ID, CUSTOMER_ID, CUSTOMER_SSN, FIRST_NAME, LAST_NAME, ADDR_LINE,
CITY, STATE, ZIP_CODE, PHONE, EMAIL, CC_NUMBER, CREDIT_LIMIT, GENDER, STATUS,
COMMENTS, USER_NAME ) VALUES ( 
6415, 900106, '937526259', 'Maurita', 'Hawthorne', '66 Mims Ct.', 'Lenwood', 'VA'
, ' 41447', '3045452355', 'MHawthorne@feswiprceqbbbog.gov', '705457979214954', 300000
, 'M', 'X', 'D''4M2L/9/=!Rfbv4ZP;4=cXX0$n7_;bZb-o@/^9X(zJV:)o~VwB9pK:T+$dr','user1'); 


INSERT INTO CUSTOMER ( SALES_REP_ID, CUSTOMER_ID, CUSTOMER_SSN, FIRST_NAME, LAST_NAME, ADDR_LINE,
CITY, STATE, ZIP_CODE, PHONE, EMAIL, CC_NUMBER, CREDIT_LIMIT, GENDER, STATUS,
COMMENTS, USER_NAME ) VALUES ( 
6415, 400666, '925900647', 'Karma', 'Lasher', '77 Brandt St.', 'Hinkley', 'OK', ' 80828'
, '9091277424', 'KLasher@deegckmztqjuvli.ad', '340859560896699', 900000, 'F', NULL
, 'grsrKpsuA1mcLfjWmHWf|1QQf|0n1U4wQ.KTl>M\;]b#_.q_tq<)66EOo$a]','user1'); 




INSERT INTO CUSTOMER ( SALES_REP_ID, CUSTOMER_ID, CUSTOMER_SSN, FIRST_NAME, LAST_NAME, ADDR_LINE,
CITY, STATE, ZIP_CODE, PHONE, EMAIL, CC_NUMBER, CREDIT_LIMIT, GENDER, STATUS,
COMMENTS, USER_NAME ) VALUES ( 
7719, 800691, '490896547', 'Tana', 'Creel', '95389 Julian St.', 'Sunset Hills', 'VA'
, ' 77922', '1199835158', 'TCreel@pdvrjaelqnqopyl.ws', '552234235185816', 900000, 'M'
, 'A', 'LwB^qTf6LWCaf>Ld<ak!=%|B!KS+ah)8H@$ ]''; >"h D)X*{2"{SMMCuiS','user1'); 



INSERT INTO CUSTOMER ( SALES_REP_ID, CUSTOMER_ID, CUSTOMER_SSN, FIRST_NAME, LAST_NAME, ADDR_LINE,
CITY, STATE, ZIP_CODE, PHONE, EMAIL, CC_NUMBER, CREDIT_LIMIT, GENDER, STATUS,
COMMENTS, USER_NAME ) VALUES ( 
7719, 400723, '853199311', 'Morgan', 'Connor', '241 Germany Rd', 'Calada', 'AL', ' 04658'
, '2046547179', 'MConnor@hxbyvsxhbtxruva.mil', '845394297945619', 50000, 'F', NULL
, '67A>U\q/ GM!u2^-zqhHR1atdfXA#XG`bg)H{Wp[\2,!,)#Xh{%{HD{}z`X','user1'); 




INSERT INTO CUSTOMER ( SALES_REP_ID, CUSTOMER_ID, CUSTOMER_SSN, FIRST_NAME, LAST_NAME, ADDR_LINE,
CITY, STATE, ZIP_CODE, PHONE, EMAIL, CC_NUMBER, CREDIT_LIMIT, GENDER, STATUS,
COMMENTS, USER_NAME ) VALUES ( 
2336, 201460, '299179336', 'Lara', 'Baier', '76 Tait Ct.', 'Crest Park', 'SD', ' 71166'
, '4407153873', 'LBaier@ztcwsyyqwsidvei.com', '205843008664805', 300000, 'F', NULL
, 'AK$[1*DmL>UuS`<U/x1("(C=i''EY/d_+"wRjwV\>n1Z^5g8iw7;iUg1+RI5@','user1'); 



INSERT INTO CUSTOMER ( SALES_REP_ID, CUSTOMER_ID, CUSTOMER_SSN, FIRST_NAME, LAST_NAME, ADDR_LINE,
CITY, STATE, ZIP_CODE, PHONE, EMAIL, CC_NUMBER, CREDIT_LIMIT, GENDER, STATUS,
COMMENTS, USER_NAME ) VALUES ( 
6415, 201475, '845667535', 'Jamal', 'Dugan', '386 Morey St.', 'Hutt', 'OK', ' 42034'
, '4276282034', 'JDugan@mzomtynlwjyaugq.com', '952726379150037', 200000, 'F', 'I'
, 'i0$<4pg~cl,CDkZ[EpmH/$J+^`>(|Y}Xno/|X53z~I4M39~tj$?^ c|IpBD2','user1'); 



INSERT INTO CUSTOMER ( SALES_REP_ID, CUSTOMER_ID, CUSTOMER_SSN, FIRST_NAME, LAST_NAME, ADDR_LINE,
CITY, STATE, ZIP_CODE, PHONE, EMAIL, CC_NUMBER, CREDIT_LIMIT, GENDER, STATUS,
COMMENTS, USER_NAME ) VALUES ( 
7719, 101484, '520700979', 'Coleman', 'Sexton', '19 Bugg Ave', 'New Dunn', 'KY', ' 14239'
, '6478694173', 'CSexton@sxqpdwqnahuiqpi.org', '645133964311843', 400000, 'M', 'A'
, 'qP"}[''!!XCXF":Plsj;Lzu63a?m`HaLWN3d^;''_Z[d09DCtwK6^QI#Spp^$','user1'); 



INSERT INTO CUSTOMER ( SALES_REP_ID, CUSTOMER_ID, CUSTOMER_SSN, FIRST_NAME, LAST_NAME, ADDR_LINE,
CITY, STATE, ZIP_CODE, PHONE, EMAIL, CC_NUMBER, CREDIT_LIMIT, GENDER, STATUS,
COMMENTS, USER_NAME ) VALUES ( 
9644, 401512, '949516708', 'Xiomara', 'Galvez', '43955 Rea St.', 'Wrightwood', 'MI'
, ' 60608', '5115412799', 'XGalvez@vkgswsrojdryxwv.org', '913450615253637', 700000
, 'M', 'I', 'Qm)>;z|$F6}+dg37Ik7MuN''YSo''BYs?X$p6:Kw[C4*G]WV?CDl=%`Q%]0au','user1'); 



INSERT INTO CUSTOMER ( SALES_REP_ID, CUSTOMER_ID, CUSTOMER_SSN, FIRST_NAME, LAST_NAME, ADDR_LINE,
CITY, STATE, ZIP_CODE, PHONE, EMAIL, CC_NUMBER, CREDIT_LIMIT, GENDER, STATUS,
COMMENTS, USER_NAME ) VALUES ( 
9644, 101516, '244002356', 'Elia', 'Petersen', '152 Billups Road', 'Crucero', 'KS'
, ' 38521', '4026186912', 'EPetersen@nygpxgaszhidsld.mil', '834195163214255', 900000
, 'F', 'A', 'o<]K''5F0_n=m!BtS^yv4t`_Uq^b!w0;59RKIQX>Ft.Dgbq+@L{r%BUE/</)','user1'); 


INSERT INTO CUSTOMER ( SALES_REP_ID, CUSTOMER_ID, CUSTOMER_SSN, FIRST_NAME, LAST_NAME, ADDR_LINE,
CITY, STATE, ZIP_CODE, PHONE, EMAIL, CC_NUMBER, CREDIT_LIMIT, GENDER, STATUS,
COMMENTS, USER_NAME ) VALUES ( 
9644, 201520, '544202600', 'Norris', 'Cavanaugh', '6623 Leclair Boulevard', 'Bloomington'
, 'SD', ' 19483', '7595639139', 'NCavanaugh@qlpypmhfcvcgpha.org', '442572077686920'
, 1000000, 'M', NULL, '.WLu(p:KsMqLT(;{WSju>[U'';f`DVaUX)%4OfIo\1dXtU8o]uA;Mwd1I>.:_','user1'); 


INSERT INTO CUSTOMER ( SALES_REP_ID, CUSTOMER_ID, CUSTOMER_SSN, FIRST_NAME, LAST_NAME, ADDR_LINE,
CITY, STATE, ZIP_CODE, PHONE, EMAIL, CC_NUMBER, CREDIT_LIMIT, GENDER, STATUS,
COMMENTS, USER_NAME ) VALUES ( 
2336, 401527, '667303484', 'Haley', 'Sommers', '99447 Colston Boulevard', 'Earp', 'IA'
, ' 51495', '1394356137', 'HSommers@jxzyscavsowoduw.edu', '354327045733894', 400000
, 'F', 'A', 'Rp$}S''|;R,Yh8DkssEd2)|qOGf"G4O/9:sZdkU1(DIG/e''Bl+u[G+-/yWEg','user1'); 


INSERT INTO CUSTOMER ( SALES_REP_ID, CUSTOMER_ID, CUSTOMER_SSN, FIRST_NAME, LAST_NAME, ADDR_LINE,
CITY, STATE, ZIP_CODE, PHONE, EMAIL, CC_NUMBER, CREDIT_LIMIT, GENDER, STATUS,
COMMENTS, USER_NAME ) VALUES ( 
2336, 401548, '190524547', 'Stacia', 'Edmondson', '8841 Fazio Rd', 'Patton', 'TX'
, ' 14933', '1353506677', 'SEdmondson@cztykvodgulgcre.ws', '173597499153073', 400000
, 'M', 'A', 'ztFwffxGyZ\VeYcW|C.2dD*LC9LqR9XR#(u]INU@jVdU=g;l[G j*F=>.si:','user1'); 


INSERT INTO CUSTOMER ( SALES_REP_ID, CUSTOMER_ID, CUSTOMER_SSN, FIRST_NAME, LAST_NAME, ADDR_LINE,
CITY, STATE, ZIP_CODE, PHONE, EMAIL, CC_NUMBER, CREDIT_LIMIT, GENDER, STATUS,
COMMENTS, USER_NAME ) VALUES ( 
6415, 401554, '688056137', 'Carie', 'Spooner', '4816 Jose Ct.', 'Hodge', 'GA', ' 87046'
, '8148471788', 'CSpooner@wzzryyiptkhrfah.edu', '520886737683682', 900000, 'F', 'I'
, '4,[+j87%mMJ/ZoV|5LsMO0#=)n-K;P/?ARmMl[)58FGHtlUtk/x{4}={hW','user1'); 


INSERT INTO CUSTOMER ( SALES_REP_ID, CUSTOMER_ID, CUSTOMER_SSN, FIRST_NAME, LAST_NAME, ADDR_LINE,
CITY, STATE, ZIP_CODE, PHONE, EMAIL, CC_NUMBER, CREDIT_LIMIT, GENDER, STATUS,
COMMENTS, USER_NAME ) VALUES ( 
2336, 401563, '229884980', 'Lance', 'Lindeman', '31 Givens Ct.', 'Baldwin Lake', 'NM'
, ' 77300', '2508142434', 'LLindeman@holzwfnlcnrquhg.edu', '666869861904705', 800000
, 'F', 'I', 'iFDso||(\2Ke:twps}Z<E8e-\#++t73!}6CP%(s!Z$p#%q<W|@OS"v{','user1'); 


INSERT INTO CUSTOMER ( SALES_REP_ID, CUSTOMER_ID, CUSTOMER_SSN, FIRST_NAME, LAST_NAME, ADDR_LINE,
CITY, STATE, ZIP_CODE, PHONE, EMAIL, CC_NUMBER, CREDIT_LIMIT, GENDER, STATUS,
COMMENTS, USER_NAME ) VALUES ( 
7719, 401572, '880793869', 'Margit', 'Fulkerson', '52 Edward Road', 'Del Rosa', 'OH'
, ' 70854', '2056759798', 'MFulkerson@lmlfbnhwjaqqwva.edu', '428169180225649', 700000
, 'F', NULL, ')q@p4%Q{^F}/euXaA7<j~yZ2(5ff$u"@6pu=ySWeKn3kgt:H4\;S{R.2(''W8','user1'); 

INSERT INTO CUSTOMER ( SALES_REP_ID, CUSTOMER_ID, CUSTOMER_SSN, FIRST_NAME, LAST_NAME, ADDR_LINE,
CITY, STATE, ZIP_CODE, PHONE, EMAIL, CC_NUMBER, CREDIT_LIMIT, GENDER, STATUS,
COMMENTS, USER_NAME ) VALUES ( 
9644, 901574, '333498438', 'Jan', 'Busse', '94 Needham Street', 'Victorville', 'MS'
, ' 75353', '5847182477', 'JBusse@jwfzwrjymqitgom.mil', '544834302778643', 700000
, 'F', 'I', 'zT=u7sL_I0HlOWgntZ=r": H1R?xNUu(t[bc_K1%b5;-r;kHiOz)r9Deo50','user1'); 


INSERT INTO CUSTOMER ( SALES_REP_ID, CUSTOMER_ID, CUSTOMER_SSN, FIRST_NAME, LAST_NAME, ADDR_LINE,
CITY, STATE, ZIP_CODE, PHONE, EMAIL, CC_NUMBER, CREDIT_LIMIT, GENDER, STATUS,
COMMENTS, USER_NAME ) VALUES ( 
6415, 201595, '925574023', 'Charlene', 'Keeton', '76 Nagy St.', 'Rainbow Wells', 'NC'
, ' 69230', '9194263043', 'CKeeton@kxqrzpvxdtzicta.gov', '850988715496975', 200000
, 'F', 'I', 'bu!c\Qj^.6hwSm#I\fX+>C?9t9xX^]yUWCvGmVtbA w<%V3!V{Ej''i5W/z<;','user1'); 


INSERT INTO CUSTOMER ( SALES_REP_ID, CUSTOMER_ID, CUSTOMER_SSN, FIRST_NAME, LAST_NAME, ADDR_LINE,
CITY, STATE, ZIP_CODE, PHONE, EMAIL, CC_NUMBER, CREDIT_LIMIT, GENDER, STATUS,
COMMENTS, USER_NAME ) VALUES ( 
7719, 301603, '856527280', 'Herb', 'Jones', '99 Araujo Rd', 'Woodlands', 'TN', ' 17925'
, '9816763413', 'HJones@tnykktfzyvrygik.org', '580940612517227', 600000, 'F', 'I'
, '0d5fZ_@BEx-~fQHCyR;L5?DeH0.f>3c~<*I|`8_JO@!>Mn.!=P$D:`"XuCMy','user1'); 



INSERT INTO CUSTOMER ( SALES_REP_ID, CUSTOMER_ID, CUSTOMER_SSN, FIRST_NAME, LAST_NAME, ADDR_LINE,
CITY, STATE, ZIP_CODE, PHONE, EMAIL, CC_NUMBER, CREDIT_LIMIT, GENDER, STATUS,
COMMENTS, USER_NAME ) VALUES ( 
9644, 101612, '684543625', 'Hortensia', 'Maurice', '47 Sauer St.', 'Hector', 'MI'
, ' 82292', '9523522663', 'HMaurice@oylfdhcamwqqhty.ad', '145713976500766', 800000
, 'F', 'I', 's$Aa$W|Hi(mJs<kb.Sge`2,YtfW2NwwU=",Tw}g8v|L1mo(I4j?WVZTikysR','user1'); 


INSERT INTO CUSTOMER ( SALES_REP_ID, CUSTOMER_ID, CUSTOMER_SSN, FIRST_NAME, LAST_NAME, ADDR_LINE,
CITY, STATE, ZIP_CODE, PHONE, EMAIL, CC_NUMBER, CREDIT_LIMIT, GENDER, STATUS,
COMMENTS, USER_NAME ) VALUES ( 
2336, 401614, '872068319', 'Andre', 'Troupe', '23 Wallace Street', 'South Adelanto'
, 'TN', ' 57599', '2589468822', 'ATroupe@ondlifkishqfxfu.org', '800242550387346', 800000
, 'F', NULL, 'Ot}(+z~l;SzP5wO#4#*Qwi%SL?)|!''Hre@#xL})D#Oe!7''ZoWt=q^W$A>1(','user1'); 


INSERT INTO CUSTOMER ( SALES_REP_ID, CUSTOMER_ID, CUSTOMER_SSN, FIRST_NAME, LAST_NAME, ADDR_LINE,
CITY, STATE, ZIP_CODE, PHONE, EMAIL, CC_NUMBER, CREDIT_LIMIT, GENDER, STATUS,
COMMENTS, USER_NAME ) VALUES ( 
9644, 401620, '198645753', 'Burl', 'Mickey', '68 Stamm Rd', 'Chubbuck', 'IL', ' 92885'
, '3475414343', 'BMickey@skngbchfjobsneh.ws', '243272235427158', 200000, 'F', 'I'
, 'n5@7+r''X.!7>RbL1y9q1xt\W-#T<x^}/nP{:T*a:f)@${tXMsio`Y!w{8tT%','user1'); 


INSERT INTO CUSTOMER ( SALES_REP_ID, CUSTOMER_ID, CUSTOMER_SSN, FIRST_NAME, LAST_NAME, ADDR_LINE,
CITY, STATE, ZIP_CODE, PHONE, EMAIL, CC_NUMBER, CREDIT_LIMIT, GENDER, STATUS,
COMMENTS, USER_NAME ) VALUES ( 
7719, 201630, '831708976', 'Aaron', 'Roche', '244 Halpin Ct.', 'East Highlands', 'NY'
, ' 98299', '8936121553', 'ARoche@gewjwgnyceevjsw.net', '224041045131312', 80000, 'M'
, 'I', 'ex0~Xcy`-B_m968kJSwvt*.^$w:->=/#r<h[h*x,H52P56rcP*q}4VipJ,v','user1'); 



INSERT INTO CUSTOMER ( SALES_REP_ID, CUSTOMER_ID, CUSTOMER_SSN, FIRST_NAME, LAST_NAME, ADDR_LINE,
CITY, STATE, ZIP_CODE, PHONE, EMAIL, CC_NUMBER, CREDIT_LIMIT, GENDER, STATUS,
COMMENTS, USER_NAME ) VALUES ( 
2336, 401659, '363739107', 'Mitch', 'Lenoir', '516 Zachary Street', 'Hidden River'
, 'IL', ' 62562', '5457672010', 'MLenoir@bennvrdscexvgxo.org', '248450328080488', 100000
, 'M', 'I', '^)38vvE!0e[WiDpl68zs9ah%x{]H6E/W`%`` \0,*03`y+Zrc/I;[7AW%pa.','user1'); 


INSERT INTO CUSTOMER ( SALES_REP_ID, CUSTOMER_ID, CUSTOMER_SSN, FIRST_NAME, LAST_NAME, ADDR_LINE,
CITY, STATE, ZIP_CODE, PHONE, EMAIL, CC_NUMBER, CREDIT_LIMIT, GENDER, STATUS,
COMMENTS, USER_NAME ) VALUES ( 
9644, 401680, '162579272', 'Tamela', 'Dawes', '4415 Hidalgo Rd', 'Pisgah', 'ME', ' 22228'
, '8993362897', 'TDawes@uaokescmscrqyoc.org', '835267658251121', 70000, 'M', 'X', 'F[uF''+"e71;\''ey''}z9\4hi:''Au1~MxD:FtMn_+yPUWGHK*C$X)(tL`b8=9','user1'); 


INSERT INTO CUSTOMER ( SALES_REP_ID, CUSTOMER_ID, CUSTOMER_SSN, FIRST_NAME, LAST_NAME, ADDR_LINE,
CITY, STATE, ZIP_CODE, PHONE, EMAIL, CC_NUMBER, CREDIT_LIMIT, GENDER, STATUS,
COMMENTS, USER_NAME ) VALUES ( 
4587, 401707, '213944902', 'Lona', 'Elam', '85 Marks Blvd.', 'Mountain Pass', 'MT'
, ' 59239', '8211191451', 'LElam@izlfpmewcwbugzp.com', '948781201965484', 30000, 'F'
, 'I', '6 %}sqp+_vRWo+!z{R"Fh0lC="K3WNlw@?R ok''-Afy1M@i29Dxj0$yT"P1K','user1'); 


INSERT INTO CUSTOMER ( SALES_REP_ID, CUSTOMER_ID, CUSTOMER_SSN, FIRST_NAME, LAST_NAME, ADDR_LINE,
CITY, STATE, ZIP_CODE, PHONE, EMAIL, CC_NUMBER, CREDIT_LIMIT, GENDER, STATUS,
COMMENTS, USER_NAME ) VALUES ( 
6415, 101712, '712242588', 'Lacie', 'Angle', '349 Minnick St.', 'Johannesburg', 'ND'
, ' 78183', '8079019832', 'LAngle@rxtcwuvyddnjoqy.mil', '667919942312214', 200000
, 'M', 'I', '@]$ 7%X_w((=:|W6PVUWGD~gRgLBpdL0J+.XlSpEHqOSBP"`[P,Iu14sFPC(','user1'); 



INSERT INTO CUSTOMER ( SALES_REP_ID, CUSTOMER_ID, CUSTOMER_SSN, FIRST_NAME, LAST_NAME, ADDR_LINE,
CITY, STATE, ZIP_CODE, PHONE, EMAIL, CC_NUMBER, CREDIT_LIMIT, GENDER, STATUS,
COMMENTS, USER_NAME ) VALUES ( 
2336, 901718, '383412458', 'Lou', 'Peres', '75 Trask Rd', 'The Village', 'OR', ' 54831'
, '4795708295', 'LPeres@btxgabzzliykhhi.gov', '178136719647511', 200000, 'M', 'A'
, 'i%oB36v''PI\yI+iu"I/8Ylfu`$p\QaWXah\)G[rz^[%W84l3]#_*1o`fs4p','user1'); 




INSERT INTO CUSTOMER ( SALES_REP_ID, CUSTOMER_ID, CUSTOMER_SSN, FIRST_NAME, LAST_NAME, ADDR_LINE,
CITY, STATE, ZIP_CODE, PHONE, EMAIL, CC_NUMBER, CREDIT_LIMIT, GENDER, STATUS,
COMMENTS, USER_NAME ) VALUES ( 
9644, 401740, '733993182', 'Karyn', 'Brook', '31 Tuggle Blvd.', 'Alta Loma', 'CA'
, ' 02570', '3053218884', 'KBrook@pybhaopdgrmdcdr.net', '607635208290898', 300000
, 'F', 'I', '$_/RmNu@iY!EJT{MkQmLDc..9{PEf4;Q7kPsvfGAB,`3r@OfB"TQKkF>\`wU','user1'); 


-----
INSERT INTO CUSTOMER ( SALES_REP_ID, CUSTOMER_ID, CUSTOMER_SSN, FIRST_NAME, LAST_NAME, ADDR_LINE,
CITY, STATE, ZIP_CODE, PHONE, EMAIL, CC_NUMBER, CREDIT_LIMIT, GENDER, STATUS,
COMMENTS, USER_NAME ) VALUES ( 
9644, 801751, '175457797', 'Marcelene', 'Eliason', '53 Goodall Blvd.', 'Kramer Hills'
, 'OK', ' 37042', '5959586149', 'MEliason@hzshwywlzylphst.com', '592959703962671'
, 500000, 'M', 'A', 'zc{5^3w<J7Hi}k]O<acJ}kN382=l}9[Y^RDCSm={M3:H)Y*#QM.rOE3v:"]','user1'); 



INSERT INTO CUSTOMER ( SALES_REP_ID, CUSTOMER_ID, CUSTOMER_SSN, FIRST_NAME, LAST_NAME, ADDR_LINE,
CITY, STATE, ZIP_CODE, PHONE, EMAIL, CC_NUMBER, CREDIT_LIMIT, GENDER, STATUS,
COMMENTS, USER_NAME ) VALUES ( 
6415, 301757, '547390410', 'Venetta', 'Pogue', '25 Li Blvd.', 'Bryman', 'MT', ' 76909'
, '3744349991', 'VPogue@yffxcchhkllfvse.mil', '269308393458684', 600000, 'M', 'I'
, 'MTv*im-RZ{Kit~s(EY6i_K_N^bmUlG!!C48!HzdUVlGL"zu~=|Veb,-8d`W','user1'); 



INSERT INTO CUSTOMER ( SALES_REP_ID, CUSTOMER_ID, CUSTOMER_SSN, FIRST_NAME, LAST_NAME, ADDR_LINE,
CITY, STATE, ZIP_CODE, PHONE, EMAIL, CC_NUMBER, CREDIT_LIMIT, GENDER, STATUS,
COMMENTS, USER_NAME ) VALUES ( 
6415, 401767, '536340725', 'Roosevelt', 'Lacey', '26 Mcqueen Road', 'Crucero', 'NH'
, ' 88777', '3861554067', 'RLacey@qelzcoujycrcqpr.mil', '993803343571244', 700000
, 'F', 'A', ':r/!?Oc9tP#?C7nBzrhJ^ztIV{Zu3=qCcNv18VJ6_gTbh[[Kasl|^OTpnjwS','user1'); 



INSERT INTO CUSTOMER ( SALES_REP_ID, CUSTOMER_ID, CUSTOMER_SSN, FIRST_NAME, LAST_NAME, ADDR_LINE,
CITY, STATE, ZIP_CODE, PHONE, EMAIL, CC_NUMBER, CREDIT_LIMIT, GENDER, STATUS,
COMMENTS, USER_NAME ) VALUES ( 
4587, 201775, '716870791', 'Mellisa', 'Otis', '3687 Dorn Street', 'West Colton', 'HI'
, ' 56182', '8747373924', 'MOtis@cwpjgnxxhwztsyz.mil', '298576419900549', 400000, 'F'
, 'X', 'h7c{BI<>EN Lf|W#C9*np>2LZ-c*zzzK>$S7_C\XJFcgGacV%QKm1>fCDG=','user1'); 



INSERT INTO CUSTOMER ( SALES_REP_ID, CUSTOMER_ID, CUSTOMER_SSN, FIRST_NAME, LAST_NAME, ADDR_LINE,
CITY, STATE, ZIP_CODE, PHONE, EMAIL, CC_NUMBER, CREDIT_LIMIT, GENDER, STATUS,
COMMENTS, USER_NAME ) VALUES ( 
9644, 401788, '323504670', 'Mardell', 'Navarro', '89 Pagan Street', 'Boys Republic'
, 'TN', ' 46780', '6135448809', 'MNavarro@yglxdooznaaciiu.com', '261478423271784'
, 100000, 'M', 'I', '^jgzBcNQ[hX{''K}c?lnXku}Ru$u l47y|*S,kY p4]e7/-n|tB((O5Uo]{0','user1'); 




INSERT INTO CUSTOMER ( SALES_REP_ID, CUSTOMER_ID, CUSTOMER_SSN, FIRST_NAME, LAST_NAME, ADDR_LINE,
CITY, STATE, ZIP_CODE, PHONE, EMAIL, CC_NUMBER, CREDIT_LIMIT, GENDER, STATUS,
COMMENTS, USER_NAME ) VALUES ( 
4587, 401794, '850898144', 'Kittie', 'Peach', '11 Lockhart Ct.', 'Thomas Place', 'NH'
, ' 47153', '5968047417', 'KPeach@paxuogrkugcviwy.gov', '648367313422866', 90000, 'M'
, 'I', 'xeKXs-(s~TTJU^#+Bsx9(tdLOlhP<e@LJ(jmy=.bCHJ"+.[WIhw$%]3{F\','user1'); 




INSERT INTO CUSTOMER ( SALES_REP_ID, CUSTOMER_ID, CUSTOMER_SSN, FIRST_NAME, LAST_NAME, ADDR_LINE,
CITY, STATE, ZIP_CODE, PHONE, EMAIL, CC_NUMBER, CREDIT_LIMIT, GENDER, STATUS,
COMMENTS, USER_NAME ) VALUES ( 
6415, 401800, '971143134', 'Carl', 'Pitman', '474 Westover Blvd.', 'North Star Ranch'
, 'TN', ' 21583', '1932436332', 'CPitman@dlqvnnbonnhlvao.net', '881459561394083', 700000
, 'F', NULL, ']DYFK \6CX@5nf<D;3$@%xV`TACSHqeI2SdYb!^n[LCJ?f-38*~8t}=2f|zs','user1'); 




INSERT INTO CUSTOMER ( SALES_REP_ID, CUSTOMER_ID, CUSTOMER_SSN, FIRST_NAME, LAST_NAME, ADDR_LINE,
CITY, STATE, ZIP_CODE, PHONE, EMAIL, CC_NUMBER, CREDIT_LIMIT, GENDER, STATUS,
COMMENTS, USER_NAME ) VALUES ( 
7719, 301813, '997807515', 'Joyce', 'Wolford', '27 Lin St.', 'Cadiz', 'ME', ' 76975'
, '4247556157', 'JWolford@vqainkzqzjhyahf.ad', '668076820517310', 400000, 'F', 'A'
, 'Q*M-ldC"ns,`Vl<JD>@YeMIWTyGPD2xLwZ;@q=k$[>0hrR)?|rgemDP%t^2','user1'); 


commit;
 
drop view my_new_view;

CREATE VIEW MY_NEW_VIEW AS
SELECT SALES_REP_ID, CUSTOMER_ID, CUSTOMER_SSN, FIRST_NAME, LAST_NAME, ADDR_LINE, CITY, STATE, ZIP_CODE, PHONE, EMAIL, CC_NUMBER, 
CREDIT_LIMIT, GENDER, STATUS, COMMENTS, USER_NAME FROM CUSTOMER 
WHERE USER_NAME='user';

Drop User DBSEC_CLERK Cascade;

Create User DBSEC_CLERK Identified by tec5363clerk
Default TableSpace USERS 
Temporary TableSpace TEMP
Profile Default;

Grant Connect To DBSEC_CLERK;

GRANT SELECT, UPDATE, INSERT ON MY_NEW_VIEW TO DBSEC_CLERK;


CONNECT DBSEC_CLERK/tec5363clerk;

INSERT INTO DBSEC.My_NEW_VIEW( SALES_REP_ID, , CUSTOMER_SSN, FIRST_NAME, LAST_NAME, ADDR_LINE,
CITY, STATE, ZIP_CODE, PHONE, EMAIL, CC_NUMBER, CREDIT_LIMIT, GENDER, STATUS,
COMMENTS, USER_NAME) 
VALUES ( 1111, 0000, '000000000', 'ashish', 'ashish', ' bukanand avenue', 'charleston', 'IL', '88888', '66545454545', 'ashish.t@gmail.com', '54454545454545', 55555, 'M', 'B', 'ashish info', 'user'); 

COMMIT;

SELECT SALES_REP_ID, CUSTOMER_ID, FIRST_NAME, GENDER  FROM DBSEC.MY_NEW_VIEW;


