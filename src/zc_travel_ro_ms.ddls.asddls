@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption CDS for annotation'
@Metadata.ignorePropagatedAnnotations: true
@VDM.viewType: #CONSUMPTION
@Search.searchable: true // HANA search or Text search or fuzzy search
@UI.headerInfo: {
    typeName: 'Travel',
    typeNamePlural: 'Travels'

}

define view entity ZC_TRAVEL_RO_MS
  as select from ZI_CDS_RO
{

      @UI.facet: [{
         // qualifier: '',
          //feature: '',
          id: 'GenralInfo',
          purpose: #STANDARD,
          //parentId: '',
          position: 10,
         // exclude: true,
          hidden: false,
          isPartOfPreview: true,
          isSummary: true,
          isMap: true,
         // importance: ,
          label: 'General Information for Travel Id',
          type: #IDENTIFICATION_REFERENCE
         // targetElement: '',
         // targetQualifier: '',
         // url: ''
      }]



      @UI.selectionField: [{ position: 10 }]

      
      @EndUserText.label: 'label for End User Text'
     //  @UI.lineItem.position: 10
      //@UI.lineItem: [{ position : 10,  label: '' }]
      @UI.lineItem: [{ position : 10,  label: 'Travel Id with UI' }]
      @UI.identification:[{ position : 10,  label: ' Travel Id' }]
  key TravelId,
      @UI.lineItem: [{ position : 20,  label: 'Agenecy Id' }]
      @UI.identification:[{ position : 20,  label: 'Agenecy Id' }]
      @EndUserText.label: 'Agency'
      @UI.selectionField: [{ position: 20 }]
      AgencyId,
     @UI.lineItem: [{ position : 30,  label: ' Customer Id' }]
      @UI.selectionField: [{ position: 30 }]
      CustomerId,
      @UI.lineItem: [{ position : 40,  label: ' Begin Date' }]
      BeginDate,
      @UI.lineItem: [{ position : 50,  label: ' End Date' }]
      EndDate,
      @UI.lineItem: [{ position : 60,  label: ' Booking Fee' }]
      @Semantics.amount.currencyCode: 'CurrencyCode'
      BookingFee,
      @UI.lineItem: [{ position : 70,  label: ' Currency Code' }]
      CurrencyCode,
      @UI.lineItem: [{ position : 80,  label: 'Description' }]
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold:0.70
      Description,
      @UI.lineItem: [{ position : 90,  label: 'Status' }]
      @UI.selectionField: [{ position: 40 }]
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.80
      Status

}
