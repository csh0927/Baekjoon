-- 코드를 입력하세요
SELECT B.USER_ID, B.NICKNAME, SUM(A.PRICE) as TOTAL_SALES
FROM USED_GOODS_BOARD A, USED_GOODS_USER B
WHERE A.WRITER_ID = B.USER_ID AND A.STATUS = 'DONE'
GROUP BY B.USER_ID
HAVING SUM(A.PRICE) >= 700000
ORDER BY TOTAL_SALES