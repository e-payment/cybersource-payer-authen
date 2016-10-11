CyberSource Payer Authentication Using the Simple Order API
===========================================================

## Reference
[PDF](http://apps.cybersource.com/library/documentation/dev_guides/Payer_Authentication_SO_API/Payer_Authentication_SO_API.pdf) | [HTML](http://apps.cybersource.com/library/documentation/dev_guides/Payer_Authentication_SO_API/html/wwhelp/wwhimpl/js/html/wwhelp.htm#href=cover.html)

...

## PARes
The <PARes> element contains the payer authentication reply message.
```
<PARes>
  (AcqBIN)
  (MerID)
  (XID)
  (Date)
  (PurchaseAmount)
  (PAN)
  (AuthDate)
  (Status)
  (CAVV)
  (ECI)
</PARes>
```

### Status : String (1)

Result of the authentication check. This field can contain one of these values:
* Y : Customer was successfully authenticated.
* N : Customer failed or canceled authentication. Transaction denied.
* U : Authenticate not completed regardless of the reason.
* A : Proof of authentication attempt was generated.

### CAVV : String (50)

`CAVV` (Visa and JCB cards = * below) or `AAV` (MasterCard, and Maestro cards = ** below) returned in the customer authentication reply. This element corresponds to the `payerAuthValidateReply_cavv` (*) and `payerAuthValidateReply_ucafAuthenticationData` (**) API fields.

### ECI : Numeric (1)

Electronic Commerce Indicator returned in the customer authentication reply. This element corresponds to the `payerAuthValidateReply_eci` (*) and `payerAuthValidateReply_ucafCollectionIndicator` (**) API fields.
