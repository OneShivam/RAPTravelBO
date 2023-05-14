@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: 'CDS View fortravel'
define root view entity ZR_travelTP_SS
  as select from ZSSDEMOTRAVEL
  composition [0..*] of ZR_bookingTP_SS as _booking
{
  key TRAVEL_UUID as TravelUUID,
  TRAVEL_ID as TravelID,
  AGENCY_ID as AgencyID,
  CUSTOMER_ID as CustomerID,
  BEGIN_DATE as BeginDate,
  END_DATE as EndDate,
  @Semantics.amount.currencyCode: 'CurrencyCode'
  BOOKING_FEE as BookingFee,
  @Semantics.amount.currencyCode: 'CurrencyCode'
  TOTAL_PRICE as TotalPrice,
  CURRENCY_CODE as CurrencyCode,
  DESCRIPTION as Description,
  OVERALL_STATUS as OverallStatus,
  @Semantics.user.createdBy: true
  LOCAL_CREATED_BY as LocalCreatedBy,
  @Semantics.systemDateTime.createdAt: true
  LOCAL_CREATED_AT as LocalCreatedAt,
  LOCAL_LAST_CHANGED_BY as LocalLastChangedBy,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  LOCAL_LAST_CHANGED_AT as LocalLastChangedAt,
  @Semantics.systemDateTime.lastChangedAt: true
  LAST_CHANGED_AT as LastChangedAt,
  _booking
  
}
