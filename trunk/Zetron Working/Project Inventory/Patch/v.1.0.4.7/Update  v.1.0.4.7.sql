alter table PurchaseInvoiceHd
add TaxNumber varchar(30), add TaxDate DateWithoutTime;

alter table SalesInvoiceHd
add TaxNumber varchar(30), add TaxDate DateWithoutTime;

alter table Customer
add CustomerIdParent varchar(10);

alter table Vendor
add VendorIdParent varchar(10);

alter table Vendor
   add constraint FK_Vendor_Vendor foreign key (VendorIdParent)
      references Vendor (VendorId)
      on delete restrict on update restrict;

alter table Customer
   add constraint FK_Customer_Customer foreign key (CustomerIdParent)
      references Customer (CustomerId)
      on delete restrict on update restrict;
