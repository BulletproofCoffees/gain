COMMIT;



SELECT * FROM member;
SELECT * FROM privacy;
SELECT * FROM project;


    SELECT 
            * 
       FROM member m,
            privacy p,
            military mil,
            school sc,
            education ed,
            career ca,
            certification car,
            skill sk,
            project pj
       WHERE 
            m.mem_name = 'ȫ�浿'  
            and m.MEM_NO = p.MEM_NO
            and m.MEM_NO = mil.MEM_NO
            and m.MEM_NO = sc.MEM_NO
            and m.MEM_NO = ed.MEM_NO
            and m.MEM_NO = ca.MEM_NO
            and m.MEM_NO = car.MEM_NO
            and m.MEM_NO = sk.MEM_NO
            and m.MEM_NO = pj.MEM_NO
    ;

-- �ڰ���
   SELECT 
        m.mem_no,
        m.mem_name,
        car.cer_name,
        car.cer_day
       FROM member m,
            certification car
       WHERE 
            m.mem_name = 'ȫ�浿'             
            and m.MEM_NO = car.MEM_NO          
    ;

-- �з�
   SELECT 
       *
       FROM member m,
            school A
       WHERE 
            m.mem_name = 'ȫ�浿'             
            and m.MEM_NO = A.MEM_NO          
    ;

-- ���
   SELECT 
       *
       FROM member m,
            career A
       WHERE 
            m.mem_name = 'ȫ�浿'             
            and m.MEM_NO = A.MEM_NO          
    ;
    
--����
   SELECT 
       *
       FROM member m,
            Education A
       WHERE 
            m.mem_name = 'ȫ�浿'             
            and m.MEM_NO = A.MEM_NO          
    ;
    
-- ���
   SELECT 
       *
       FROM member m,
            Skill A
       WHERE 
            m.mem_name = 'ȫ�浿'             
            and m.MEM_NO = A.MEM_NO          
    ;
    
-- ������Ʈ
    SELECT 
       *
       FROM member m,
            project A
       WHERE 
            m.mem_name = 'ȫ�浿'             
            and m.MEM_NO = A.MEM_NO          
    ;
