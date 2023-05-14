@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Projection View fortravel'
define root view entity ZI_travelTP_SS
  provider contract transactional_interface
  as projection on ZR_travelTP_SS
{
  key TravelUUID,
  TravelID,
  AgencyID,
  CustomerID,
  BeginDate,
  EndDate,
  BookingFee,
  TotalPrice,
  CurrencyCode,
  Description,
  OverallStatus,
  LocalCreatedBy,
  LocalCreatedAt,
  LocalLastChangedBy,
  LocalLastChangedAt,
  LastChangedAt,
  _booking : redirected to composition child ZI_bookingTP_SS
  
}
