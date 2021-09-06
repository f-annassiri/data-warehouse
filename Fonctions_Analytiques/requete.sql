SELECT [dname]
      ,[job]
	  ,COUNT([empno]) 'nombre employés'
      ,AVG([sal]) 'salaire moyen'
  FROM [tp2-fa].[dbo].[emp] e, [tp2-fa].[dbo].[dept] d
  WHERE e.deptno = d.deptno
  GROUP BY [dname], [job]
UNION ALL
  SELECT [dname]
      ,NULL
	  ,COUNT([empno]) 'nombre employés'
      ,AVG([sal]) 'salaire moyen'
  FROM [tp2-fa].[dbo].[emp] e, [tp2-fa].[dbo].[dept] d
  WHERE e.deptno = d.deptno
  GROUP BY [dname];

 SELECT [dname]
      ,[job]
	  ,COUNT([empno]) 'nombre employés'
      ,AVG([sal]) 'salaire moyen'
  FROM [tp2-fa].[dbo].[emp] e, [tp2-fa].[dbo].[dept] d
  WHERE e.deptno = d.deptno
  GROUP BY
    GROUPING SETS (
        ([dname], [job]),
        ([dname])
	);

SELECT [dname]
      ,[job]
	  ,COUNT([empno]) 'nombre employés'
      ,AVG([sal]) 'salaire moyen'
  FROM [tp2-fa].[dbo].[emp] e, [tp2-fa].[dbo].[dept] d
  WHERE e.deptno = d.deptno
  GROUP BY ROLLUP([dname], [job]);


SELECT [dname]
      ,[job]
	  ,COUNT([empno]) 'nombre employés'
      ,AVG([sal]) 'salaire moyen'
  FROM [tp2-fa].[dbo].[emp] e, [tp2-fa].[dbo].[dept] d
  WHERE e.deptno = d.deptno
  GROUP BY [dname], ROLLUP ([job]);


SELECT GROUPING([dname])
      ,GROUPING([job])
	  ,[dname]
	  ,[job]
	  ,COUNT([empno]) 'nombre employés'
      ,AVG([sal]) 'salaire moyen'
  FROM [tp2-fa].[dbo].[emp] e, [tp2-fa].[dbo].[dept] d
  WHERE e.deptno = d.deptno
  GROUP BY [dname], ROLLUP ([job]);

SELECT CASE   
		   WHEN GROUPING([dname]) = 0 THEN [dname]
		   ELSE 'NONE'
		END 'dname'
      ,CASE   
		   WHEN GROUPING([job]) = 0 THEN [job]
		   ELSE 'NONE'  
		END 'job'
	  ,COUNT([empno]) 'nombre employés'
      ,AVG([sal]) 'salaire moyen'
  FROM [tp2-fa].[dbo].[emp] e, [tp2-fa].[dbo].[dept] d
  WHERE e.deptno = d.deptno
  GROUP BY [dname], ROLLUP ([job]);

SELECT [dname]
      ,CASE   
		   WHEN GROUPING([job]) = 0 THEN [job]
		   ELSE 'NONE'  
		END 'job'
	  ,COUNT([empno]) 'nombre employés'
      ,AVG([sal]) 'salaire moyen'
  FROM [tp2-fa].[dbo].[emp] e, [tp2-fa].[dbo].[dept] d
  WHERE e.deptno = d.deptno
  GROUP BY [dname], ROLLUP ([job]);

SELECT [dname]
      ,CASE   
		   WHEN GROUPING([job]) = 0 THEN [job]
		   ELSE 'NONE'  
		END 'job'
      ,[hiredate]
	  ,COUNT([empno]) 'nombre employés'
      ,AVG([sal]) 'salaire moyen'
  FROM [tp2-fa].[dbo].[emp] e, [tp2-fa].[dbo].[dept] d
  WHERE e.deptno = d.deptno
  GROUP BY [dname], ROLLUP ([job], [hiredate]);

SELECT [dname]
      ,[job]
	  ,COUNT([empno]) 'nombre employés'
      ,AVG([sal]) 'salaire moyen'
  FROM [tp2-fa].[dbo].[emp] e, [tp2-fa].[dbo].[dept] d
  WHERE e.deptno = d.deptno
  GROUP BY [dname], [job]
UNION ALL
  SELECT [dname]
      ,'NONE'
	  ,COUNT([empno]) 'nombre employés'
      ,AVG([sal]) 'salaire moyen'
  FROM [tp2-fa].[dbo].[emp] e, [tp2-fa].[dbo].[dept] d
  WHERE e.deptno = d.deptno
  GROUP BY [dname]
UNION ALL
  SELECT 'NONE'
      ,[job]
	  ,COUNT([empno]) 'nombre employés'
      ,AVG([sal]) 'salaire moyen'
  FROM [tp2-fa].[dbo].[emp] e, [tp2-fa].[dbo].[dept] d
  WHERE e.deptno = d.deptno
  GROUP BY [job]
UNION ALL
  SELECT 'NONE'
      ,'NONE'
	  ,COUNT([empno]) 'nombre employés'
      ,AVG([sal]) 'salaire moyen'
  FROM [tp2-fa].[dbo].[emp] e, [tp2-fa].[dbo].[dept] d
  WHERE e.deptno = d.deptno;



SELECT CASE   
		   WHEN GROUPING([dname]) = 0 THEN [dname]
		   ELSE 'NONE'
		END 'dname'
      ,CASE   
		   WHEN GROUPING([job]) = 0 THEN [job]
		   ELSE 'NONE'  
		END 'job'
	  ,COUNT([empno]) 'nombre employés'
      ,AVG([sal]) 'salaire moyen'
  FROM [tp2-fa].[dbo].[emp] e, [tp2-fa].[dbo].[dept] d
  WHERE e.deptno = d.deptno
  GROUP BY CUBE ([dname], [job]);


SELECT CASE   
		   WHEN GROUPING([dname]) = 0 THEN [dname]
		   ELSE 'NONE'
		END 'dname'
      ,CASE   
		   WHEN GROUPING([job]) = 0 THEN [job]
		   ELSE 'NONE'  
		END 'job'
	  ,[hiredate]
	  ,COUNT([empno]) 'nombre employés'
      ,AVG([sal]) 'salaire moyen'
  FROM [tp2-fa].[dbo].[emp] e, [tp2-fa].[dbo].[dept] d
  WHERE e.deptno = d.deptno
  GROUP BY CUBE ([dname], [job], [hiredate]);