-- PostgreSQL

ALTER TABLE OFFICES ADD CONSTRAINT HASMGR FOREIGN KEY (MGR) REFERENCES SALESREPS ON DELETE SET NULL;

ALTER TABLE CUSTOMERS ADD CONSTRAINT HASREP FOREIGN KEY (CUST_REP) REFERENCES SALESREPS ON DELETE SET NULL;

ALTER TABLE SALESREPS ADD CONSTRAINT HASMGR FOREIGN KEY (MANAGER) REFERENCES SALESREPS ON DELETE SET NULL;
ALTER TABLE SALESREPS ADD CONSTRAINT WORKSIN FOREIGN KEY (REP_OFFICE) REFERENCES OFFICES ON DELETE SET NULL;

ALTER TABLE ORDERS ADD CONSTRAINT PLACEDBY FOREIGN KEY (CUST) REFERENCES CUSTOMERS ON DELETE CASCADE;
ALTER TABLE ORDERS ADD CONSTRAINT TAKENBY FOREIGN KEY (REP) REFERENCES SALESREPS ON DELETE SET NULL;
ALTER TABLE ORDERS ADD CONSTRAINT ISFOR FOREIGN KEY (MFR, PRODUCT) REFERENCES PRODUCTS ON DELETE RESTRICT;
