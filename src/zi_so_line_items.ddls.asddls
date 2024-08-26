@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales Order Line Item Info'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_SO_LINE_ITEMS as select from I_SalesOrder
{
  @UI: {lineItem: [{ position: 10  }], selectionField: [ { position: 10 }]}
    @Search.defaultSearchElement: true
    @EndUserText.label: 'Sales Document'
    key SalesOrder,
  @UI: {lineItem: [{ position: 20  }]}
    @EndUserText.label: 'Item'
    key _Item.SalesOrderItem,
   @UI: {lineItem: [{ position: 30  }]}
    @EndUserText.label: 'Material'
    key _Item.Material   
}
