@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: 'CDS View forbooking'
define view entity ZR_bookingTP_SS
  as select from ZSSDEMOBOOKING
  association to parent ZR_travelTP_SS as _travel on $projection.ParentUUID = _travel.TravelUUID
{
  key BOOKING_UUID as BookingUUID,
  PARENT_UUID as ParentUUID,
  BOOKING_ID as BookingID,
  BOOKING_DATE as BookingDate,
  CUSTOMER_ID as CustomerID,
  CARRIER_ID as CarrierID,
  CONNECTION_ID as ConnectionID,
  FLIGHT_DATE as FlightDate,
  @Semantics.amount.currencyCode: 'CurrencyCode'
  FLIGHT_PRICE as FlightPrice,
  CURRENCY_CODE as CurrencyCode,
  BOOKING_STATUS as BookingStatus,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  LOCAL_LAST_CHANGED_AT as LocalLastChangedAt,
  _travel
  
}
