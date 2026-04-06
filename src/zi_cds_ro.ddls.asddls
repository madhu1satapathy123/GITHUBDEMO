@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Base CDS for annotation practise'
@Metadata.ignorePropagatedAnnotations: true
@VDM.viewType: #BASIC 
define view entity ZI_CDS_RO as select from /dmo/travel
{
    key travel_id as TravelId,
   // @EndUserText.label: 'label for End User Text'
    agency_id as AgencyId,
    customer_id as CustomerId,
    begin_date as BeginDate,
    end_date as EndDate,
    @Semantics.amount.currencyCode: 'CurrencyCode'
    booking_fee as BookingFee,
    @Semantics.amount.currencyCode: 'CurrencyCode'
    total_price as TotalPrice,
   // @Semantics.currencyCode: true
    currency_code as CurrencyCode,
    description as Description,
    status as Status,
    createdby as Createdby,
    createdat as Createdat,
    lastchangedby as Lastchangedby,
    lastchangedat as Lastchangedat
}
