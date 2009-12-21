1. 

CREATE TABLE shipping
(
  shippingid character varying(10) NOT NULL,
  shippingname character varying(40),
  contactperson character varying(25),
  address character varying(50),
  countryid character varying(3),
  provinceid character varying(10),
  cityid character varying(5),
  memo text,
  CONSTRAINT pk_shipping PRIMARY KEY (shippingid),
  CONSTRAINT fk_shipping_city FOREIGN KEY (countryid, provinceid, cityid)
      REFERENCES city (countryid, provinceid, cityid) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT
)
WITH (OIDS=FALSE);
ALTER TABLE shipping OWNER TO sa;

-- Index: id_shipping

-- DROP INDEX id_shipping;

CREATE UNIQUE INDEX id_shipping
  ON shipping
  USING btree
  (shippingid);

2.

CREATE TABLE customershippingdetail
(
  shippingid character varying(10) NOT NULL,
  customerid character varying(10) NOT NULL,
  CONSTRAINT pk_customershippingdetail PRIMARY KEY (shippingid, customerid),
  CONSTRAINT fk_customershippingdetail_customer FOREIGN KEY (customerid)
      REFERENCES customer (customerid) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT fk_customershippingdetail_shipping FOREIGN KEY (shippingid)
      REFERENCES shipping (shippingid) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE
)
WITH (OIDS=FALSE);
ALTER TABLE customershippingdetail OWNER TO sa;

-- Index: id_customershippingdetail

-- DROP INDEX id_customershippingdetail;

CREATE UNIQUE INDEX id_customershippingdetail
  ON customershippingdetail
  USING btree
  (shippingid, customerid);

3.

CREATE TABLE vendorshippingdetail
(
  shippingid character varying(10) NOT NULL,
  vendorid character varying(10) NOT NULL,
  CONSTRAINT pk_vendorshippingdetail PRIMARY KEY (shippingid, vendorid),
  CONSTRAINT fk_vendorshippingdetail_shipping FOREIGN KEY (shippingid)
      REFERENCES shipping (shippingid) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT fk_vendorshippingdetail_vendor FOREIGN KEY (vendorid)
      REFERENCES vendor (vendorid) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE
)
WITH (OIDS=FALSE);
ALTER TABLE vendorshippingdetail OWNER TO sa;

-- Index: id_vendorshippingdetail

-- DROP INDEX id_vendorshippingdetail;

CREATE UNIQUE INDEX id_vendorshippingdetail
  ON vendorshippingdetail
  USING btree
  (shippingid, vendorid);

4. Backup and Restore Data (update database schema)


----------------------------------------------------------------------------

DBChange

table shipping

