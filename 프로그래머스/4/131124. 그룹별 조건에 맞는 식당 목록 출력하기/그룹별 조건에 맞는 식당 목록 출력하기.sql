 select b.MEMBER_NAME,
        a.REVIEW_TEXT,
        to_char(a.REVIEW_DATE,'YYYY-MM-DD') REVIEW_DATE
 from REST_REVIEW A 
 join MEMBER_PROFILE B 
 on A.MEMBER_ID=b.MEMBER_ID
 where a.member_id in (
     select member_id
     from rest_review 
     group by MEMBER_ID
     having count(*)= (select max(cnt)
                       from(select member_id,
                                   count(*) as cnt
                            from rest_review 
                            group by MEMBER_ID) ha
                        )
                       )
order by a.REVIEW_DATE, a.REVIEW_TEXT                

                                         
