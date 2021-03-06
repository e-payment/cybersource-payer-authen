CyberSource Payer Authentication
================================
Using the Simple Order API

## Reference
[PDF](http://apps.cybersource.com/library/documentation/dev_guides/Payer_Authentication_SO_API/Payer_Authentication_SO_API.pdf) | [HTML](http://apps.cybersource.com/library/documentation/dev_guides/Payer_Authentication_SO_API/html/wwhelp/wwhimpl/js/html/wwhelp.htm#href=cover.html)

...

## __<PARes__>
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

### __<Status__> : String (1)

Result of the authentication check. This field can contain one of these values:
* Y : Customer was successfully authenticated.
* N : Customer failed or canceled authentication. Transaction denied.
* U : Authenticate not completed regardless of the reason.
* A : Proof of authentication attempt was generated.

### __<CAVV__> : String (50)

`CAVV` (Visa and JCB cards = \* below) or `AAV` (MasterCard, and Maestro cards = \*\* below) returned in the customer authentication reply. This element corresponds to the `payerAuthValidateReply_cavv` (\*) and `payerAuthValidateReply_ucafAuthenticationData` (\*\*) API fields.

### __<ECI__> : Numeric (1)

Electronic Commerce Indicator returned in the customer authentication reply. This element corresponds to the `payerAuthValidateReply_eci` (\*) and `payerAuthValidateReply_ucafCollectionIndicator` (\*\*) API fields.


# Note
* 2014-09-29 [Changes required to support AAV data returned by Master Card SecureCode (MCSC) Attempts Server processing](https://support.cybersource.com/cybskb/index?page=content&id=CS310&actp=LIST)
