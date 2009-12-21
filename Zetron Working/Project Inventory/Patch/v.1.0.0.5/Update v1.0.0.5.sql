update SalesInvoiceDt
set PriceDisplay = Price
where salesinvoiceid in
(select salesinvoiceid 
from SalesInvoicehd 
where statusapprove = '1')
