-- 파일업로드를 수행하기 위해서 파일정보를 저장할 칼럼 추가
ALTER TABLE tbl_product ADD P_FILE nVARCHAR2(255);

SELECT * FROM tbl_product ;

CREATE TABLE tbl_files (
	file_seq NUMBER PRIMARY KEY,
	file_p_code VARCHAR2(5),
	file_origin_name nVARCHAR2(255),
	file_upload_name  nVARCHAR2(255)    
);

CREATE SEQUENCE seq_files 
START WITH 1 INCREMENT BY 1;
DELETE FROm tbl_files;

SELECT FILE_SEQ,FILE_P_CODE,
        FILE_ORIGIN_NAME,FILE_UPLOAD_NAME 
FROM tbl_files;

SELECT * FROM tbl_files ;
INSERT INTO tbl_files;
SELECT 16,'P0001','2019.jpg','1020120320-2019.jpg' 
FROM DUAL
UNION ALL
SELECT 17,'P0001','2019.jpg','1020120320-2019.jpg' 
FROM DUAL
UNION ALL
SELECT 18,'P0001','2019.jpg','1020120320-2019.jpg' 
FROM DUAL
UNION ALL
SELECT 19,'P0001','2019.jpg','1020120320-2019.jpg' 
FROM DUAL
UNION ALL
SELECT 16,'P0001','2019.jpg','1020120320-2019.jpg' 
FROM DUAL
UNION ALL
SELECT 17,'P0001','2019.jpg','1020120320-2019.jpg' 
FROM DUAL
UNION ALL
SELECT 18,'P0001','2019.jpg','1020120320-2019.jpg' 
FROM DUAL
UNION ALL
SELECT 19,'P0001','2019.jpg','1020120320-2019.jpg' 
FROM DUAL;

SELECT SEQ_FILES.NEXTVAL, SUB.* FROM 
    ( SELECT ?, ?, ? FROM DUAL 
            UNION ALL 
        SELECT ?, ?, ? FROM DUAL 
            UNION ALL 
        SELECT ?, ?, ? FROM DUAL 
            UNION ALL 
        SELECT ?, ?, ? FROM DUAL 
            UNION ALL 
        SELECT ?, ?, ? FROM DUAL 
            UNION ALL 
        SELECT ?, ?, ? FROM DUAL 
    ) SUB ;
    
    
SELECT * 
FROM tbl_product, tbl_files
WHERE p_code = file_p_code ;


DELETE FROM TBL_FILES;
COMMIT;

select *
FROM tbl_files 
ORDER BY file_p_code ;



