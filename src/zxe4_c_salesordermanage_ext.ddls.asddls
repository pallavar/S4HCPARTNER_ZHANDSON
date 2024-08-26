extend view C_SalesOrderManage with ZXE4_C_SALESORDERMANAGE_EXT
 {
 
 
                 @EndUserText.label: 'Dev Test Field'
                     @UI.identification: [{ position: 60 }]
                     @UI.selectionField: [{ position: 70 }]
                 
        
        @UI.lineItem: [{ position: 1, importance:#HIGH }]
        
        SalesOrder.zz_testfield_sdh as zz_testfield_sdh
        
        
        
    
          
        
        
}
