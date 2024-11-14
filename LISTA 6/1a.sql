DELETE FROM CUSTOMER
WHERE CDCUSTOMER IN (
    SELECT CUSTOMER.CDCUSTOMER FROM CUSTOMER 
    LEFT JOIN REQUEST ON REQUEST.CDCUSTOMER = CUSTOMER.CDCUSTOMER
    LEFT JOIN PRODUCTREQUEST ON PRODUCTREQUEST.CDREQUEST = REQUEST.CDREQUEST 
    LEFT JOIN PRODUCT ON 
    PRODUCTREQUEST.CDPRODUCT = PRODUCT.CDPRODUCT WHERE NMPRODUCT IS NULL;
)