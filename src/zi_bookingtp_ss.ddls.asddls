@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Projection View forbooking'
define view entity ZI_bookingTP_SS
  as projection on ZR_bookingTP_SS
{
  key BookingUUID,
  ParentUUID,
  BookingID,
  BookingDate,
  CustomerID,
  CarrierID,
  ConnectionID,
  FlightDate,
  FlightPrice,
  CurrencyCode,
  BookingStatus,
  LocalLastChangedAt,
  _travel : redirected to parent ZI_travelTP_SS
  
}
