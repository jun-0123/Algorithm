select flavor
  from (SELECT A.FLAVOR flavor
          from FIRST_HALF A join JULY B
            on A.FLAVOR= B.FLAVOR
      group by A.FlAVOR
        order by sum(a.TOTAL_ORDER) +
               sum(b.TOTAL_ORDER) desc) 
where rownum <= 3
     