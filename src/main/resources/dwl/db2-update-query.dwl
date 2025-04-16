%dw 2.0
output application/java
---
"UPDATE " ++ p('db.updateTable') ++ " SET DEPT = '" ++ payload.department ++ "', " ++
"STREET = '" ++ payload.street ++ "', " ++
"CITY = '" ++ payload.city ++ "', " ++
"ZIP = '" ++ payload.zipCode ++ "', " ++
"COUNTY_CODE = '" ++ payload.countyCode ++ "' " ++
"WHERE TRANS_KEY = '" ++ vars.dbResult.TRANS_KEY[0] default '' ++ "'"
