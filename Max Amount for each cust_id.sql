
#   Problem Statement:-
#   Transatcion_tbl Table has four columns CustID, TranID, TranAmt, and  TranDate. User has to display all these fields along with maximum TranAmt for each CustID and ratio of TranAmt and maximum TranAmt for each transaction.

select A.CustID,TranID,TranDate,TranAmt,MaxAmount,(MaxAmount/TranAmt) as Ratio from Transaction_Tbl A
INNER JOIN
(select CustID,max(TranAmt) as MaxAmount from Transaction_Tbl 
group by CustID ) B
ON A.CustID=B.CustID 