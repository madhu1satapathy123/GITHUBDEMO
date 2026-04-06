@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@EndUserText: {
  label: '###GENERATED Core Data Service Entity'
}
@ObjectModel: {
  sapObjectNodeType.name: 'ZRAP_MS_TRAVEL',
  semanticKey           : [ 'TravelID' , 'BeginDate' ]
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZC_RAP_MS_TRAVEL
  provider contract transactional_query
  as projection on ZR_RAP_MS_TRAVEL
  association [1..1] to ZR_RAP_MS_TRAVEL as _BaseEntity on $projection.TravelID = _BaseEntity.TravelID
{
  key TravelID,
     // @ObjectModel.text.element: [ 'agencyName' ]
      AgencyID,
      _Agency.Name        as agencyName,
      @ObjectModel.text.element: [ 'customerName' ]
      CustomerID,
      _Customer.FirstName as customerName,
      BeginDate,
      EndDate,
      @Semantics: {
        amount.currencyCode: 'CurrencyCode'
      }
      BookingFee,
      @Semantics: {
        amount.currencyCode: 'CurrencyCode'
      }
      TotalPrice,
      @Consumption: {
        valueHelpDefinition: [ {
          entity.element: 'Currency',
          entity.name: 'I_CurrencyStdVH',
          useForValidation: true
        } ]
      }
      CurrencyCode,
      Description,
      OverallStatus,
      @Semantics.largeObject: {
        mimeType: 'MimeType',
        fileName: 'FileName',
        acceptableMimeTypes: [ 'image/png' , 'image/jpeg' ],
        contentDispositionPreference:#ATTACHMENT

      }
      Attachment,
      //@Semantics.mimeType: true
      MimeType,
      FileName,
      @Semantics: {
        user.createdBy: true
      }
      CreatedBy,
      @Semantics: {
        systemDateTime.createdAt: true
      }
      CreatedAt,
      @Semantics: {
        user.localInstanceLastChangedBy: true
      }
      LocalLastChangedBy,
      @Semantics: {
        systemDateTime.localInstanceLastChangedAt: true
      }
      LocalLastChangedAt,
      @Semantics: {
        systemDateTime.lastChangedAt: true
      }
      LastChangedAt,
      _BaseEntity
}
