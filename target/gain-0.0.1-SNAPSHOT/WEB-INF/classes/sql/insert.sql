INSERT
    INTO 
        member
                    (MEM_NO,
                     MEM_NAME,
                     MEM_GRADE,
                     MEM_DEPART,
                     MEM_COMP,
                     MEM_INDATE                                        
                    )
    VALUES
        (
        'MEM'||SEQ_MEM_NO.nextval,
        'ȫ�浿',
        '���',
        '���ߺ�',
        '���Ǿ�',
        TO_DATE('201903','yyyy-mm')       
        )        
;

INSERT all
    INTO 
            privacy(
                     MEM_NO,
                     PRI_SERIAL,
                     PRI_MARRIAGE,
                     PRI_TEL,
                     PRI_PHONE,
                     PRI_EMAIL,
                     PRI_ADDR,
                     PRI_GENDER
                    )
    VALUES(
            (select * from 
                            (SELECT 
                                     MEM_NO
                                FROM 
                                    member 
                                WHERE 
                                    MEM_name = 'ȫ�浿'
                                ORDER by MEM_NO DESC
                     		)
                where rownum = 1
               ),
            '9302172481212',
            'N',
            '021111111111',
            '01045671622',
            'a@mafsd.com',
            '����� ��õ��',
            '��'            
            )        
SELECT * FROM DUAL    
;
INSERT
    INTO
        career(
                CAR_NO,
                MEM_NO,     
                car_startday,
                car_endday, 
                car_job,    
                car_pos,    
                car_name   
              )
        VALUES(
                'CAR'||SEQ_CAR_NO.nextval,
                (select * from (
                                SELECT  MEM_NO
                                    FROM  member  
                                    WHERE  MEM_name = 'ȫ�浿'
                                            ORDER by MEM_NO DESC
                                )
                    where rownum = 1
                   ),
                '20170707',
                '20180707',
                '����',
                '���',
                'SJ�ý���'
                )               
;

INSERT
    INTO
        project(
                pj_no,
                MEM_NO,     
                pj_startday,
                pj_endday, 
                pj_custom, 
                pj_comp,   
                pj_dev_ind,
                pj_dev_app,
                pj_part,   
                pj_device, 
                pj_os,     
                pj_lang,   
                pj_db,     
                pj_tool,   
                pj_comm,   
                pj_etc,    
                pj_name      
              )
        VALUES(
                'PJ'||SEQ_PJ_NO.nextval,
                (select * from (
                                SELECT  MEM_NO
                                    FROM  member  
                                    WHERE  MEM_name = 'ȫ�浿'
                                            ORDER by MEM_NO DESC
                                )
                    where rownum = 1
                   ),
                '20170707',
                '20180707',
                'īī����ũ',
                'SJ�ý���',
                '����',
                '',
                '����',
                'hp9000',
                'NT',
                'JAVA V/B',
                'ORACLE',
                'Servlet',
                '',
                '',
                '��������'
                )
;

INSERT
        INTO
            certification(
                    CER_NO,
                    MEM_NO,     
                    CER_NAME,
                    cer_day
                  )
            VALUES(
                    'CER'||SEQ_CER_NO.nextval,
                    (select * from (
                                    SELECT  MEM_NO
                                        FROM  member  
                                        WHERE  MEM_name = 'ȫ�浿'
                                        ORDER by MEM_NO DESC
                                    )
                        where rownum = 1
                       ),
                    '����ó��������',
                    '20180707'          
                    )
                    
;
COMMIT;
INSERT
    INTO
        skill(
                SKI_NO,
                MEM_NO,     
                SKI_NAME,
                SKI_GRADE
              )
        VALUES(
                'SKI'||SEQ_SKI_NO.nextval,
                (select * from (
                                SELECT  MEM_NO
                                    FROM  member  
                                    WHERE  MEM_name = 'ȫ�浿'
                                    ORDER by MEM_NO DESC
                                )
                    where rownum = 1
                   ),
                'JAVA',
                '��'          
                )
;
INSERT
INTO 
            military(
                     MIL_NO,
                     MEM_NO,
                     MIL_YN,
                     MIL_STARTDAY,
                     MIL_ENDDAY,
                     MIL_CATEGORY
                    )
    VALUES(
            'MIL'||SEQ_MIL_NO.nextval,
            (select * from (
                            SELECT  MEM_NO
                                FROM  member  
                                WHERE  MEM_name = 'ȫ�浿'
                                        ORDER by MEM_NO DESC
                     		)
                where rownum = 1
               ),
            '������',
            '20190303',
            '20190303',
            '����'
            )
            ;
INSERT
INTO
    school(
            SCH_NO,
            MEM_NO,     
            SCH_GRADE,  
            SCH_NAME,   
            SCH_MAJOR,  
            SCH_STARTDAY,
            SCH_ENDDAY, 
            SCH_STATUS 
          )
    VALUES(
            'SCH'||SEQ_SCH_NO.nextval,
            (select * from (
                            SELECT  MEM_NO
                                FROM  member  
                                WHERE  MEM_name = 'ȫ�浿'
                                        ORDER by MEM_NO DESC
                     		)
                where rownum = 1
               ),
            '���б�',
            '�ѱ���',
            '�濵�а�',
            '20110303',
            '20160303',
            '�л�'
            )
;

INSERT
    INTO
        education(
                EDU_NO,
                MEM_NO,     
                EDU_NAME,    
                EDU_STARTDAY,
                EDU_ENDDAY,  
                EDU_SCHOOL   
              )
        VALUES(
                'EDU'||SEQ_EDU_NO.nextval,
                (select * from (
                                SELECT  MEM_NO
                                    FROM  member  
                                    WHERE  MEM_name = 'ȫ�浿'
                                            ORDER by MEM_NO DESC
                                )
                    where rownum = 1
                   ),
                'JAVA ����',
                '20160101',
                '20160601',
                '�Ѱ����'            
                )
;

Commit;