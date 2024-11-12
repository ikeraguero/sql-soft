/*c. Faça os scripts para a criação das chaves secundárias das tabelas criadas; */

ALTER TABLE PRODUCTREQUEST
ADD CONSTRAINT FK_CDREQUEST
FOREIGN KEY(CDREQUEST) REFERENCES REQUEST(CDREQUEST);

ALTER TABLE PRODUCTREQUEST
ADD CONSTRAINT FK_CDPRODUCT
FOREIGN KEY (CDPRODUCT) REFERENCES PRODUCT(CDPRODUCT);

ALTER TABLE REQUEST
ADD CONSTRAINT FK_REQUEST
FOREIGN KEY(CDCUSTOMER) REFERENCES CUSTOMER(CDCUSTOMER);

ALTER TABLE PRODUCT
ADD CONSTRAINT FK_PRODUCT
FOREIGN KEY(CDSUPPLIER) REFERENCES SUPPLIER(CDSUPPLIER);