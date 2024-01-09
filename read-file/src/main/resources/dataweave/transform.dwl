%dw 2.0
output application/json 
---
payload map  {
    (customerId: $.customerid) if(sizeOf($.customerid) > 0) ,
    (customerName: $.customerName) if(sizeOf($.customerName) > 0),
    (productId: $.productId) if(sizeOf($.productId) > 0),
    (Quantity: $.Qunatity) if(sizeOf($.Qunatity) > 0),
    (country: $.country) if(sizeOf($.country) > 0)
}