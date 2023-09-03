delete from [DBO_fromN_168]  
 WHERE [ddplant] IN (SELECT dupid FROM (SELECT MAX([ddplant]) AS dupid,COUNT(*) AS dupcnt  
 FROM [DBO_fromN_168]  
 GROUP BY [ddplant] HAVING COUNT(*) > 1) AS duptable) 