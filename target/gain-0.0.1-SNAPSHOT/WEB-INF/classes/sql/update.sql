UPDATE 
            member 
      
    SET 
        MEM_NAME = '홍길동',mem_indate = TO_DATE('201010','yyyy-mm')  
      WHERE  
      MEM_NO = 'MEM3'
    ;
COMMIT;    
 MERGE INTO member m
      USING (     
       SELECT 
            m.MEM_NAME as MEM_NAME,
            m.mem_grade as mem_grade,
            m.mem_depart as mem_depart,
            m.mem_comp as mem_comp,
            m.mem_indate as mem_indate,
                        
            p.pri_serial as pri_serial,
            p.pri_marriage as pri_marriage,
            p.pri_tel as pri_tel,
            p.pri_phone as pri_phone,
            p.pri_email as pri_email,
            p.pri_addr as pri_addr,
            p.pri_gender as pri_gender,
            
            mil.mil_yn as mil_yn,
            mil.mil_startday as mil_startday,
            mil.mil_endday as mil_endday,
            mil.mil_category as mil_category
                      
       FROM member m,
            privacy p,
            military mil
                    
       WHERE 
            m.MEM_NO = 'MEM24'
            and m.MEM_NO = p.MEM_NO
            and m.MEM_NO = mil.MEM_NO            
        )
      
      ON ( m.MEM_NO = 'MEM24')
	  WHEN MATCHED THEN 
		UPDATE SET
        MEM_NAME = '최수지',
        mem_grade = ''       
;