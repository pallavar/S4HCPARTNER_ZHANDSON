"! <p class="shorttext synchronized">Consumption model for client proxy - generated</p>
"! This class has been generated based on the metadata with namespace
"! <em>cust</em>
CLASS z00_model_bydmat DEFINITION
  PUBLIC
  INHERITING FROM /iwbep/cl_v4_abs_pm_model_prov
  CREATE PUBLIC.

  PUBLIC SECTION.

    TYPES:
      "! <p class="shorttext synchronized">Types for "OData Primitive Types"</p>
      BEGIN OF tys_types_for_prim_types,
        "! Used for primitive type CUSTOMER_ID
        customer_id                TYPE string,
        "! Used for primitive type CUSTOMER_PART_NUMBER
        customer_part_number       TYPE string,
        "! Used for primitive type DISTRIBUTION_CHANNEL_CODE
        distribution_channel_code  TYPE string,
        "! Used for primitive type GLOBAL_TRADE_ITEM_NUMBER_I
        global_trade_item_number_i TYPE string,
        "! Used for primitive type ITEM_GROUP_CODE
        item_group_code            TYPE string,
        "! Used for primitive type NUMBER_OF_ROWS
        number_of_rows             TYPE string,
        "! Used for primitive type NUMBER_OF_ROWS_2
        number_of_rows_2           TYPE string,
        "! Used for primitive type NUMBER_OF_ROWS_3
        number_of_rows_3           TYPE string,
        "! Used for primitive type NUMBER_OF_ROWS_4
        number_of_rows_4           TYPE string,
        "! Used for primitive type OBJECT_ID
        object_id                  TYPE string,
        "! Used for primitive type OBJECT_ID_2
        object_id_2                TYPE string,
        "! Used for primitive type OBJECT_ID_3
        object_id_3                TYPE string,
        "! Used for primitive type PRODUCT_ID
        product_id                 TYPE string,
        "! Used for primitive type SALES_ORGANISATION_ID
        sales_organisation_id      TYPE string,
        "! Used for primitive type START_ROW
        start_row                  TYPE string,
        "! Used for primitive type START_ROW_2
        start_row_2                TYPE string,
        "! Used for primitive type START_ROW_3
        start_row_3                TYPE string,
        "! Used for primitive type START_ROW_4
        start_row_4                TYPE string,
        "! Used for primitive type SUPPLIER_ID
        supplier_id                TYPE string,
        "! Used for primitive type SUPPLIER_PART_NUMBER
        supplier_part_number       TYPE string,
      END OF tys_types_for_prim_types.

    TYPES:
      "! <p class="shorttext synchronized">Parameters of function MaterialLogisticsActivate</p>
      "! <em>with the internal name</em> MATERIAL_LOGISTICS_ACTIVAT
      BEGIN OF tys_parameters_1,
        "! ObjectID
        object_id TYPE string,
      END OF tys_parameters_1,
      "! <p class="shorttext synchronized">List of TYS_PARAMETERS_1</p>
      tyt_parameters_1 TYPE STANDARD TABLE OF tys_parameters_1 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Parameters of function MaterialQueryByCustomer</p>
      "! <em>with the internal name</em> MATERIAL_QUERY_BY_CUSTOMER
      BEGIN OF tys_parameters_2,
        "! NumberOfRows
        number_of_rows       TYPE string,
        "! StartRow
        start_row            TYPE string,
        "! CustomerID
        customer_id          TYPE string,
        "! CustomerPartNumber
        customer_part_number TYPE string,
      END OF tys_parameters_2,
      "! <p class="shorttext synchronized">List of TYS_PARAMETERS_2</p>
      tyt_parameters_2 TYPE STANDARD TABLE OF tys_parameters_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Parameters of function MaterialQueryByGTIN</p>
      "! <em>with the internal name</em> MATERIAL_QUERY_BY_GTIN
      BEGIN OF tys_parameters_3,
        "! NumberOfRows
        number_of_rows             TYPE string,
        "! StartRow
        start_row                  TYPE string,
        "! GlobalTradeItemNumberID
        global_trade_item_number_i TYPE string,
      END OF tys_parameters_3,
      "! <p class="shorttext synchronized">List of TYS_PARAMETERS_3</p>
      tyt_parameters_3 TYPE STANDARD TABLE OF tys_parameters_3 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Parameters of function MaterialQueryBySupplier</p>
      "! <em>with the internal name</em> MATERIAL_QUERY_BY_SUPPLIER
      BEGIN OF tys_parameters_4,
        "! NumberOfRows
        number_of_rows       TYPE string,
        "! StartRow
        start_row            TYPE string,
        "! SupplierPartNumber
        supplier_part_number TYPE string,
        "! SupplierID
        supplier_id          TYPE string,
      END OF tys_parameters_4,
      "! <p class="shorttext synchronized">List of TYS_PARAMETERS_4</p>
      tyt_parameters_4 TYPE STANDARD TABLE OF tys_parameters_4 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Parameters of function MaterialSalesBlock</p>
      "! <em>with the internal name</em> MATERIAL_SALES_BLOCK
      BEGIN OF tys_parameters_5,
        "! ObjectID
        object_id TYPE string,
      END OF tys_parameters_5,
      "! <p class="shorttext synchronized">List of TYS_PARAMETERS_5</p>
      tyt_parameters_5 TYPE STANDARD TABLE OF tys_parameters_5 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Parameters of function MaterialSalesQueryByElements</p>
      "! <em>with the internal name</em> MATERIAL_SALES_QUERY_BY_EL
      BEGIN OF tys_parameters_6,
        "! NumberOfRows
        number_of_rows            TYPE string,
        "! StartRow
        start_row                 TYPE string,
        "! DistributionChannelCode
        distribution_channel_code TYPE string,
        "! ItemGroupCode
        item_group_code           TYPE string,
        "! ProductID
        product_id                TYPE string,
        "! SalesOrganisationID
        sales_organisation_id     TYPE string,
      END OF tys_parameters_6,
      "! <p class="shorttext synchronized">List of TYS_PARAMETERS_6</p>
      tyt_parameters_6 TYPE STANDARD TABLE OF tys_parameters_6 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Parameters of function MaterialSalesUnblock</p>
      "! <em>with the internal name</em> MATERIAL_SALES_UNBLOCK
      BEGIN OF tys_parameters_7,
        "! ObjectID
        object_id TYPE string,
      END OF tys_parameters_7,
      "! <p class="shorttext synchronized">List of TYS_PARAMETERS_7</p>
      tyt_parameters_7 TYPE STANDARD TABLE OF tys_parameters_7 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">AttachmentFolder</p>
      BEGIN OF tys_attachment_folder,
        "! <em>Key property</em> ObjectID
        object_id                  TYPE c LENGTH 70,
        "! ParentObjectID
        parent_object_id           TYPE c LENGTH 70,
        "! UUID
        uuid                       TYPE sysuuid_x16,
        "! Name
        name                       TYPE string,
        "! MimeType
        mime_type                  TYPE string,
        "! Binary
        binary                     TYPE xstring,
        "! SizeInkB
        size_ink_b                 TYPE p LENGTH 16 DECIMALS 14,
        "! DocumentLink
        document_link              TYPE string,
        "! OutputRelevanceIndicator
        output_relevance_indicator TYPE abap_bool,
        "! LinkWebURI
        link_web_uri               TYPE string,
        "! TypeCode
        type_code                  TYPE c LENGTH 5,
        "! TypeCodeText
        type_code_text             TYPE string,
        "! CategoryCode
        category_code              TYPE c LENGTH 1,
        "! CategoryCodeText
        category_code_text         TYPE string,
        "! CreatedOn
        created_on                 TYPE timestampl,
        "! CreatedBy
        created_by                 TYPE c LENGTH 80,
        "! LastUpdatedOn
        last_updated_on            TYPE timestampl,
        "! LastUpdatedBy
        last_updated_by            TYPE c LENGTH 80,
        "! Title
        title                      TYPE string,
      END OF tys_attachment_folder,
      "! <p class="shorttext synchronized">List of AttachmentFolder</p>
      tyt_attachment_folder TYPE STANDARD TABLE OF tys_attachment_folder WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">AvailabilityConfirmation</p>
      BEGIN OF tys_availability_confirmatio_4,
        "! <em>Key property</em> ObjectID
        object_id                  TYPE c LENGTH 70,
        "! ParentObjectID
        parent_object_id           TYPE c LENGTH 70,
        "! SupplyPlanningAreaID
        supply_planning_area_id    TYPE c LENGTH 20,
        "! SupplyPlanningAreaDescription
        supply_planning_area_descr TYPE c LENGTH 40,
        "! LifeCycleStatusCode
        life_cycle_status_code     TYPE c LENGTH 2,
        "! LifeCycleStatusCodeText
        life_cycle_status_code_tex TYPE string,
        "! AvailabilityCheckScopeCode
        availability_check_scope_c TYPE c LENGTH 3,
        "! AvailabilityCheckScopeCodeText
        availability_check_scope_2 TYPE string,
        "! ManualSourcingRequiredIndicator
        manual_sourcing_required_i TYPE abap_bool,
        "! GoodsIssueProcessingDuration
        goods_issue_processing_dur TYPE c LENGTH 20,
      END OF tys_availability_confirmatio_4,
      "! <p class="shorttext synchronized">List of AvailabilityConfirmation</p>
      tyt_availability_confirmatio_4 TYPE STANDARD TABLE OF tys_availability_confirmatio_4 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">BusinessResidenceCurrentName</p>
      BEGIN OF tys_business_residence_curre_2,
        "! <em>Key property</em> ObjectID
        object_id TYPE c LENGTH 70,
        "! Name
        name      TYPE c LENGTH 40,
      END OF tys_business_residence_curre_2,
      "! <p class="shorttext synchronized">List of BusinessResidenceCurrentName</p>
      tyt_business_residence_curre_2 TYPE STANDARD TABLE OF tys_business_residence_curre_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">CodeList</p>
      BEGIN OF tys_code_list,
        "! <em>Key property</em> Code
        code        TYPE string,
        "! Description
        description TYPE string,
      END OF tys_code_list,
      "! <p class="shorttext synchronized">List of CodeList</p>
      tyt_code_list TYPE STANDARD TABLE OF tys_code_list WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">CompanyCurrentName</p>
      BEGIN OF tys_company_current_name,
        "! <em>Key property</em> ObjectID
        object_id TYPE c LENGTH 70,
        "! Name
        name      TYPE c LENGTH 40,
      END OF tys_company_current_name,
      "! <p class="shorttext synchronized">List of CompanyCurrentName</p>
      tyt_company_current_name TYPE STANDARD TABLE OF tys_company_current_name WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">ContextualCodeList</p>
      BEGIN OF tys_contextual_code_list,
        "! <em>Key property</em> Code
        code        TYPE string,
        "! <em>Key property</em> Context
        context     TYPE string,
        "! Description
        description TYPE string,
      END OF tys_contextual_code_list,
      "! <p class="shorttext synchronized">List of ContextualCodeList</p>
      tyt_contextual_code_list TYPE STANDARD TABLE OF tys_contextual_code_list WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">CustomerInformation</p>
      BEGIN OF tys_customer_information,
        "! <em>Key property</em> ObjectID
        object_id                  TYPE c LENGTH 70,
        "! ParentObjectID
        parent_object_id           TYPE c LENGTH 70,
        "! CustomerID
        customer_id                TYPE c LENGTH 10,
        "! CustomerPartNumber
        customer_part_number       TYPE c LENGTH 60,
        "! BusinessPartnerFormattedName
        business_partner_formatted TYPE c LENGTH 80,
      END OF tys_customer_information,
      "! <p class="shorttext synchronized">List of CustomerInformation</p>
      tyt_customer_information TYPE STANDARD TABLE OF tys_customer_information WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">DeviantTaxClassification</p>
      BEGIN OF tys_deviant_tax_classificati_7,
        "! <em>Key property</em> ObjectID
        object_id                  TYPE c LENGTH 70,
        "! ParentObjectID
        parent_object_id           TYPE c LENGTH 70,
        "! CountryCode
        country_code               TYPE c LENGTH 3,
        "! CountryCodeText
        country_code_text          TYPE string,
        "! RegionCode
        region_code                TYPE c LENGTH 6,
        "! RegionCodeText
        region_code_text           TYPE string,
        "! TaxTypeCode
        tax_type_code              TYPE c LENGTH 13,
        "! TaxTypeCodeText
        tax_type_code_text         TYPE string,
        "! TaxRateTypeCode
        tax_rate_type_code         TYPE c LENGTH 15,
        "! TaxRateTypeCodeText
        tax_rate_type_code_text    TYPE string,
        "! TaxExemptionReasonCode
        tax_exemption_reason_code  TYPE c LENGTH 13,
        "! TaxExemptionReasonCodeText
        tax_exemption_reason_cod_2 TYPE string,
      END OF tys_deviant_tax_classificati_7,
      "! <p class="shorttext synchronized">List of DeviantTaxClassification</p>
      tyt_deviant_tax_classificati_7 TYPE STANDARD TABLE OF tys_deviant_tax_classificati_7 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">GlobalTradeItemNumber</p>
      BEGIN OF tys_global_trade_item_number,
        "! <em>Key property</em> ObjectID
        object_id               TYPE c LENGTH 70,
        "! ParentObjectID
        parent_object_id        TYPE c LENGTH 70,
        "! ID
        id                      TYPE c LENGTH 14,
        "! QuantityTypeCode
        quantity_type_code      TYPE c LENGTH 10,
        "! QuantityTypeCodeText
        quantity_type_code_text TYPE string,
      END OF tys_global_trade_item_number,
      "! <p class="shorttext synchronized">List of GlobalTradeItemNumber</p>
      tyt_global_trade_item_number TYPE STANDARD TABLE OF tys_global_trade_item_number WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Identification</p>
      BEGIN OF tys_identification,
        "! <em>Key property</em> ObjectID
        object_id                  TYPE c LENGTH 70,
        "! ParentObjectID
        parent_object_id           TYPE c LENGTH 70,
        "! ProductID
        product_id                 TYPE c LENGTH 60,
        "! ProductIdentifierTypeCode
        product_identifier_type_co TYPE c LENGTH 2,
        "! ProductIdentifierTypeCodeText
        product_identifier_type__2 TYPE string,
      END OF tys_identification,
      "! <p class="shorttext synchronized">List of Identification</p>
      tyt_identification TYPE STANDARD TABLE OF tys_identification WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Logistics</p>
      BEGIN OF tys_logistics,
        "! <em>Key property</em> ObjectID
        object_id                  TYPE c LENGTH 70,
        "! ParentObjectID
        parent_object_id           TYPE c LENGTH 70,
        "! SiteID
        site_id                    TYPE c LENGTH 20,
        "! SiteUUID
        site_uuid                  TYPE sysuuid_x16,
        "! LifeCycleStatusCode
        life_cycle_status_code     TYPE c LENGTH 2,
        "! LifeCycleStatusCodeText
        life_cycle_status_code_tex TYPE string,
        "! SiteName
        site_name                  TYPE c LENGTH 40,
        "! CycleCountPlannedDuration
        cycle_count_planned_durati TYPE c LENGTH 20,
      END OF tys_logistics,
      "! <p class="shorttext synchronized">List of Logistics</p>
      tyt_logistics TYPE STANDARD TABLE OF tys_logistics WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">LogisticsProductionGroup</p>
      BEGIN OF tys_logistics_production_gro_2,
        "! <em>Key property</em> ObjectID
        object_id                  TYPE c LENGTH 70,
        "! ParentObjectID
        parent_object_id           TYPE c LENGTH 70,
        "! ProductCategoryInternalID
        product_category_internal  TYPE c LENGTH 20,
        "! ProductCategoryDescription
        product_category_descripti TYPE c LENGTH 80,
      END OF tys_logistics_production_gro_2,
      "! <p class="shorttext synchronized">List of LogisticsProductionGroup</p>
      tyt_logistics_production_gro_2 TYPE STANDARD TABLE OF tys_logistics_production_gro_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">LogisticsStorageGroup</p>
      BEGIN OF tys_logistics_storage_group,
        "! <em>Key property</em> ObjectID
        object_id                  TYPE c LENGTH 70,
        "! ParentObjectID
        parent_object_id           TYPE c LENGTH 70,
        "! ProductCategoryInternalID
        product_category_internal  TYPE c LENGTH 20,
        "! ProductCategoryDescription
        product_category_descripti TYPE c LENGTH 80,
      END OF tys_logistics_storage_group,
      "! <p class="shorttext synchronized">List of LogisticsStorageGroup</p>
      tyt_logistics_storage_group TYPE STANDARD TABLE OF tys_logistics_storage_group WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Material</p>
      BEGIN OF tys_material,
        "! <em>Key property</em> ObjectID
        object_id                  TYPE c LENGTH 70,
        "! UUID
        uuid                       TYPE sysuuid_x16,
        "! InternalID
        internal_id                TYPE c LENGTH 40,
        "! Description
        description                TYPE c LENGTH 40,
        "! DescriptionLanguageCode
        description_language_code  TYPE c LENGTH 2,
        "! DescriptionLanguageCodeText
        description_language_cod_2 TYPE string,
        "! BaseMeasureUnitCode
        base_measure_unit_code     TYPE c LENGTH 3,
        "! BaseMeasureUnitCodeText
        base_measure_unit_code_tex TYPE string,
        "! IdentifiedStockTypeCode
        identified_stock_type_code TYPE c LENGTH 2,
        "! IdentifiedStockTypeCodeText
        identified_stock_type_co_2 TYPE string,
        "! SerialNumberProfileCode
        serial_number_profile_code TYPE c LENGTH 14,
        "! SerialNumberProfileCodeText
        serial_number_profile_co_2 TYPE string,
        "! CreationDateTime
        creation_date_time         TYPE timestampl,
        "! LastChangeDateTime
        last_change_date_time      TYPE timestampl,
        "! PlanningMeasureUnitCode
        planning_measure_unit_code TYPE c LENGTH 3,
        "! PlanningMeasureUnitCodeText
        planning_measure_unit_co_2 TYPE string,
        "! ValuationLevelTypeCode
        valuation_level_type_code  TYPE c LENGTH 12,
        "! ValuationLevelTypeCodeText
        valuation_level_type_cod_2 TYPE string,
      END OF tys_material,
      "! <p class="shorttext synchronized">List of Material</p>
      tyt_material TYPE STANDARD TABLE OF tys_material WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Planning</p>
      BEGIN OF tys_planning,
        "! <em>Key property</em> ObjectID
        object_id                  TYPE c LENGTH 70,
        "! ParentObjectID
        parent_object_id           TYPE c LENGTH 70,
        "! SupplyPlanningAreaID
        supply_planning_area_id    TYPE c LENGTH 20,
        "! SupplyPlanningAreaUUID
        supply_planning_area_uuid  TYPE sysuuid_x16,
        "! SupplyPlanningAreaDescription
        supply_planning_area_descr TYPE c LENGTH 40,
        "! LifeCycleStatusCode
        life_cycle_status_code     TYPE c LENGTH 2,
        "! LifeCycleStatusCodeText
        life_cycle_status_code_tex TYPE string,
        "! PlanningGroupID
        planning_group_id          TYPE c LENGTH 20,
        "! PlanningGroupDescription
        planning_group_description TYPE c LENGTH 80,
        "! DemandManagementProcedureCode
        demand_management_procedur TYPE c LENGTH 8,
        "! DemandManagementProcedureCodeText
        demand_management_proced_2 TYPE string,
        "! ProcurementTypeCode
        procurement_type_code      TYPE c LENGTH 2,
        "! ProcurementTypeCodeText
        procurement_type_code_text TYPE string,
        "! ProcurementLeadDuration
        procurement_lead_duration  TYPE c LENGTH 20,
        "! GoodsReceiptProcessingDuration
        goods_receipt_processing_d TYPE c LENGTH 20,
        "! PlanningProcedureCode
        planning_procedure_code    TYPE c LENGTH 2,
        "! PlanningProcedureCodeText
        planning_procedure_code_te TYPE string,
        "! SafetyStockQuantity
        safety_stock_quantity      TYPE p LENGTH 16 DECIMALS 14,
        "! SafetyStockQuantityUnitCode
        safety_stock_quantity_unit TYPE c LENGTH 3,
        "! SafetyStockQuantityUnitCodeText
        safety_stock_quantity_un_2 TYPE string,
        "! SafetyLeadDuration
        safety_lead_duration       TYPE c LENGTH 20,
        "! PlanningTimeFenceDuration
        planning_time_fence_durati TYPE c LENGTH 20,
        "! LotSizingMethodCode
        lot_sizing_method_code     TYPE c LENGTH 2,
        "! LotSizingMethodCodeText
        lot_sizing_method_code_tex TYPE string,
        "! MinimumLotSizeQuantity
        minimum_lot_size_quantity  TYPE p LENGTH 16 DECIMALS 14,
        "! MinimumLotSizeQuantityUnitCode
        minimum_lot_size_quantit_2 TYPE c LENGTH 3,
        "! MinimumLotSizeQuantityUnitCodeText
        minimum_lot_size_quantit_3 TYPE string,
        "! MaximumLotSizeQuantity
        maximum_lot_size_quantity  TYPE p LENGTH 16 DECIMALS 14,
        "! MaximumLotSizeQuantityUnitCode
        maximum_lot_size_quantit_2 TYPE c LENGTH 3,
        "! MaximumLotSizeQuantityUnitCodeText
        maximum_lot_size_quantit_3 TYPE string,
        "! LotSizeRoundingQuantity
        lot_size_rounding_quantity TYPE p LENGTH 16 DECIMALS 14,
        "! LotSizeRoundingQuantityUnitCode
        lot_size_rounding_quanti_2 TYPE c LENGTH 3,
        "! LotSizeRoundingQuantityUnitCodeText
        lot_size_rounding_quanti_3 TYPE string,
        "! MinimumDaysOfSupplyDuration
        minimum_days_of_supply_dur TYPE c LENGTH 20,
        "! MinimumShelfLifeDuration
        minimum_shelf_life_duratio TYPE c LENGTH 20,
        "! MinimumReceiptDaysOfSupplyDuration
        minimum_receipt_days_of_su TYPE c LENGTH 20,
      END OF tys_planning,
      "! <p class="shorttext synchronized">List of Planning</p>
      tyt_planning TYPE STANDARD TABLE OF tys_planning WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">PlanningForecastGroup</p>
      BEGIN OF tys_planning_forecast_group,
        "! <em>Key property</em> ObjectID
        object_id                  TYPE c LENGTH 70,
        "! ParentObjectID
        parent_object_id           TYPE c LENGTH 70,
        "! ProductCategoryInternalID
        product_category_internal  TYPE c LENGTH 20,
        "! ProductCategoryDescription
        product_category_descripti TYPE c LENGTH 80,
      END OF tys_planning_forecast_group,
      "! <p class="shorttext synchronized">List of PlanningForecastGroup</p>
      tyt_planning_forecast_group TYPE STANDARD TABLE OF tys_planning_forecast_group WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">ProductCategory</p>
      BEGIN OF tys_product_category,
        "! <em>Key property</em> ObjectID
        object_id                  TYPE c LENGTH 70,
        "! ParentObjectID
        parent_object_id           TYPE c LENGTH 70,
        "! ProductCategoryInternalID
        product_category_internal  TYPE c LENGTH 20,
        "! Description
        description                TYPE c LENGTH 80,
        "! DescriptionLanguageCode
        description_language_code  TYPE c LENGTH 2,
        "! DescriptionLanguageCodeText
        description_language_cod_2 TYPE string,
      END OF tys_product_category,
      "! <p class="shorttext synchronized">List of ProductCategory</p>
      tyt_product_category TYPE STANDARD TABLE OF tys_product_category WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Purchasing</p>
      BEGIN OF tys_purchasing,
        "! <em>Key property</em> ObjectID
        object_id                  TYPE c LENGTH 70,
        "! ParentObjectID
        parent_object_id           TYPE c LENGTH 70,
        "! PurchasingMeasureUnitCode
        purchasing_measure_unit_co TYPE c LENGTH 3,
        "! PurchasingMeasureUnitCodeText
        purchasing_measure_unit__2 TYPE string,
        "! LifeCycleStatusCode
        life_cycle_status_code     TYPE c LENGTH 2,
        "! LifeCycleStatusCodeText
        life_cycle_status_code_tex TYPE string,
      END OF tys_purchasing,
      "! <p class="shorttext synchronized">List of Purchasing</p>
      tyt_purchasing TYPE STANDARD TABLE OF tys_purchasing WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">PurchasingText</p>
      BEGIN OF tys_purchasing_text,
        "! <em>Key property</em> ObjectID
        object_id          TYPE c LENGTH 70,
        "! ParentObjectID
        parent_object_id   TYPE c LENGTH 70,
        "! Text
        text               TYPE string,
        "! LanguageCode
        language_code      TYPE c LENGTH 2,
        "! LanguageCodeText
        language_code_text TYPE string,
        "! TypeCode
        type_code          TYPE c LENGTH 5,
        "! TypeCodeText
        type_code_text     TYPE string,
        "! AuthorUUID
        author_uuid        TYPE sysuuid_x16,
        "! AuthorName
        author_name        TYPE c LENGTH 40,
        "! CreatedOn
        created_on         TYPE timestampl,
        "! CreatedBy
        created_by         TYPE c LENGTH 80,
        "! UpdatedOn
        updated_on         TYPE timestampl,
        "! LastUpdatedBy
        last_updated_by    TYPE c LENGTH 80,
      END OF tys_purchasing_text,
      "! <p class="shorttext synchronized">List of PurchasingText</p>
      tyt_purchasing_text TYPE STANDARD TABLE OF tys_purchasing_text WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">QuantityCharacteristic</p>
      BEGIN OF tys_quantity_characteristic,
        "! <em>Key property</em> ObjectID
        object_id                  TYPE c LENGTH 70,
        "! ParentObjectID
        parent_object_id           TYPE c LENGTH 70,
        "! Quantity
        quantity                   TYPE p LENGTH 16 DECIMALS 14,
        "! QuantityUnitCode
        quantity_unit_code         TYPE c LENGTH 3,
        "! QuantityUnitCodeText
        quantity_unit_code_text    TYPE string,
        "! CharacteristicQuantityTypeCode
        characteristic_quantity_ty TYPE c LENGTH 10,
        "! CharacteristicQuantityTypeCodeText
        characteristic_quantity__2 TYPE string,
        "! CharacteristicQuantity
        characteristic_quantity    TYPE p LENGTH 16 DECIMALS 14,
        "! CharacteristicQuantityUnitCode
        characteristic_quantity_un TYPE c LENGTH 3,
        "! CharacteristicQuantityUnitCodeText
        characteristic_quantity__3 TYPE string,
      END OF tys_quantity_characteristic,
      "! <p class="shorttext synchronized">List of QuantityCharacteristic</p>
      tyt_quantity_characteristic TYPE STANDARD TABLE OF tys_quantity_characteristic WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">QuantityConversion</p>
      BEGIN OF tys_quantity_conversion,
        "! <em>Key property</em> ObjectID
        object_id                  TYPE c LENGTH 70,
        "! ParentObjectID
        parent_object_id           TYPE c LENGTH 70,
        "! CorrespondingQuantity
        corresponding_quantity     TYPE p LENGTH 16 DECIMALS 14,
        "! CorrespondingQuantityUnitCode
        corresponding_quantity_uni TYPE c LENGTH 3,
        "! CorrespondingQuantityUnitCodeText
        corresponding_quantity_u_2 TYPE string,
        "! Quantity
        quantity                   TYPE p LENGTH 16 DECIMALS 14,
        "! QuantityUnitCode
        quantity_unit_code         TYPE c LENGTH 3,
        "! QuantityUnitCodeText
        quantity_unit_code_text    TYPE string,
        "! BatchDependentIndicator
        batch_dependent_indicator  TYPE abap_bool,
      END OF tys_quantity_conversion,
      "! <p class="shorttext synchronized">List of QuantityConversion</p>
      tyt_quantity_conversion TYPE STANDARD TABLE OF tys_quantity_conversion WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Sales</p>
      BEGIN OF tys_sales,
        "! <em>Key property</em> ObjectID
        object_id                  TYPE c LENGTH 70,
        "! ParentObjectID
        parent_object_id           TYPE c LENGTH 70,
        "! SalesOrganisationID
        sales_organisation_id      TYPE c LENGTH 20,
        "! DistributionChannelCode
        distribution_channel_code  TYPE c LENGTH 2,
        "! DistributionChannelCodeText
        distribution_channel_cod_2 TYPE string,
        "! LifeCycleStatusCode
        life_cycle_status_code     TYPE c LENGTH 2,
        "! LifeCycleStatusCodeText
        life_cycle_status_code_tex TYPE string,
        "! SalesMeasureUnitCode
        sales_measure_unit_code    TYPE c LENGTH 3,
        "! SalesMeasureUnitCodeText
        sales_measure_unit_code_te TYPE string,
        "! ItemGroupCode
        item_group_code            TYPE c LENGTH 4,
        "! ItemGroupCodeText
        item_group_code_text       TYPE string,
        "! MinimumOrderQuantity
        minimum_order_quantity     TYPE p LENGTH 16 DECIMALS 14,
        "! MinimumOrderQuantityUnitCode
        minimum_order_quantity_uni TYPE c LENGTH 3,
        "! MinimumOrderQuantityUnitCodeText
        minimum_order_quantity_u_2 TYPE string,
        "! CashDiscountDeductibleIndicator
        cash_discount_deductible_i TYPE abap_bool,
        "! ReferencePriceMaterialID
        reference_price_material_i TYPE c LENGTH 60,
        "! ReferencePriceMaterialDescription
        reference_price_material_d TYPE c LENGTH 40,
      END OF tys_sales,
      "! <p class="shorttext synchronized">List of Sales</p>
      tyt_sales TYPE STANDARD TABLE OF tys_sales WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">SalesOrganisationNameByValidity</p>
      BEGIN OF tys_sales_organisation_name__2,
        "! <em>Key property</em> ObjectID
        object_id  TYPE c LENGTH 70,
        "! Name
        name       TYPE c LENGTH 40,
        "! StartDate
        start_date TYPE datn,
        "! EndDate
        end_date   TYPE datn,
      END OF tys_sales_organisation_name__2,
      "! <p class="shorttext synchronized">List of SalesOrganisationNameByValidity</p>
      tyt_sales_organisation_name__2 TYPE STANDARD TABLE OF tys_sales_organisation_name__2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">SalesText</p>
      BEGIN OF tys_sales_text,
        "! <em>Key property</em> ObjectID
        object_id          TYPE c LENGTH 70,
        "! ParentObjectID
        parent_object_id   TYPE c LENGTH 70,
        "! Text
        text               TYPE string,
        "! LanguageCode
        language_code      TYPE c LENGTH 2,
        "! LanguageCodeText
        language_code_text TYPE string,
        "! TypeCode
        type_code          TYPE c LENGTH 5,
        "! TypeCodeText
        type_code_text     TYPE string,
        "! AuthorUUID
        author_uuid        TYPE sysuuid_x16,
        "! AuthorName
        author_name        TYPE c LENGTH 40,
        "! CreatedOn
        created_on         TYPE timestampl,
        "! CreatedBy
        created_by         TYPE c LENGTH 80,
        "! UpdatedOn
        updated_on         TYPE timestampl,
        "! LastUpdatedBy
        last_updated_by    TYPE c LENGTH 80,
      END OF tys_sales_text,
      "! <p class="shorttext synchronized">List of SalesText</p>
      tyt_sales_text TYPE STANDARD TABLE OF tys_sales_text WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">SalesWarranty</p>
      BEGIN OF tys_sales_warranty,
        "! <em>Key property</em> ObjectID
        object_id                  TYPE c LENGTH 70,
        "! ParentObjectID
        parent_object_id           TYPE c LENGTH 70,
        "! SalesOrganisationID
        sales_organisation_id      TYPE c LENGTH 20,
        "! DistributionChannelCode
        distribution_channel_code  TYPE c LENGTH 2,
        "! DistributionChannelCodeText
        distribution_channel_cod_2 TYPE string,
        "! StartDate
        start_date                 TYPE datn,
        "! EndDate
        end_date                   TYPE datn,
        "! ProductID
        product_id                 TYPE c LENGTH 60,
        "! Description
        description                TYPE c LENGTH 40,
      END OF tys_sales_warranty,
      "! <p class="shorttext synchronized">List of SalesWarranty</p>
      tyt_sales_warranty TYPE STANDARD TABLE OF tys_sales_warranty WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">SupplierInformation</p>
      BEGIN OF tys_supplier_information,
        "! <em>Key property</em> ObjectID
        object_id                  TYPE c LENGTH 70,
        "! ParentObjectID
        parent_object_id           TYPE c LENGTH 70,
        "! SupplierID
        supplier_id                TYPE c LENGTH 10,
        "! SupplierPartNumber
        supplier_part_number       TYPE c LENGTH 60,
        "! SupplierLeadTimeDuration
        supplier_lead_time_duratio TYPE c LENGTH 20,
        "! BusinessPartnerFormattedName
        business_partner_formatted TYPE c LENGTH 80,
      END OF tys_supplier_information,
      "! <p class="shorttext synchronized">List of SupplierInformation</p>
      tyt_supplier_information TYPE STANDARD TABLE OF tys_supplier_information WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Text</p>
      BEGIN OF tys_text,
        "! <em>Key property</em> ObjectID
        object_id          TYPE c LENGTH 70,
        "! ParentObjectID
        parent_object_id   TYPE c LENGTH 70,
        "! Text
        text_2             TYPE string,
        "! LanguageCode
        language_code      TYPE c LENGTH 2,
        "! LanguageCodeText
        language_code_text TYPE string,
        "! TypeCode
        type_code          TYPE c LENGTH 5,
        "! TypeCodeText
        type_code_text     TYPE string,
        "! AuthorUUID
        author_uuid        TYPE sysuuid_x16,
        "! AuthorName
        author_name        TYPE c LENGTH 40,
        "! CreatedOn
        created_on         TYPE timestampl,
        "! CreatedBy
        created_by         TYPE c LENGTH 80,
        "! UpdatedOn
        updated_on         TYPE timestampl,
        "! LastUpdatedBy
        last_updated_by    TYPE c LENGTH 80,
      END OF tys_text,
      "! <p class="shorttext synchronized">List of Text</p>
      tyt_text TYPE STANDARD TABLE OF tys_text WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Valuation</p>
      BEGIN OF tys_valuation,
        "! <em>Key property</em> ObjectID
        object_id                  TYPE c LENGTH 70,
        "! ParentObjectID
        parent_object_id           TYPE c LENGTH 70,
        "! CompanyID
        company_id                 TYPE c LENGTH 20,
        "! BusinessResidenceID
        business_residence_id      TYPE c LENGTH 20,
        "! LifeCycleStatusCode
        life_cycle_status_code     TYPE c LENGTH 2,
        "! LifeCycleStatusCodeText
        life_cycle_status_code_tex TYPE string,
      END OF tys_valuation,
      "! <p class="shorttext synchronized">List of Valuation</p>
      tyt_valuation TYPE STANDARD TABLE OF tys_valuation WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">WithholdingTaxClassification</p>
      BEGIN OF tys_withholding_tax_classifi_5,
        "! <em>Key property</em> ObjectID
        object_id                  TYPE c LENGTH 70,
        "! ParentObjectID
        parent_object_id           TYPE c LENGTH 70,
        "! CountryCode
        country_code               TYPE c LENGTH 3,
        "! CountryCodeText
        country_code_text          TYPE string,
        "! TaxTypeCode
        tax_type_code              TYPE c LENGTH 13,
        "! TaxTypeCodeText
        tax_type_code_text         TYPE string,
        "! WithholdingTaxIncomeTypeCode
        withholding_tax_income_typ TYPE c LENGTH 18,
        "! WithholdingTaxIncomeTypeCodeText
        withholding_tax_income_t_2 TYPE string,
      END OF tys_withholding_tax_classifi_5,
      "! <p class="shorttext synchronized">List of WithholdingTaxClassification</p>
      tyt_withholding_tax_classifi_5 TYPE STANDARD TABLE OF tys_withholding_tax_classifi_5 WITH DEFAULT KEY.


    CONSTANTS:
      "! <p class="shorttext synchronized">Internal Names of the entity sets</p>
      BEGIN OF gcs_entity_set,
        "! AttachmentFolderCategoryCodeCollection
        "! <br/> Collection of type 'CodeList'
        attachment_folder_category TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'ATTACHMENT_FOLDER_CATEGORY',
        "! AttachmentFolderCollection
        "! <br/> Collection of type 'AttachmentFolder'
        attachment_folder_collecti TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'ATTACHMENT_FOLDER_COLLECTI',
        "! AttachmentFolderTypeCodeCollection
        "! <br/> Collection of type 'CodeList'
        attachment_folder_type_cod TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'ATTACHMENT_FOLDER_TYPE_COD',
        "! AvailabilityConfirmationAvailabilityCheckScopeCodeCollection
        "! <br/> Collection of type 'CodeList'
        availability_confirmation  TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'AVAILABILITY_CONFIRMATION',
        "! AvailabilityConfirmationCollection
        "! <br/> Collection of type 'AvailabilityConfirmation'
        availability_confirmatio_2 TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'AVAILABILITY_CONFIRMATIO_2',
        "! AvailabilityConfirmationLifeCycleStatusCodeCollection
        "! <br/> Collection of type 'CodeList'
        availability_confirmatio_3 TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'AVAILABILITY_CONFIRMATIO_3',
        "! BusinessResidenceCurrentNameCollection
        "! <br/> Collection of type 'BusinessResidenceCurrentName'
        business_residence_current TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'BUSINESS_RESIDENCE_CURRENT',
        "! CompanyCurrentNameCollection
        "! <br/> Collection of type 'CompanyCurrentName'
        company_current_name_colle TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'COMPANY_CURRENT_NAME_COLLE',
        "! CustomerInformationCollection
        "! <br/> Collection of type 'CustomerInformation'
        customer_information_colle TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'CUSTOMER_INFORMATION_COLLE',
        "! DeviantTaxClassificationCollection
        "! <br/> Collection of type 'DeviantTaxClassification'
        deviant_tax_classification TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'DEVIANT_TAX_CLASSIFICATION',
        "! DeviantTaxClassificationCountryCodeCollection
        "! <br/> Collection of type 'CodeList'
        deviant_tax_classificati_2 TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'DEVIANT_TAX_CLASSIFICATI_2',
        "! DeviantTaxClassificationRegionCodeCollection
        "! <br/> Collection of type 'CodeList'
        deviant_tax_classificati_3 TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'DEVIANT_TAX_CLASSIFICATI_3',
        "! DeviantTaxClassificationTaxExemptionReasonCodeCollection
        "! <br/> Collection of type 'CodeList'
        deviant_tax_classificati_4 TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'DEVIANT_TAX_CLASSIFICATI_4',
        "! DeviantTaxClassificationTaxRateTypeCodeCollection
        "! <br/> Collection of type 'CodeList'
        deviant_tax_classificati_5 TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'DEVIANT_TAX_CLASSIFICATI_5',
        "! DeviantTaxClassificationTaxTypeCodeCollection
        "! <br/> Collection of type 'CodeList'
        deviant_tax_classificati_6 TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'DEVIANT_TAX_CLASSIFICATI_6',
        "! GlobalTradeItemNumberCollection
        "! <br/> Collection of type 'GlobalTradeItemNumber'
        global_trade_item_number_c TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'GLOBAL_TRADE_ITEM_NUMBER_C',
        "! GlobalTradeItemNumberQuantityTypeCodeCollection
        "! <br/> Collection of type 'CodeList'
        global_trade_item_number_q TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'GLOBAL_TRADE_ITEM_NUMBER_Q',
        "! IdentificationCollection
        "! <br/> Collection of type 'Identification'
        identification_collection  TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'IDENTIFICATION_COLLECTION',
        "! IdentificationProductIdentifierTypeCodeCollection
        "! <br/> Collection of type 'CodeList'
        identification_product_ide TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'IDENTIFICATION_PRODUCT_IDE',
        "! LogisticsCollection
        "! <br/> Collection of type 'Logistics'
        logistics_collection       TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'LOGISTICS_COLLECTION',
        "! LogisticsLifeCycleStatusCodeCollection
        "! <br/> Collection of type 'CodeList'
        logistics_life_cycle_statu TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'LOGISTICS_LIFE_CYCLE_STATU',
        "! LogisticsProductionGroupCollection
        "! <br/> Collection of type 'LogisticsProductionGroup'
        logistics_production_group TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'LOGISTICS_PRODUCTION_GROUP',
        "! LogisticsStorageGroupCollection
        "! <br/> Collection of type 'LogisticsStorageGroup'
        logistics_storage_group_co TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'LOGISTICS_STORAGE_GROUP_CO',
        "! MaterialBaseMeasureUnitCodeCollection
        "! <br/> Collection of type 'CodeList'
        material_base_measure_unit TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'MATERIAL_BASE_MEASURE_UNIT',
        "! MaterialCollection
        "! <br/> Collection of type 'Material'
        material_collection        TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'MATERIAL_COLLECTION',
        "! MaterialDescriptionLanguageCodeCollection
        "! <br/> Collection of type 'CodeList'
        material_description_langu TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'MATERIAL_DESCRIPTION_LANGU',
        "! MaterialIdentifiedStockTypeCodeCollection
        "! <br/> Collection of type 'CodeList'
        material_identified_stock  TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'MATERIAL_IDENTIFIED_STOCK',
        "! MaterialPlanningMeasureUnitCodeCollection
        "! <br/> Collection of type 'CodeList'
        material_planning_measure  TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'MATERIAL_PLANNING_MEASURE',
        "! MaterialSerialNumberProfileCodeCollection
        "! <br/> Collection of type 'CodeList'
        material_serial_number_pro TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'MATERIAL_SERIAL_NUMBER_PRO',
        "! MaterialValuationLevelTypeCodeCollection
        "! <br/> Collection of type 'CodeList'
        material_valuation_level_t TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'MATERIAL_VALUATION_LEVEL_T',
        "! PlanningCollection
        "! <br/> Collection of type 'Planning'
        planning_collection        TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'PLANNING_COLLECTION',
        "! PlanningDemandManagementProcedureCodeCollection
        "! <br/> Collection of type 'CodeList'
        planning_demand_management TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'PLANNING_DEMAND_MANAGEMENT',
        "! PlanningForecastGroupCollection
        "! <br/> Collection of type 'PlanningForecastGroup'
        planning_forecast_group_co TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'PLANNING_FORECAST_GROUP_CO',
        "! PlanningLifeCycleStatusCodeCollection
        "! <br/> Collection of type 'CodeList'
        planning_life_cycle_status TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'PLANNING_LIFE_CYCLE_STATUS',
        "! PlanningLotSizeRoundingQuantityUnitCodeCollection
        "! <br/> Collection of type 'CodeList'
        planning_lot_size_rounding TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'PLANNING_LOT_SIZE_ROUNDING',
        "! PlanningLotSizingMethodCodeCollection
        "! <br/> Collection of type 'CodeList'
        planning_lot_sizing_method TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'PLANNING_LOT_SIZING_METHOD',
        "! PlanningMaximumLotSizeQuantityUnitCodeCollection
        "! <br/> Collection of type 'CodeList'
        planning_maximum_lot_size  TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'PLANNING_MAXIMUM_LOT_SIZE',
        "! PlanningMinimumLotSizeQuantityUnitCodeCollection
        "! <br/> Collection of type 'CodeList'
        planning_minimum_lot_size  TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'PLANNING_MINIMUM_LOT_SIZE',
        "! PlanningPlanningProcedureCodeCollection
        "! <br/> Collection of type 'CodeList'
        planning_planning_procedur TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'PLANNING_PLANNING_PROCEDUR',
        "! PlanningProcurementTypeCodeCollection
        "! <br/> Collection of type 'CodeList'
        planning_procurement_type  TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'PLANNING_PROCUREMENT_TYPE',
        "! PlanningSafetyStockQuantityUnitCodeCollection
        "! <br/> Collection of type 'CodeList'
        planning_safety_stock_quan TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'PLANNING_SAFETY_STOCK_QUAN',
        "! ProductCategoryCollection
        "! <br/> Collection of type 'ProductCategory'
        product_category_collectio TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'PRODUCT_CATEGORY_COLLECTIO',
        "! ProductCategoryDescriptionLanguageCodeCollection
        "! <br/> Collection of type 'CodeList'
        product_category_descripti TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'PRODUCT_CATEGORY_DESCRIPTI',
        "! PurchasingCollection
        "! <br/> Collection of type 'Purchasing'
        purchasing_collection      TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'PURCHASING_COLLECTION',
        "! PurchasingLifeCycleStatusCodeCollection
        "! <br/> Collection of type 'CodeList'
        purchasing_life_cycle_stat TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'PURCHASING_LIFE_CYCLE_STAT',
        "! PurchasingPurchasingMeasureUnitCodeCollection
        "! <br/> Collection of type 'CodeList'
        purchasing_purchasing_meas TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'PURCHASING_PURCHASING_MEAS',
        "! PurchasingTextCollection
        "! <br/> Collection of type 'PurchasingText'
        purchasing_text_collection TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'PURCHASING_TEXT_COLLECTION',
        "! PurchasingTextLanguageCodeCollection
        "! <br/> Collection of type 'CodeList'
        purchasing_text_language_c TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'PURCHASING_TEXT_LANGUAGE_C',
        "! PurchasingTextTypeCodeCollection
        "! <br/> Collection of type 'CodeList'
        purchasing_text_type_code  TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'PURCHASING_TEXT_TYPE_CODE',
        "! QuantityCharacteristicCharacteristicQuantityTypeCodeCollection
        "! <br/> Collection of type 'CodeList'
        quantity_characteristic_ch TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'QUANTITY_CHARACTERISTIC_CH',
        "! QuantityCharacteristicCollection
        "! <br/> Collection of type 'QuantityCharacteristic'
        quantity_characteristic_co TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'QUANTITY_CHARACTERISTIC_CO',
        "! QuantityCharacteristicQuantityUnitCodeCollection
        "! <br/> Collection of type 'CodeList'
        quantity_characteristic_qu TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'QUANTITY_CHARACTERISTIC_QU',
        "! QuantityCharacteristicCharacteristicQuantityUnitCodeCollection
        "! <br/> Collection of type 'CodeList'
        quantity_characteristic__2 TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'QUANTITY_CHARACTERISTIC__2',
        "! QuantityConversionCollection
        "! <br/> Collection of type 'QuantityConversion'
        quantity_conversion_collec TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'QUANTITY_CONVERSION_COLLEC',
        "! QuantityConversionCorrespondingQuantityUnitCodeCollection
        "! <br/> Collection of type 'CodeList'
        quantity_conversion_corres TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'QUANTITY_CONVERSION_CORRES',
        "! QuantityConversionQuantityUnitCodeCollection
        "! <br/> Collection of type 'CodeList'
        quantity_conversion_quanti TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'QUANTITY_CONVERSION_QUANTI',
        "! SalesCollection
        "! <br/> Collection of type 'Sales'
        sales_collection           TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'SALES_COLLECTION',
        "! SalesDistributionChannelCodeCollection
        "! <br/> Collection of type 'CodeList'
        sales_distribution_channel TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'SALES_DISTRIBUTION_CHANNEL',
        "! SalesItemGroupCodeCollection
        "! <br/> Collection of type 'CodeList'
        sales_item_group_code_coll TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'SALES_ITEM_GROUP_CODE_COLL',
        "! SalesLifeCycleStatusCodeCollection
        "! <br/> Collection of type 'CodeList'
        sales_life_cycle_status_co TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'SALES_LIFE_CYCLE_STATUS_CO',
        "! SalesMinimumOrderQuantityUnitCodeCollection
        "! <br/> Collection of type 'CodeList'
        sales_minimum_order_quanti TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'SALES_MINIMUM_ORDER_QUANTI',
        "! SalesOrganisationNameByValidityCollection
        "! <br/> Collection of type 'SalesOrganisationNameByValidity'
        sales_organisation_name_by TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'SALES_ORGANISATION_NAME_BY',
        "! SalesSalesMeasureUnitCodeCollection
        "! <br/> Collection of type 'CodeList'
        sales_sales_measure_unit_c TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'SALES_SALES_MEASURE_UNIT_C',
        "! SalesTextCollection
        "! <br/> Collection of type 'SalesText'
        sales_text_collection      TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'SALES_TEXT_COLLECTION',
        "! SalesTextLanguageCodeCollection
        "! <br/> Collection of type 'CodeList'
        sales_text_language_code_c TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'SALES_TEXT_LANGUAGE_CODE_C',
        "! SalesTextTypeCodeCollection
        "! <br/> Collection of type 'CodeList'
        sales_text_type_code_colle TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'SALES_TEXT_TYPE_CODE_COLLE',
        "! SalesWarrantyCollection
        "! <br/> Collection of type 'SalesWarranty'
        sales_warranty_collection  TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'SALES_WARRANTY_COLLECTION',
        "! SalesWarrantyDistributionChannelCodeCollection
        "! <br/> Collection of type 'CodeList'
        sales_warranty_distributio TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'SALES_WARRANTY_DISTRIBUTIO',
        "! SupplierInformationCollection
        "! <br/> Collection of type 'SupplierInformation'
        supplier_information_colle TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'SUPPLIER_INFORMATION_COLLE',
        "! TextCollection
        "! <br/> Collection of type 'Text'
        text_collection            TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'TEXT_COLLECTION',
        "! TextLanguageCodeCollection
        "! <br/> Collection of type 'CodeList'
        text_language_code_collect TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'TEXT_LANGUAGE_CODE_COLLECT',
        "! TextTypeCodeCollection
        "! <br/> Collection of type 'CodeList'
        text_type_code_collection  TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'TEXT_TYPE_CODE_COLLECTION',
        "! ValuationCollection
        "! <br/> Collection of type 'Valuation'
        valuation_collection       TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'VALUATION_COLLECTION',
        "! ValuationLifeCycleStatusCodeCollection
        "! <br/> Collection of type 'CodeList'
        valuation_life_cycle_statu TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'VALUATION_LIFE_CYCLE_STATU',
        "! WithholdingTaxClassificationCollection
        "! <br/> Collection of type 'WithholdingTaxClassification'
        withholding_tax_classifica TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'WITHHOLDING_TAX_CLASSIFICA',
        "! WithholdingTaxClassificationCountryCodeCollection
        "! <br/> Collection of type 'CodeList'
        withholding_tax_classifi_2 TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'WITHHOLDING_TAX_CLASSIFI_2',
        "! WithholdingTaxClassificationTaxTypeCodeCollection
        "! <br/> Collection of type 'CodeList'
        withholding_tax_classifi_3 TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'WITHHOLDING_TAX_CLASSIFI_3',
        "! WithholdingTaxClassificationWithholdingTaxIncomeTypeCodeCollection
        "! <br/> Collection of type 'CodeList'
        withholding_tax_classifi_4 TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'WITHHOLDING_TAX_CLASSIFI_4',
      END OF gcs_entity_set .

    CONSTANTS:
      "! <p class="shorttext synchronized">Internal Names of the function imports</p>
      BEGIN OF gcs_function_import,
        "! MaterialLogisticsActivate
        "! <br/> See structure type {@link ..tys_parameters_1} for the parameters
        material_logistics_activat TYPE /iwbep/if_cp_runtime_types=>ty_operation_name VALUE 'MATERIAL_LOGISTICS_ACTIVAT',
        "! MaterialQueryByCustomer
        "! <br/> See structure type {@link ..tys_parameters_2} for the parameters
        material_query_by_customer TYPE /iwbep/if_cp_runtime_types=>ty_operation_name VALUE 'MATERIAL_QUERY_BY_CUSTOMER',
        "! MaterialQueryByGTIN
        "! <br/> See structure type {@link ..tys_parameters_3} for the parameters
        material_query_by_gtin     TYPE /iwbep/if_cp_runtime_types=>ty_operation_name VALUE 'MATERIAL_QUERY_BY_GTIN',
        "! MaterialQueryBySupplier
        "! <br/> See structure type {@link ..tys_parameters_4} for the parameters
        material_query_by_supplier TYPE /iwbep/if_cp_runtime_types=>ty_operation_name VALUE 'MATERIAL_QUERY_BY_SUPPLIER',
        "! MaterialSalesBlock
        "! <br/> See structure type {@link ..tys_parameters_5} for the parameters
        material_sales_block       TYPE /iwbep/if_cp_runtime_types=>ty_operation_name VALUE 'MATERIAL_SALES_BLOCK',
        "! MaterialSalesQueryByElements
        "! <br/> See structure type {@link ..tys_parameters_6} for the parameters
        material_sales_query_by_el TYPE /iwbep/if_cp_runtime_types=>ty_operation_name VALUE 'MATERIAL_SALES_QUERY_BY_EL',
        "! MaterialSalesUnblock
        "! <br/> See structure type {@link ..tys_parameters_7} for the parameters
        material_sales_unblock     TYPE /iwbep/if_cp_runtime_types=>ty_operation_name VALUE 'MATERIAL_SALES_UNBLOCK',
      END OF gcs_function_import.

    CONSTANTS:
      "! <p class="shorttext synchronized">Internal Names of the bound functions</p>
      BEGIN OF gcs_bound_function,
         "! Dummy field - Structure must not be empty
         dummy TYPE int1 VALUE 0,
      END OF gcs_bound_function.

    CONSTANTS:
      "! <p class="shorttext synchronized">Internal names for complex types</p>
      BEGIN OF gcs_complex_type,
         "! Dummy field - Structure must not be empty
         dummy TYPE int1 VALUE 0,
      END OF gcs_complex_type.

    CONSTANTS:
      "! <p class="shorttext synchronized">Internal names for entity types</p>
      BEGIN OF gcs_entity_type,
        "! <p class="shorttext synchronized">Internal names for AttachmentFolder</p>
        "! See also structure type {@link ..tys_attachment_folder}
        BEGIN OF attachment_folder,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF attachment_folder,
        "! <p class="shorttext synchronized">Internal names for AvailabilityConfirmation</p>
        "! See also structure type {@link ..tys_availability_confirmatio_4}
        BEGIN OF availability_confirmatio_4,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Material
            material TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'MATERIAL',
          END OF navigation,
        END OF availability_confirmatio_4,
        "! <p class="shorttext synchronized">Internal names for BusinessResidenceCurrentName</p>
        "! See also structure type {@link ..tys_business_residence_curre_2}
        BEGIN OF business_residence_curre_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF business_residence_curre_2,
        "! <p class="shorttext synchronized">Internal names for CodeList</p>
        "! See also structure type {@link ..tys_code_list}
        BEGIN OF code_list,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF code_list,
        "! <p class="shorttext synchronized">Internal names for CompanyCurrentName</p>
        "! See also structure type {@link ..tys_company_current_name}
        BEGIN OF company_current_name,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF company_current_name,
        "! <p class="shorttext synchronized">Internal names for ContextualCodeList</p>
        "! See also structure type {@link ..tys_contextual_code_list}
        BEGIN OF contextual_code_list,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF contextual_code_list,
        "! <p class="shorttext synchronized">Internal names for CustomerInformation</p>
        "! See also structure type {@link ..tys_customer_information}
        BEGIN OF customer_information,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Material
            material TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'MATERIAL',
          END OF navigation,
        END OF customer_information,
        "! <p class="shorttext synchronized">Internal names for DeviantTaxClassification</p>
        "! See also structure type {@link ..tys_deviant_tax_classificati_7}
        BEGIN OF deviant_tax_classificati_7,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Material
            material TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'MATERIAL',
          END OF navigation,
        END OF deviant_tax_classificati_7,
        "! <p class="shorttext synchronized">Internal names for GlobalTradeItemNumber</p>
        "! See also structure type {@link ..tys_global_trade_item_number}
        BEGIN OF global_trade_item_number,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Material
            material TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'MATERIAL',
          END OF navigation,
        END OF global_trade_item_number,
        "! <p class="shorttext synchronized">Internal names for Identification</p>
        "! See also structure type {@link ..tys_identification}
        BEGIN OF identification,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Material
            material TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'MATERIAL',
          END OF navigation,
        END OF identification,
        "! <p class="shorttext synchronized">Internal names for Logistics</p>
        "! See also structure type {@link ..tys_logistics}
        BEGIN OF logistics,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! LogisticsProductionGroup
            logistics_production_group TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'LOGISTICS_PRODUCTION_GROUP',
            "! LogisticsStorageGroup
            logistics_storage_group    TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'LOGISTICS_STORAGE_GROUP',
            "! Material
            material                   TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'MATERIAL',
          END OF navigation,
        END OF logistics,
        "! <p class="shorttext synchronized">Internal names for LogisticsProductionGroup</p>
        "! See also structure type {@link ..tys_logistics_production_gro_2}
        BEGIN OF logistics_production_gro_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Logistics
            logistics TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'LOGISTICS',
            "! Material
            material  TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'MATERIAL',
          END OF navigation,
        END OF logistics_production_gro_2,
        "! <p class="shorttext synchronized">Internal names for LogisticsStorageGroup</p>
        "! See also structure type {@link ..tys_logistics_storage_group}
        BEGIN OF logistics_storage_group,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Logistics
            logistics TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'LOGISTICS',
            "! Material
            material  TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'MATERIAL',
          END OF navigation,
        END OF logistics_storage_group,
        "! <p class="shorttext synchronized">Internal names for Material</p>
        "! See also structure type {@link ..tys_material}
        BEGIN OF material,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! AttachmentFolder
            attachment_folder          TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'ATTACHMENT_FOLDER',
            "! AvailabilityConfirmation
            availability_confirmation  TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'AVAILABILITY_CONFIRMATION',
            "! CustomerInformation
            customer_information       TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'CUSTOMER_INFORMATION',
            "! DeviantTaxClassification
            deviant_tax_classification TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'DEVIANT_TAX_CLASSIFICATION',
            "! GlobalTradeItemNumber
            global_trade_item_number   TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'GLOBAL_TRADE_ITEM_NUMBER',
            "! Identification
            identification             TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'IDENTIFICATION',
            "! Logistics
            logistics                  TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'LOGISTICS',
            "! Planning
            planning                   TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PLANNING',
            "! PlanningForecastGroup
            planning_forecast_group    TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PLANNING_FORECAST_GROUP',
            "! ProductCategory
            product_category           TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_CATEGORY',
            "! Purchasing
            purchasing                 TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PURCHASING',
            "! QuantityCharacteristic
            quantity_characteristic    TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'QUANTITY_CHARACTERISTIC',
            "! QuantityConversion
            quantity_conversion        TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'QUANTITY_CONVERSION',
            "! Sales
            sales                      TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'SALES',
            "! SupplierInformation
            supplier_information       TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'SUPPLIER_INFORMATION',
            "! Text
            text                       TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'TEXT',
            "! Valuation
            valuation                  TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'VALUATION',
            "! WithholdingTaxClassification
            withholding_tax_classifica TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'WITHHOLDING_TAX_CLASSIFICA',
          END OF navigation,
        END OF material,
        "! <p class="shorttext synchronized">Internal names for Planning</p>
        "! See also structure type {@link ..tys_planning}
        BEGIN OF planning,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Material
            material TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'MATERIAL',
          END OF navigation,
        END OF planning,
        "! <p class="shorttext synchronized">Internal names for PlanningForecastGroup</p>
        "! See also structure type {@link ..tys_planning_forecast_group}
        BEGIN OF planning_forecast_group,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Material
            material TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'MATERIAL',
          END OF navigation,
        END OF planning_forecast_group,
        "! <p class="shorttext synchronized">Internal names for ProductCategory</p>
        "! See also structure type {@link ..tys_product_category}
        BEGIN OF product_category,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Material
            material TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'MATERIAL',
          END OF navigation,
        END OF product_category,
        "! <p class="shorttext synchronized">Internal names for Purchasing</p>
        "! See also structure type {@link ..tys_purchasing}
        BEGIN OF purchasing,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Material
            material        TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'MATERIAL',
            "! PurchasingText
            purchasing_text TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PURCHASING_TEXT',
          END OF navigation,
        END OF purchasing,
        "! <p class="shorttext synchronized">Internal names for PurchasingText</p>
        "! See also structure type {@link ..tys_purchasing_text}
        BEGIN OF purchasing_text,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Purchasing
            purchasing TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PURCHASING',
          END OF navigation,
        END OF purchasing_text,
        "! <p class="shorttext synchronized">Internal names for QuantityCharacteristic</p>
        "! See also structure type {@link ..tys_quantity_characteristic}
        BEGIN OF quantity_characteristic,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Material
            material TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'MATERIAL',
          END OF navigation,
        END OF quantity_characteristic,
        "! <p class="shorttext synchronized">Internal names for QuantityConversion</p>
        "! See also structure type {@link ..tys_quantity_conversion}
        BEGIN OF quantity_conversion,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Material
            material TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'MATERIAL',
          END OF navigation,
        END OF quantity_conversion,
        "! <p class="shorttext synchronized">Internal names for Sales</p>
        "! See also structure type {@link ..tys_sales}
        BEGIN OF sales,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Material
            material                   TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'MATERIAL',
            "! SalesOrganisationNameByValidity
            sales_organisation_name_by TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'SALES_ORGANISATION_NAME_BY',
            "! SalesText
            sales_text                 TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'SALES_TEXT',
            "! SalesWarranty
            sales_warranty             TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'SALES_WARRANTY',
          END OF navigation,
        END OF sales,
        "! <p class="shorttext synchronized">Internal names for SalesOrganisationNameByValidity</p>
        "! See also structure type {@link ..tys_sales_organisation_name__2}
        BEGIN OF sales_organisation_name__2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF sales_organisation_name__2,
        "! <p class="shorttext synchronized">Internal names for SalesText</p>
        "! See also structure type {@link ..tys_sales_text}
        BEGIN OF sales_text,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Sales
            sales TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'SALES',
          END OF navigation,
        END OF sales_text,
        "! <p class="shorttext synchronized">Internal names for SalesWarranty</p>
        "! See also structure type {@link ..tys_sales_warranty}
        BEGIN OF sales_warranty,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Material
            material TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'MATERIAL',
            "! Sales
            sales    TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'SALES',
          END OF navigation,
        END OF sales_warranty,
        "! <p class="shorttext synchronized">Internal names for SupplierInformation</p>
        "! See also structure type {@link ..tys_supplier_information}
        BEGIN OF supplier_information,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Material
            material TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'MATERIAL',
          END OF navigation,
        END OF supplier_information,
        "! <p class="shorttext synchronized">Internal names for Text</p>
        "! See also structure type {@link ..tys_text}
        BEGIN OF text,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Material
            material TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'MATERIAL',
          END OF navigation,
        END OF text,
        "! <p class="shorttext synchronized">Internal names for Valuation</p>
        "! See also structure type {@link ..tys_valuation}
        BEGIN OF valuation,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! BusinessResidenceCurrentName
            business_residence_current TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'BUSINESS_RESIDENCE_CURRENT',
            "! CompanyCurrentName
            company_current_name       TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'COMPANY_CURRENT_NAME',
            "! Material
            material                   TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'MATERIAL',
          END OF navigation,
        END OF valuation,
        "! <p class="shorttext synchronized">Internal names for WithholdingTaxClassification</p>
        "! See also structure type {@link ..tys_withholding_tax_classifi_5}
        BEGIN OF withholding_tax_classifi_5,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Material
            material TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'MATERIAL',
          END OF navigation,
        END OF withholding_tax_classifi_5,
      END OF gcs_entity_type.


    METHODS /iwbep/if_v4_mp_basic_pm~define REDEFINITION.


  PRIVATE SECTION.

    "! <p class="shorttext synchronized">Model</p>
    DATA mo_model TYPE REF TO /iwbep/if_v4_pm_model.


    "! <p class="shorttext synchronized">Define AttachmentFolder</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_attachment_folder RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define AvailabilityConfirmation</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_availability_confirmatio_4 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define BusinessResidenceCurrentName</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_business_residence_curre_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define CodeList</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_code_list RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define CompanyCurrentName</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_company_current_name RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define ContextualCodeList</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_contextual_code_list RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define CustomerInformation</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_customer_information RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define DeviantTaxClassification</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_deviant_tax_classificati_7 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define GlobalTradeItemNumber</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_global_trade_item_number RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define Identification</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_identification RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define Logistics</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_logistics RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define LogisticsProductionGroup</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_logistics_production_gro_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define LogisticsStorageGroup</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_logistics_storage_group RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define Material</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_material RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define Planning</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_planning RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define PlanningForecastGroup</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_planning_forecast_group RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define ProductCategory</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_product_category RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define Purchasing</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_purchasing RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define PurchasingText</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_purchasing_text RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define QuantityCharacteristic</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_quantity_characteristic RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define QuantityConversion</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_quantity_conversion RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define Sales</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_sales RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define SalesOrganisationNameByValidity</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_sales_organisation_name__2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define SalesText</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_sales_text RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define SalesWarranty</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_sales_warranty RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define SupplierInformation</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_supplier_information RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define Text</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_text RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define Valuation</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_valuation RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define WithholdingTaxClassification</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_withholding_tax_classifi_5 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define MaterialLogisticsActivate</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_material_logistics_activat RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define MaterialQueryByCustomer</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_material_query_by_customer RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define MaterialQueryByGTIN</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_material_query_by_gtin RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define MaterialQueryBySupplier</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_material_query_by_supplier RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define MaterialSalesBlock</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_material_sales_block RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define MaterialSalesQueryByElements</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_material_sales_query_by_el RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define MaterialSalesUnblock</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_material_sales_unblock RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define all primitive types</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS define_primitive_types RAISING /iwbep/cx_gateway.

ENDCLASS.



CLASS Z00_MODEL_BYDMAT IMPLEMENTATION.


  METHOD /iwbep/if_v4_mp_basic_pm~define.

    mo_model = io_model.
    mo_model->set_schema_namespace( 'cust' ) ##NO_TEXT.

    def_attachment_folder( ).
    def_availability_confirmatio_4( ).
    def_business_residence_curre_2( ).
    def_code_list( ).
    def_company_current_name( ).
    def_contextual_code_list( ).
    def_customer_information( ).
    def_deviant_tax_classificati_7( ).
    def_global_trade_item_number( ).
    def_identification( ).
    def_logistics( ).
    def_logistics_production_gro_2( ).
    def_logistics_storage_group( ).
    def_material( ).
    def_planning( ).
    def_planning_forecast_group( ).
    def_product_category( ).
    def_purchasing( ).
    def_purchasing_text( ).
    def_quantity_characteristic( ).
    def_quantity_conversion( ).
    def_sales( ).
    def_sales_organisation_name__2( ).
    def_sales_text( ).
    def_sales_warranty( ).
    def_supplier_information( ).
    def_text( ).
    def_valuation( ).
    def_withholding_tax_classifi_5( ).
    def_material_logistics_activat( ).
    def_material_query_by_customer( ).
    def_material_query_by_gtin( ).
    def_material_query_by_supplier( ).
    def_material_sales_block( ).
    def_material_sales_query_by_el( ).
    def_material_sales_unblock( ).
    define_primitive_types( ).

  ENDMETHOD.


  METHOD define_primitive_types.

    DATA lo_primitive_type TYPE REF TO /iwbep/if_v4_pm_prim_type.


    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'CUSTOMER_ID'
                            iv_element             = VALUE tys_types_for_prim_types-customer_id( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'CUSTOMER_PART_NUMBER'
                            iv_element             = VALUE tys_types_for_prim_types-customer_part_number( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'DISTRIBUTION_CHANNEL_CODE'
                            iv_element             = VALUE tys_types_for_prim_types-distribution_channel_code( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'GLOBAL_TRADE_ITEM_NUMBER_I'
                            iv_element             = VALUE tys_types_for_prim_types-global_trade_item_number_i( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'ITEM_GROUP_CODE'
                            iv_element             = VALUE tys_types_for_prim_types-item_group_code( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'NUMBER_OF_ROWS'
                            iv_element             = VALUE tys_types_for_prim_types-number_of_rows( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'NUMBER_OF_ROWS_2'
                            iv_element             = VALUE tys_types_for_prim_types-number_of_rows_2( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'NUMBER_OF_ROWS_3'
                            iv_element             = VALUE tys_types_for_prim_types-number_of_rows_3( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'NUMBER_OF_ROWS_4'
                            iv_element             = VALUE tys_types_for_prim_types-number_of_rows_4( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'OBJECT_ID'
                            iv_element             = VALUE tys_types_for_prim_types-object_id( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'OBJECT_ID_2'
                            iv_element             = VALUE tys_types_for_prim_types-object_id_2( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'OBJECT_ID_3'
                            iv_element             = VALUE tys_types_for_prim_types-object_id_3( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'PRODUCT_ID'
                            iv_element             = VALUE tys_types_for_prim_types-product_id( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'SALES_ORGANISATION_ID'
                            iv_element             = VALUE tys_types_for_prim_types-sales_organisation_id( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'START_ROW'
                            iv_element             = VALUE tys_types_for_prim_types-start_row( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'START_ROW_2'
                            iv_element             = VALUE tys_types_for_prim_types-start_row_2( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'START_ROW_3'
                            iv_element             = VALUE tys_types_for_prim_types-start_row_3( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'START_ROW_4'
                            iv_element             = VALUE tys_types_for_prim_types-start_row_4( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'SUPPLIER_ID'
                            iv_element             = VALUE tys_types_for_prim_types-supplier_id( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

    lo_primitive_type = mo_model->create_primitive_type_by_elem(
                            iv_primitive_type_name = 'SUPPLIER_PART_NUMBER'
                            iv_element             = VALUE tys_types_for_prim_types-supplier_part_number( ) ).
    lo_primitive_type->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_type->set_scale_variable( ).

  ENDMETHOD.


  METHOD def_attachment_folder.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'ATTACHMENT_FOLDER'
                                    is_structure              = VALUE tys_attachment_folder( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'AttachmentFolder' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'ATTACHMENT_FOLDER_COLLECTI' ).
    lo_entity_set->set_edm_name( 'AttachmentFolderCollection' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'OBJECT_ID' ).
    lo_primitive_property->set_edm_name( 'ObjectID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 70 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PARENT_OBJECT_ID' ).
    lo_primitive_property->set_edm_name( 'ParentObjectID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 70 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'UUID' ).
    lo_primitive_property->set_edm_name( 'UUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'NAME' ).
    lo_primitive_property->set_edm_name( 'Name' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MIME_TYPE' ).
    lo_primitive_property->set_edm_name( 'MimeType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BINARY' ).
    lo_primitive_property->set_edm_name( 'Binary' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Binary' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SIZE_INK_B' ).
    lo_primitive_property->set_edm_name( 'SizeInkB' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 31 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 14 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOCUMENT_LINK' ).
    lo_primitive_property->set_edm_name( 'DocumentLink' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'OUTPUT_RELEVANCE_INDICATOR' ).
    lo_primitive_property->set_edm_name( 'OutputRelevanceIndicator' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LINK_WEB_URI' ).
    lo_primitive_property->set_edm_name( 'LinkWebURI' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TYPE_CODE' ).
    lo_primitive_property->set_edm_name( 'TypeCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TYPE_CODE_TEXT' ).
    lo_primitive_property->set_edm_name( 'TypeCodeText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CATEGORY_CODE' ).
    lo_primitive_property->set_edm_name( 'CategoryCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CATEGORY_CODE_TEXT' ).
    lo_primitive_property->set_edm_name( 'CategoryCodeText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATED_ON' ).
    lo_primitive_property->set_edm_name( 'CreatedOn' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 7 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATED_BY' ).
    lo_primitive_property->set_edm_name( 'CreatedBy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 80 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LAST_UPDATED_ON' ).
    lo_primitive_property->set_edm_name( 'LastUpdatedOn' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 7 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LAST_UPDATED_BY' ).
    lo_primitive_property->set_edm_name( 'LastUpdatedBy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 80 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TITLE' ).
    lo_primitive_property->set_edm_name( 'Title' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_availability_confirmatio_4.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'AVAILABILITY_CONFIRMATIO_4'
                                    is_structure              = VALUE tys_availability_confirmatio_4( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'AvailabilityConfirmation' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'AVAILABILITY_CONFIRMATIO_2' ).
    lo_entity_set->set_edm_name( 'AvailabilityConfirmationCollection' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'OBJECT_ID' ).
    lo_primitive_property->set_edm_name( 'ObjectID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 70 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PARENT_OBJECT_ID' ).
    lo_primitive_property->set_edm_name( 'ParentObjectID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 70 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUPPLY_PLANNING_AREA_ID' ).
    lo_primitive_property->set_edm_name( 'SupplyPlanningAreaID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUPPLY_PLANNING_AREA_DESCR' ).
    lo_primitive_property->set_edm_name( 'SupplyPlanningAreaDescription' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LIFE_CYCLE_STATUS_CODE' ).
    lo_primitive_property->set_edm_name( 'LifeCycleStatusCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LIFE_CYCLE_STATUS_CODE_TEX' ).
    lo_primitive_property->set_edm_name( 'LifeCycleStatusCodeText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'AVAILABILITY_CHECK_SCOPE_C' ).
    lo_primitive_property->set_edm_name( 'AvailabilityCheckScopeCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'AVAILABILITY_CHECK_SCOPE_2' ).
    lo_primitive_property->set_edm_name( 'AvailabilityCheckScopeCodeText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MANUAL_SOURCING_REQUIRED_I' ).
    lo_primitive_property->set_edm_name( 'ManualSourcingRequiredIndicator' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'GOODS_ISSUE_PROCESSING_DUR' ).
    lo_primitive_property->set_edm_name( 'GoodsIssueProcessingDuration' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'MATERIAL' ).
    lo_navigation_property->set_edm_name( 'Material' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'MATERIAL' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_business_residence_curre_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'BUSINESS_RESIDENCE_CURRE_2'
                                    is_structure              = VALUE tys_business_residence_curre_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'BusinessResidenceCurrentName' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'BUSINESS_RESIDENCE_CURRENT' ).
    lo_entity_set->set_edm_name( 'BusinessResidenceCurrentNameCollection' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'OBJECT_ID' ).
    lo_primitive_property->set_edm_name( 'ObjectID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 70 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'NAME' ).
    lo_primitive_property->set_edm_name( 'Name' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_code_list.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'CODE_LIST'
                                    is_structure              = VALUE tys_code_list( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'CodeList' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'ATTACHMENT_FOLDER_CATEGORY' ).
    lo_entity_set->set_edm_name( 'AttachmentFolderCategoryCodeCollection' ) ##NO_TEXT.

    lo_entity_set = lo_entity_type->create_entity_set( 'ATTACHMENT_FOLDER_TYPE_COD' ).
    lo_entity_set->set_edm_name( 'AttachmentFolderTypeCodeCollection' ) ##NO_TEXT.

    lo_entity_set = lo_entity_type->create_entity_set( 'AVAILABILITY_CONFIRMATION' ).
    lo_entity_set->set_edm_name( 'AvailabilityConfirmationAvailabilityCheckScopeCodeCollection' ) ##NO_TEXT.

    lo_entity_set = lo_entity_type->create_entity_set( 'AVAILABILITY_CONFIRMATIO_3' ).
    lo_entity_set->set_edm_name( 'AvailabilityConfirmationLifeCycleStatusCodeCollection' ) ##NO_TEXT.

    lo_entity_set = lo_entity_type->create_entity_set( 'DEVIANT_TAX_CLASSIFICATI_2' ).
    lo_entity_set->set_edm_name( 'DeviantTaxClassificationCountryCodeCollection' ) ##NO_TEXT.

    lo_entity_set = lo_entity_type->create_entity_set( 'DEVIANT_TAX_CLASSIFICATI_3' ).
    lo_entity_set->set_edm_name( 'DeviantTaxClassificationRegionCodeCollection' ) ##NO_TEXT.

    lo_entity_set = lo_entity_type->create_entity_set( 'DEVIANT_TAX_CLASSIFICATI_4' ).
    lo_entity_set->set_edm_name( 'DeviantTaxClassificationTaxExemptionReasonCodeCollection' ) ##NO_TEXT.

    lo_entity_set = lo_entity_type->create_entity_set( 'DEVIANT_TAX_CLASSIFICATI_5' ).
    lo_entity_set->set_edm_name( 'DeviantTaxClassificationTaxRateTypeCodeCollection' ) ##NO_TEXT.

    lo_entity_set = lo_entity_type->create_entity_set( 'DEVIANT_TAX_CLASSIFICATI_6' ).
    lo_entity_set->set_edm_name( 'DeviantTaxClassificationTaxTypeCodeCollection' ) ##NO_TEXT.

    lo_entity_set = lo_entity_type->create_entity_set( 'GLOBAL_TRADE_ITEM_NUMBER_Q' ).
    lo_entity_set->set_edm_name( 'GlobalTradeItemNumberQuantityTypeCodeCollection' ) ##NO_TEXT.

    lo_entity_set = lo_entity_type->create_entity_set( 'IDENTIFICATION_PRODUCT_IDE' ).
    lo_entity_set->set_edm_name( 'IdentificationProductIdentifierTypeCodeCollection' ) ##NO_TEXT.

    lo_entity_set = lo_entity_type->create_entity_set( 'LOGISTICS_LIFE_CYCLE_STATU' ).
    lo_entity_set->set_edm_name( 'LogisticsLifeCycleStatusCodeCollection' ) ##NO_TEXT.

    lo_entity_set = lo_entity_type->create_entity_set( 'MATERIAL_BASE_MEASURE_UNIT' ).
    lo_entity_set->set_edm_name( 'MaterialBaseMeasureUnitCodeCollection' ) ##NO_TEXT.

    lo_entity_set = lo_entity_type->create_entity_set( 'MATERIAL_DESCRIPTION_LANGU' ).
    lo_entity_set->set_edm_name( 'MaterialDescriptionLanguageCodeCollection' ) ##NO_TEXT.

    lo_entity_set = lo_entity_type->create_entity_set( 'MATERIAL_IDENTIFIED_STOCK' ).
    lo_entity_set->set_edm_name( 'MaterialIdentifiedStockTypeCodeCollection' ) ##NO_TEXT.

    lo_entity_set = lo_entity_type->create_entity_set( 'MATERIAL_PLANNING_MEASURE' ).
    lo_entity_set->set_edm_name( 'MaterialPlanningMeasureUnitCodeCollection' ) ##NO_TEXT.

    lo_entity_set = lo_entity_type->create_entity_set( 'MATERIAL_SERIAL_NUMBER_PRO' ).
    lo_entity_set->set_edm_name( 'MaterialSerialNumberProfileCodeCollection' ) ##NO_TEXT.

    lo_entity_set = lo_entity_type->create_entity_set( 'MATERIAL_VALUATION_LEVEL_T' ).
    lo_entity_set->set_edm_name( 'MaterialValuationLevelTypeCodeCollection' ) ##NO_TEXT.

    lo_entity_set = lo_entity_type->create_entity_set( 'PLANNING_DEMAND_MANAGEMENT' ).
    lo_entity_set->set_edm_name( 'PlanningDemandManagementProcedureCodeCollection' ) ##NO_TEXT.

    lo_entity_set = lo_entity_type->create_entity_set( 'PLANNING_LIFE_CYCLE_STATUS' ).
    lo_entity_set->set_edm_name( 'PlanningLifeCycleStatusCodeCollection' ) ##NO_TEXT.

    lo_entity_set = lo_entity_type->create_entity_set( 'PLANNING_LOT_SIZE_ROUNDING' ).
    lo_entity_set->set_edm_name( 'PlanningLotSizeRoundingQuantityUnitCodeCollection' ) ##NO_TEXT.

    lo_entity_set = lo_entity_type->create_entity_set( 'PLANNING_LOT_SIZING_METHOD' ).
    lo_entity_set->set_edm_name( 'PlanningLotSizingMethodCodeCollection' ) ##NO_TEXT.

    lo_entity_set = lo_entity_type->create_entity_set( 'PLANNING_MAXIMUM_LOT_SIZE' ).
    lo_entity_set->set_edm_name( 'PlanningMaximumLotSizeQuantityUnitCodeCollection' ) ##NO_TEXT.

    lo_entity_set = lo_entity_type->create_entity_set( 'PLANNING_MINIMUM_LOT_SIZE' ).
    lo_entity_set->set_edm_name( 'PlanningMinimumLotSizeQuantityUnitCodeCollection' ) ##NO_TEXT.

    lo_entity_set = lo_entity_type->create_entity_set( 'PLANNING_PLANNING_PROCEDUR' ).
    lo_entity_set->set_edm_name( 'PlanningPlanningProcedureCodeCollection' ) ##NO_TEXT.

    lo_entity_set = lo_entity_type->create_entity_set( 'PLANNING_PROCUREMENT_TYPE' ).
    lo_entity_set->set_edm_name( 'PlanningProcurementTypeCodeCollection' ) ##NO_TEXT.

    lo_entity_set = lo_entity_type->create_entity_set( 'PLANNING_SAFETY_STOCK_QUAN' ).
    lo_entity_set->set_edm_name( 'PlanningSafetyStockQuantityUnitCodeCollection' ) ##NO_TEXT.

    lo_entity_set = lo_entity_type->create_entity_set( 'PRODUCT_CATEGORY_DESCRIPTI' ).
    lo_entity_set->set_edm_name( 'ProductCategoryDescriptionLanguageCodeCollection' ) ##NO_TEXT.

    lo_entity_set = lo_entity_type->create_entity_set( 'PURCHASING_LIFE_CYCLE_STAT' ).
    lo_entity_set->set_edm_name( 'PurchasingLifeCycleStatusCodeCollection' ) ##NO_TEXT.

    lo_entity_set = lo_entity_type->create_entity_set( 'PURCHASING_PURCHASING_MEAS' ).
    lo_entity_set->set_edm_name( 'PurchasingPurchasingMeasureUnitCodeCollection' ) ##NO_TEXT.

    lo_entity_set = lo_entity_type->create_entity_set( 'PURCHASING_TEXT_LANGUAGE_C' ).
    lo_entity_set->set_edm_name( 'PurchasingTextLanguageCodeCollection' ) ##NO_TEXT.

    lo_entity_set = lo_entity_type->create_entity_set( 'PURCHASING_TEXT_TYPE_CODE' ).
    lo_entity_set->set_edm_name( 'PurchasingTextTypeCodeCollection' ) ##NO_TEXT.

    lo_entity_set = lo_entity_type->create_entity_set( 'QUANTITY_CHARACTERISTIC_CH' ).
    lo_entity_set->set_edm_name( 'QuantityCharacteristicCharacteristicQuantityTypeCodeCollection' ) ##NO_TEXT.

    lo_entity_set = lo_entity_type->create_entity_set( 'QUANTITY_CHARACTERISTIC_QU' ).
    lo_entity_set->set_edm_name( 'QuantityCharacteristicQuantityUnitCodeCollection' ) ##NO_TEXT.

    lo_entity_set = lo_entity_type->create_entity_set( 'QUANTITY_CHARACTERISTIC__2' ).
    lo_entity_set->set_edm_name( 'QuantityCharacteristicCharacteristicQuantityUnitCodeCollection' ) ##NO_TEXT.

    lo_entity_set = lo_entity_type->create_entity_set( 'QUANTITY_CONVERSION_CORRES' ).
    lo_entity_set->set_edm_name( 'QuantityConversionCorrespondingQuantityUnitCodeCollection' ) ##NO_TEXT.

    lo_entity_set = lo_entity_type->create_entity_set( 'QUANTITY_CONVERSION_QUANTI' ).
    lo_entity_set->set_edm_name( 'QuantityConversionQuantityUnitCodeCollection' ) ##NO_TEXT.

    lo_entity_set = lo_entity_type->create_entity_set( 'SALES_DISTRIBUTION_CHANNEL' ).
    lo_entity_set->set_edm_name( 'SalesDistributionChannelCodeCollection' ) ##NO_TEXT.

    lo_entity_set = lo_entity_type->create_entity_set( 'SALES_ITEM_GROUP_CODE_COLL' ).
    lo_entity_set->set_edm_name( 'SalesItemGroupCodeCollection' ) ##NO_TEXT.

    lo_entity_set = lo_entity_type->create_entity_set( 'SALES_LIFE_CYCLE_STATUS_CO' ).
    lo_entity_set->set_edm_name( 'SalesLifeCycleStatusCodeCollection' ) ##NO_TEXT.

    lo_entity_set = lo_entity_type->create_entity_set( 'SALES_MINIMUM_ORDER_QUANTI' ).
    lo_entity_set->set_edm_name( 'SalesMinimumOrderQuantityUnitCodeCollection' ) ##NO_TEXT.

    lo_entity_set = lo_entity_type->create_entity_set( 'SALES_SALES_MEASURE_UNIT_C' ).
    lo_entity_set->set_edm_name( 'SalesSalesMeasureUnitCodeCollection' ) ##NO_TEXT.

    lo_entity_set = lo_entity_type->create_entity_set( 'SALES_TEXT_LANGUAGE_CODE_C' ).
    lo_entity_set->set_edm_name( 'SalesTextLanguageCodeCollection' ) ##NO_TEXT.

    lo_entity_set = lo_entity_type->create_entity_set( 'SALES_TEXT_TYPE_CODE_COLLE' ).
    lo_entity_set->set_edm_name( 'SalesTextTypeCodeCollection' ) ##NO_TEXT.

    lo_entity_set = lo_entity_type->create_entity_set( 'SALES_WARRANTY_DISTRIBUTIO' ).
    lo_entity_set->set_edm_name( 'SalesWarrantyDistributionChannelCodeCollection' ) ##NO_TEXT.

    lo_entity_set = lo_entity_type->create_entity_set( 'TEXT_LANGUAGE_CODE_COLLECT' ).
    lo_entity_set->set_edm_name( 'TextLanguageCodeCollection' ) ##NO_TEXT.

    lo_entity_set = lo_entity_type->create_entity_set( 'TEXT_TYPE_CODE_COLLECTION' ).
    lo_entity_set->set_edm_name( 'TextTypeCodeCollection' ) ##NO_TEXT.

    lo_entity_set = lo_entity_type->create_entity_set( 'VALUATION_LIFE_CYCLE_STATU' ).
    lo_entity_set->set_edm_name( 'ValuationLifeCycleStatusCodeCollection' ) ##NO_TEXT.

    lo_entity_set = lo_entity_type->create_entity_set( 'WITHHOLDING_TAX_CLASSIFI_2' ).
    lo_entity_set->set_edm_name( 'WithholdingTaxClassificationCountryCodeCollection' ) ##NO_TEXT.

    lo_entity_set = lo_entity_type->create_entity_set( 'WITHHOLDING_TAX_CLASSIFI_3' ).
    lo_entity_set->set_edm_name( 'WithholdingTaxClassificationTaxTypeCodeCollection' ) ##NO_TEXT.

    lo_entity_set = lo_entity_type->create_entity_set( 'WITHHOLDING_TAX_CLASSIFI_4' ).
    lo_entity_set->set_edm_name( 'WithholdingTaxClassificationWithholdingTaxIncomeTypeCodeCollection' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'CODE' ).
    lo_primitive_property->set_edm_name( 'Code' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DESCRIPTION' ).
    lo_primitive_property->set_edm_name( 'Description' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.

  ENDMETHOD.


  METHOD def_company_current_name.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'COMPANY_CURRENT_NAME'
                                    is_structure              = VALUE tys_company_current_name( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'CompanyCurrentName' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'COMPANY_CURRENT_NAME_COLLE' ).
    lo_entity_set->set_edm_name( 'CompanyCurrentNameCollection' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'OBJECT_ID' ).
    lo_primitive_property->set_edm_name( 'ObjectID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 70 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'NAME' ).
    lo_primitive_property->set_edm_name( 'Name' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

  ENDMETHOD.


  METHOD def_contextual_code_list.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'CONTEXTUAL_CODE_LIST'
                                    is_structure              = VALUE tys_contextual_code_list( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'ContextualCodeList' ) ##NO_TEXT.



    lo_primitive_property = lo_entity_type->get_primitive_property( 'CODE' ).
    lo_primitive_property->set_edm_name( 'Code' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONTEXT' ).
    lo_primitive_property->set_edm_name( 'Context' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DESCRIPTION' ).
    lo_primitive_property->set_edm_name( 'Description' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.

  ENDMETHOD.


  METHOD def_customer_information.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'CUSTOMER_INFORMATION'
                                    is_structure              = VALUE tys_customer_information( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'CustomerInformation' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'CUSTOMER_INFORMATION_COLLE' ).
    lo_entity_set->set_edm_name( 'CustomerInformationCollection' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'OBJECT_ID' ).
    lo_primitive_property->set_edm_name( 'ObjectID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 70 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PARENT_OBJECT_ID' ).
    lo_primitive_property->set_edm_name( 'ParentObjectID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 70 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_ID' ).
    lo_primitive_property->set_edm_name( 'CustomerID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CUSTOMER_PART_NUMBER' ).
    lo_primitive_property->set_edm_name( 'CustomerPartNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER_FORMATTED' ).
    lo_primitive_property->set_edm_name( 'BusinessPartnerFormattedName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 80 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'MATERIAL' ).
    lo_navigation_property->set_edm_name( 'Material' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'MATERIAL' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_deviant_tax_classificati_7.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'DEVIANT_TAX_CLASSIFICATI_7'
                                    is_structure              = VALUE tys_deviant_tax_classificati_7( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'DeviantTaxClassification' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'DEVIANT_TAX_CLASSIFICATION' ).
    lo_entity_set->set_edm_name( 'DeviantTaxClassificationCollection' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'OBJECT_ID' ).
    lo_primitive_property->set_edm_name( 'ObjectID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 70 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PARENT_OBJECT_ID' ).
    lo_primitive_property->set_edm_name( 'ParentObjectID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 70 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COUNTRY_CODE' ).
    lo_primitive_property->set_edm_name( 'CountryCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COUNTRY_CODE_TEXT' ).
    lo_primitive_property->set_edm_name( 'CountryCodeText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REGION_CODE' ).
    lo_primitive_property->set_edm_name( 'RegionCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REGION_CODE_TEXT' ).
    lo_primitive_property->set_edm_name( 'RegionCodeText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TAX_TYPE_CODE' ).
    lo_primitive_property->set_edm_name( 'TaxTypeCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TAX_TYPE_CODE_TEXT' ).
    lo_primitive_property->set_edm_name( 'TaxTypeCodeText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TAX_RATE_TYPE_CODE' ).
    lo_primitive_property->set_edm_name( 'TaxRateTypeCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TAX_RATE_TYPE_CODE_TEXT' ).
    lo_primitive_property->set_edm_name( 'TaxRateTypeCodeText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TAX_EXEMPTION_REASON_CODE' ).
    lo_primitive_property->set_edm_name( 'TaxExemptionReasonCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TAX_EXEMPTION_REASON_COD_2' ).
    lo_primitive_property->set_edm_name( 'TaxExemptionReasonCodeText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'MATERIAL' ).
    lo_navigation_property->set_edm_name( 'Material' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'MATERIAL' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_global_trade_item_number.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'GLOBAL_TRADE_ITEM_NUMBER'
                                    is_structure              = VALUE tys_global_trade_item_number( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'GlobalTradeItemNumber' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'GLOBAL_TRADE_ITEM_NUMBER_C' ).
    lo_entity_set->set_edm_name( 'GlobalTradeItemNumberCollection' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'OBJECT_ID' ).
    lo_primitive_property->set_edm_name( 'ObjectID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 70 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PARENT_OBJECT_ID' ).
    lo_primitive_property->set_edm_name( 'ParentObjectID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 70 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ID' ).
    lo_primitive_property->set_edm_name( 'ID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 14 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'QUANTITY_TYPE_CODE' ).
    lo_primitive_property->set_edm_name( 'QuantityTypeCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'QUANTITY_TYPE_CODE_TEXT' ).
    lo_primitive_property->set_edm_name( 'QuantityTypeCodeText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'MATERIAL' ).
    lo_navigation_property->set_edm_name( 'Material' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'MATERIAL' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_identification.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'IDENTIFICATION'
                                    is_structure              = VALUE tys_identification( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'Identification' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'IDENTIFICATION_COLLECTION' ).
    lo_entity_set->set_edm_name( 'IdentificationCollection' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'OBJECT_ID' ).
    lo_primitive_property->set_edm_name( 'ObjectID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 70 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PARENT_OBJECT_ID' ).
    lo_primitive_property->set_edm_name( 'ParentObjectID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 70 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_ID' ).
    lo_primitive_property->set_edm_name( 'ProductID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_IDENTIFIER_TYPE_CO' ).
    lo_primitive_property->set_edm_name( 'ProductIdentifierTypeCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_IDENTIFIER_TYPE__2' ).
    lo_primitive_property->set_edm_name( 'ProductIdentifierTypeCodeText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'MATERIAL' ).
    lo_navigation_property->set_edm_name( 'Material' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'MATERIAL' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_logistics.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'LOGISTICS'
                                    is_structure              = VALUE tys_logistics( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'Logistics' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'LOGISTICS_COLLECTION' ).
    lo_entity_set->set_edm_name( 'LogisticsCollection' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'OBJECT_ID' ).
    lo_primitive_property->set_edm_name( 'ObjectID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 70 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PARENT_OBJECT_ID' ).
    lo_primitive_property->set_edm_name( 'ParentObjectID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 70 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SITE_ID' ).
    lo_primitive_property->set_edm_name( 'SiteID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SITE_UUID' ).
    lo_primitive_property->set_edm_name( 'SiteUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LIFE_CYCLE_STATUS_CODE' ).
    lo_primitive_property->set_edm_name( 'LifeCycleStatusCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LIFE_CYCLE_STATUS_CODE_TEX' ).
    lo_primitive_property->set_edm_name( 'LifeCycleStatusCodeText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SITE_NAME' ).
    lo_primitive_property->set_edm_name( 'SiteName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CYCLE_COUNT_PLANNED_DURATI' ).
    lo_primitive_property->set_edm_name( 'CycleCountPlannedDuration' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'LOGISTICS_PRODUCTION_GROUP' ).
    lo_navigation_property->set_edm_name( 'LogisticsProductionGroup' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'LOGISTICS_PRODUCTION_GRO_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'LOGISTICS_STORAGE_GROUP' ).
    lo_navigation_property->set_edm_name( 'LogisticsStorageGroup' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'LOGISTICS_STORAGE_GROUP' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'MATERIAL' ).
    lo_navigation_property->set_edm_name( 'Material' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'MATERIAL' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_logistics_production_gro_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'LOGISTICS_PRODUCTION_GRO_2'
                                    is_structure              = VALUE tys_logistics_production_gro_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'LogisticsProductionGroup' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'LOGISTICS_PRODUCTION_GROUP' ).
    lo_entity_set->set_edm_name( 'LogisticsProductionGroupCollection' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'OBJECT_ID' ).
    lo_primitive_property->set_edm_name( 'ObjectID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 70 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PARENT_OBJECT_ID' ).
    lo_primitive_property->set_edm_name( 'ParentObjectID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 70 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_CATEGORY_INTERNAL' ).
    lo_primitive_property->set_edm_name( 'ProductCategoryInternalID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_CATEGORY_DESCRIPTI' ).
    lo_primitive_property->set_edm_name( 'ProductCategoryDescription' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 80 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'LOGISTICS' ).
    lo_navigation_property->set_edm_name( 'Logistics' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'LOGISTICS' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'MATERIAL' ).
    lo_navigation_property->set_edm_name( 'Material' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'MATERIAL' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_logistics_storage_group.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'LOGISTICS_STORAGE_GROUP'
                                    is_structure              = VALUE tys_logistics_storage_group( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'LogisticsStorageGroup' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'LOGISTICS_STORAGE_GROUP_CO' ).
    lo_entity_set->set_edm_name( 'LogisticsStorageGroupCollection' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'OBJECT_ID' ).
    lo_primitive_property->set_edm_name( 'ObjectID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 70 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PARENT_OBJECT_ID' ).
    lo_primitive_property->set_edm_name( 'ParentObjectID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 70 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_CATEGORY_INTERNAL' ).
    lo_primitive_property->set_edm_name( 'ProductCategoryInternalID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_CATEGORY_DESCRIPTI' ).
    lo_primitive_property->set_edm_name( 'ProductCategoryDescription' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 80 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'LOGISTICS' ).
    lo_navigation_property->set_edm_name( 'Logistics' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'LOGISTICS' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'MATERIAL' ).
    lo_navigation_property->set_edm_name( 'Material' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'MATERIAL' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_material.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'MATERIAL'
                                    is_structure              = VALUE tys_material( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'Material' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'MATERIAL_COLLECTION' ).
    lo_entity_set->set_edm_name( 'MaterialCollection' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'OBJECT_ID' ).
    lo_primitive_property->set_edm_name( 'ObjectID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 70 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'UUID' ).
    lo_primitive_property->set_edm_name( 'UUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INTERNAL_ID' ).
    lo_primitive_property->set_edm_name( 'InternalID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DESCRIPTION' ).
    lo_primitive_property->set_edm_name( 'Description' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DESCRIPTION_LANGUAGE_CODE' ).
    lo_primitive_property->set_edm_name( 'DescriptionLanguageCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DESCRIPTION_LANGUAGE_COD_2' ).
    lo_primitive_property->set_edm_name( 'DescriptionLanguageCodeText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BASE_MEASURE_UNIT_CODE' ).
    lo_primitive_property->set_edm_name( 'BaseMeasureUnitCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BASE_MEASURE_UNIT_CODE_TEX' ).
    lo_primitive_property->set_edm_name( 'BaseMeasureUnitCodeText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IDENTIFIED_STOCK_TYPE_CODE' ).
    lo_primitive_property->set_edm_name( 'IdentifiedStockTypeCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IDENTIFIED_STOCK_TYPE_CO_2' ).
    lo_primitive_property->set_edm_name( 'IdentifiedStockTypeCodeText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SERIAL_NUMBER_PROFILE_CODE' ).
    lo_primitive_property->set_edm_name( 'SerialNumberProfileCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 14 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SERIAL_NUMBER_PROFILE_CO_2' ).
    lo_primitive_property->set_edm_name( 'SerialNumberProfileCodeText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATION_DATE_TIME' ).
    lo_primitive_property->set_edm_name( 'CreationDateTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 7 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LAST_CHANGE_DATE_TIME' ).
    lo_primitive_property->set_edm_name( 'LastChangeDateTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 7 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANNING_MEASURE_UNIT_CODE' ).
    lo_primitive_property->set_edm_name( 'PlanningMeasureUnitCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANNING_MEASURE_UNIT_CO_2' ).
    lo_primitive_property->set_edm_name( 'PlanningMeasureUnitCodeText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALUATION_LEVEL_TYPE_CODE' ).
    lo_primitive_property->set_edm_name( 'ValuationLevelTypeCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALUATION_LEVEL_TYPE_COD_2' ).
    lo_primitive_property->set_edm_name( 'ValuationLevelTypeCodeText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'ATTACHMENT_FOLDER' ).
    lo_navigation_property->set_edm_name( 'AttachmentFolder' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'ATTACHMENT_FOLDER' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'AVAILABILITY_CONFIRMATION' ).
    lo_navigation_property->set_edm_name( 'AvailabilityConfirmation' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'AVAILABILITY_CONFIRMATIO_4' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'CUSTOMER_INFORMATION' ).
    lo_navigation_property->set_edm_name( 'CustomerInformation' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'CUSTOMER_INFORMATION' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'DEVIANT_TAX_CLASSIFICATION' ).
    lo_navigation_property->set_edm_name( 'DeviantTaxClassification' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'DEVIANT_TAX_CLASSIFICATI_7' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'GLOBAL_TRADE_ITEM_NUMBER' ).
    lo_navigation_property->set_edm_name( 'GlobalTradeItemNumber' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'GLOBAL_TRADE_ITEM_NUMBER' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'IDENTIFICATION' ).
    lo_navigation_property->set_edm_name( 'Identification' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'IDENTIFICATION' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'LOGISTICS' ).
    lo_navigation_property->set_edm_name( 'Logistics' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'LOGISTICS' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PLANNING' ).
    lo_navigation_property->set_edm_name( 'Planning' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PLANNING' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PLANNING_FORECAST_GROUP' ).
    lo_navigation_property->set_edm_name( 'PlanningForecastGroup' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PLANNING_FORECAST_GROUP' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_CATEGORY' ).
    lo_navigation_property->set_edm_name( 'ProductCategory' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_CATEGORY' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PURCHASING' ).
    lo_navigation_property->set_edm_name( 'Purchasing' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PURCHASING' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'QUANTITY_CHARACTERISTIC' ).
    lo_navigation_property->set_edm_name( 'QuantityCharacteristic' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'QUANTITY_CHARACTERISTIC' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'QUANTITY_CONVERSION' ).
    lo_navigation_property->set_edm_name( 'QuantityConversion' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'QUANTITY_CONVERSION' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'SALES' ).
    lo_navigation_property->set_edm_name( 'Sales' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'SALES' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'SUPPLIER_INFORMATION' ).
    lo_navigation_property->set_edm_name( 'SupplierInformation' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'SUPPLIER_INFORMATION' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'TEXT' ).
    lo_navigation_property->set_edm_name( 'Text' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'TEXT' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'VALUATION' ).
    lo_navigation_property->set_edm_name( 'Valuation' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'VALUATION' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'WITHHOLDING_TAX_CLASSIFICA' ).
    lo_navigation_property->set_edm_name( 'WithholdingTaxClassification' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'WITHHOLDING_TAX_CLASSIFI_5' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

  ENDMETHOD.


  METHOD def_material_logistics_activat.

    DATA:
      lo_function        TYPE REF TO /iwbep/if_v4_pm_function,
      lo_function_import TYPE REF TO /iwbep/if_v4_pm_func_imp,
      lo_parameter       TYPE REF TO /iwbep/if_v4_pm_func_param,
      lo_return          TYPE REF TO /iwbep/if_v4_pm_func_return.


    lo_function = mo_model->create_function( 'MATERIAL_LOGISTICS_ACTIVAT' ).
    lo_function->set_edm_name( 'MaterialLogisticsActivate' ) ##NO_TEXT.

    lo_function_import = lo_function->create_function_import( 'MATERIAL_LOGISTICS_ACTIVAT' ).
    lo_function_import->set_edm_name( 'MaterialLogisticsActivate' ) ##NO_TEXT.


    lo_parameter = lo_function->create_parameter( 'OBJECT_ID' ).
    lo_parameter->set_edm_name( 'ObjectID' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'OBJECT_ID' ).
    lo_parameter->set_is_nullable( ).

    lo_return = lo_function->create_return( ).
    lo_return->set_entity_type( 'LOGISTICS' ).

  ENDMETHOD.


  METHOD def_material_query_by_customer.

    DATA:
      lo_function        TYPE REF TO /iwbep/if_v4_pm_function,
      lo_function_import TYPE REF TO /iwbep/if_v4_pm_func_imp,
      lo_parameter       TYPE REF TO /iwbep/if_v4_pm_func_param,
      lo_return          TYPE REF TO /iwbep/if_v4_pm_func_return.


    lo_function = mo_model->create_function( 'MATERIAL_QUERY_BY_CUSTOMER' ).
    lo_function->set_edm_name( 'MaterialQueryByCustomer' ) ##NO_TEXT.

    lo_function_import = lo_function->create_function_import( 'MATERIAL_QUERY_BY_CUSTOMER' ).
    lo_function_import->set_edm_name( 'MaterialQueryByCustomer' ) ##NO_TEXT.


    lo_parameter = lo_function->create_parameter( 'NUMBER_OF_ROWS' ).
    lo_parameter->set_edm_name( 'NumberOfRows' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'NUMBER_OF_ROWS' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'START_ROW' ).
    lo_parameter->set_edm_name( 'StartRow' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'START_ROW' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'CUSTOMER_ID' ).
    lo_parameter->set_edm_name( 'CustomerID' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'CUSTOMER_ID' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'CUSTOMER_PART_NUMBER' ).
    lo_parameter->set_edm_name( 'CustomerPartNumber' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'CUSTOMER_PART_NUMBER' ).
    lo_parameter->set_is_nullable( ).

    lo_return = lo_function->create_return( ).
    lo_return->set_entity_type( 'MATERIAL' ).
    lo_return->set_is_collection( ).

  ENDMETHOD.


  METHOD def_material_query_by_gtin.

    DATA:
      lo_function        TYPE REF TO /iwbep/if_v4_pm_function,
      lo_function_import TYPE REF TO /iwbep/if_v4_pm_func_imp,
      lo_parameter       TYPE REF TO /iwbep/if_v4_pm_func_param,
      lo_return          TYPE REF TO /iwbep/if_v4_pm_func_return.


    lo_function = mo_model->create_function( 'MATERIAL_QUERY_BY_GTIN' ).
    lo_function->set_edm_name( 'MaterialQueryByGTIN' ) ##NO_TEXT.

    lo_function_import = lo_function->create_function_import( 'MATERIAL_QUERY_BY_GTIN' ).
    lo_function_import->set_edm_name( 'MaterialQueryByGTIN' ) ##NO_TEXT.


    lo_parameter = lo_function->create_parameter( 'NUMBER_OF_ROWS' ).
    lo_parameter->set_edm_name( 'NumberOfRows' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'NUMBER_OF_ROWS_3' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'START_ROW' ).
    lo_parameter->set_edm_name( 'StartRow' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'START_ROW_3' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'GLOBAL_TRADE_ITEM_NUMBER_I' ).
    lo_parameter->set_edm_name( 'GlobalTradeItemNumberID' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'GLOBAL_TRADE_ITEM_NUMBER_I' ).
    lo_parameter->set_is_nullable( ).

    lo_return = lo_function->create_return( ).
    lo_return->set_entity_type( 'MATERIAL' ).
    lo_return->set_is_collection( ).

  ENDMETHOD.


  METHOD def_material_query_by_supplier.

    DATA:
      lo_function        TYPE REF TO /iwbep/if_v4_pm_function,
      lo_function_import TYPE REF TO /iwbep/if_v4_pm_func_imp,
      lo_parameter       TYPE REF TO /iwbep/if_v4_pm_func_param,
      lo_return          TYPE REF TO /iwbep/if_v4_pm_func_return.


    lo_function = mo_model->create_function( 'MATERIAL_QUERY_BY_SUPPLIER' ).
    lo_function->set_edm_name( 'MaterialQueryBySupplier' ) ##NO_TEXT.

    lo_function_import = lo_function->create_function_import( 'MATERIAL_QUERY_BY_SUPPLIER' ).
    lo_function_import->set_edm_name( 'MaterialQueryBySupplier' ) ##NO_TEXT.


    lo_parameter = lo_function->create_parameter( 'NUMBER_OF_ROWS' ).
    lo_parameter->set_edm_name( 'NumberOfRows' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'NUMBER_OF_ROWS_2' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'START_ROW' ).
    lo_parameter->set_edm_name( 'StartRow' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'START_ROW_2' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'SUPPLIER_PART_NUMBER' ).
    lo_parameter->set_edm_name( 'SupplierPartNumber' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'SUPPLIER_PART_NUMBER' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'SUPPLIER_ID' ).
    lo_parameter->set_edm_name( 'SupplierID' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'SUPPLIER_ID' ).
    lo_parameter->set_is_nullable( ).

    lo_return = lo_function->create_return( ).
    lo_return->set_entity_type( 'MATERIAL' ).
    lo_return->set_is_collection( ).

  ENDMETHOD.


  METHOD def_material_sales_block.

    DATA:
      lo_function        TYPE REF TO /iwbep/if_v4_pm_function,
      lo_function_import TYPE REF TO /iwbep/if_v4_pm_func_imp,
      lo_parameter       TYPE REF TO /iwbep/if_v4_pm_func_param,
      lo_return          TYPE REF TO /iwbep/if_v4_pm_func_return.


    lo_function = mo_model->create_function( 'MATERIAL_SALES_BLOCK' ).
    lo_function->set_edm_name( 'MaterialSalesBlock' ) ##NO_TEXT.

    lo_function_import = lo_function->create_function_import( 'MATERIAL_SALES_BLOCK' ).
    lo_function_import->set_edm_name( 'MaterialSalesBlock' ) ##NO_TEXT.


    lo_parameter = lo_function->create_parameter( 'OBJECT_ID' ).
    lo_parameter->set_edm_name( 'ObjectID' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'OBJECT_ID_2' ).
    lo_parameter->set_is_nullable( ).

    lo_return = lo_function->create_return( ).
    lo_return->set_entity_type( 'SALES' ).

  ENDMETHOD.


  METHOD def_material_sales_query_by_el.

    DATA:
      lo_function        TYPE REF TO /iwbep/if_v4_pm_function,
      lo_function_import TYPE REF TO /iwbep/if_v4_pm_func_imp,
      lo_parameter       TYPE REF TO /iwbep/if_v4_pm_func_param,
      lo_return          TYPE REF TO /iwbep/if_v4_pm_func_return.


    lo_function = mo_model->create_function( 'MATERIAL_SALES_QUERY_BY_EL' ).
    lo_function->set_edm_name( 'MaterialSalesQueryByElements' ) ##NO_TEXT.

    lo_function_import = lo_function->create_function_import( 'MATERIAL_SALES_QUERY_BY_EL' ).
    lo_function_import->set_edm_name( 'MaterialSalesQueryByElements' ) ##NO_TEXT.


    lo_parameter = lo_function->create_parameter( 'NUMBER_OF_ROWS' ).
    lo_parameter->set_edm_name( 'NumberOfRows' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'NUMBER_OF_ROWS_4' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'START_ROW' ).
    lo_parameter->set_edm_name( 'StartRow' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'START_ROW_4' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'DISTRIBUTION_CHANNEL_CODE' ).
    lo_parameter->set_edm_name( 'DistributionChannelCode' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'DISTRIBUTION_CHANNEL_CODE' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'ITEM_GROUP_CODE' ).
    lo_parameter->set_edm_name( 'ItemGroupCode' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'ITEM_GROUP_CODE' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'PRODUCT_ID' ).
    lo_parameter->set_edm_name( 'ProductID' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'PRODUCT_ID' ).
    lo_parameter->set_is_nullable( ).

    lo_parameter = lo_function->create_parameter( 'SALES_ORGANISATION_ID' ).
    lo_parameter->set_edm_name( 'SalesOrganisationID' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'SALES_ORGANISATION_ID' ).
    lo_parameter->set_is_nullable( ).

    lo_return = lo_function->create_return( ).
    lo_return->set_entity_type( 'SALES' ).
    lo_return->set_is_collection( ).

  ENDMETHOD.


  METHOD def_material_sales_unblock.

    DATA:
      lo_function        TYPE REF TO /iwbep/if_v4_pm_function,
      lo_function_import TYPE REF TO /iwbep/if_v4_pm_func_imp,
      lo_parameter       TYPE REF TO /iwbep/if_v4_pm_func_param,
      lo_return          TYPE REF TO /iwbep/if_v4_pm_func_return.


    lo_function = mo_model->create_function( 'MATERIAL_SALES_UNBLOCK' ).
    lo_function->set_edm_name( 'MaterialSalesUnblock' ) ##NO_TEXT.

    lo_function_import = lo_function->create_function_import( 'MATERIAL_SALES_UNBLOCK' ).
    lo_function_import->set_edm_name( 'MaterialSalesUnblock' ) ##NO_TEXT.


    lo_parameter = lo_function->create_parameter( 'OBJECT_ID' ).
    lo_parameter->set_edm_name( 'ObjectID' ) ##NO_TEXT.
    lo_parameter->set_primitive_type( 'OBJECT_ID_3' ).
    lo_parameter->set_is_nullable( ).

    lo_return = lo_function->create_return( ).
    lo_return->set_entity_type( 'SALES' ).

  ENDMETHOD.


  METHOD def_planning.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'PLANNING'
                                    is_structure              = VALUE tys_planning( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'Planning' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'PLANNING_COLLECTION' ).
    lo_entity_set->set_edm_name( 'PlanningCollection' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'OBJECT_ID' ).
    lo_primitive_property->set_edm_name( 'ObjectID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 70 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PARENT_OBJECT_ID' ).
    lo_primitive_property->set_edm_name( 'ParentObjectID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 70 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUPPLY_PLANNING_AREA_ID' ).
    lo_primitive_property->set_edm_name( 'SupplyPlanningAreaID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUPPLY_PLANNING_AREA_UUID' ).
    lo_primitive_property->set_edm_name( 'SupplyPlanningAreaUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUPPLY_PLANNING_AREA_DESCR' ).
    lo_primitive_property->set_edm_name( 'SupplyPlanningAreaDescription' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LIFE_CYCLE_STATUS_CODE' ).
    lo_primitive_property->set_edm_name( 'LifeCycleStatusCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LIFE_CYCLE_STATUS_CODE_TEX' ).
    lo_primitive_property->set_edm_name( 'LifeCycleStatusCodeText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANNING_GROUP_ID' ).
    lo_primitive_property->set_edm_name( 'PlanningGroupID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANNING_GROUP_DESCRIPTION' ).
    lo_primitive_property->set_edm_name( 'PlanningGroupDescription' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 80 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DEMAND_MANAGEMENT_PROCEDUR' ).
    lo_primitive_property->set_edm_name( 'DemandManagementProcedureCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DEMAND_MANAGEMENT_PROCED_2' ).
    lo_primitive_property->set_edm_name( 'DemandManagementProcedureCodeText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROCUREMENT_TYPE_CODE' ).
    lo_primitive_property->set_edm_name( 'ProcurementTypeCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROCUREMENT_TYPE_CODE_TEXT' ).
    lo_primitive_property->set_edm_name( 'ProcurementTypeCodeText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROCUREMENT_LEAD_DURATION' ).
    lo_primitive_property->set_edm_name( 'ProcurementLeadDuration' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'GOODS_RECEIPT_PROCESSING_D' ).
    lo_primitive_property->set_edm_name( 'GoodsReceiptProcessingDuration' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANNING_PROCEDURE_CODE' ).
    lo_primitive_property->set_edm_name( 'PlanningProcedureCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANNING_PROCEDURE_CODE_TE' ).
    lo_primitive_property->set_edm_name( 'PlanningProcedureCodeText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SAFETY_STOCK_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'SafetyStockQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 31 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 14 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SAFETY_STOCK_QUANTITY_UNIT' ).
    lo_primitive_property->set_edm_name( 'SafetyStockQuantityUnitCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SAFETY_STOCK_QUANTITY_UN_2' ).
    lo_primitive_property->set_edm_name( 'SafetyStockQuantityUnitCodeText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SAFETY_LEAD_DURATION' ).
    lo_primitive_property->set_edm_name( 'SafetyLeadDuration' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANNING_TIME_FENCE_DURATI' ).
    lo_primitive_property->set_edm_name( 'PlanningTimeFenceDuration' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LOT_SIZING_METHOD_CODE' ).
    lo_primitive_property->set_edm_name( 'LotSizingMethodCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LOT_SIZING_METHOD_CODE_TEX' ).
    lo_primitive_property->set_edm_name( 'LotSizingMethodCodeText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MINIMUM_LOT_SIZE_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'MinimumLotSizeQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 31 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 14 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MINIMUM_LOT_SIZE_QUANTIT_2' ).
    lo_primitive_property->set_edm_name( 'MinimumLotSizeQuantityUnitCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MINIMUM_LOT_SIZE_QUANTIT_3' ).
    lo_primitive_property->set_edm_name( 'MinimumLotSizeQuantityUnitCodeText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MAXIMUM_LOT_SIZE_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'MaximumLotSizeQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 31 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 14 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MAXIMUM_LOT_SIZE_QUANTIT_2' ).
    lo_primitive_property->set_edm_name( 'MaximumLotSizeQuantityUnitCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MAXIMUM_LOT_SIZE_QUANTIT_3' ).
    lo_primitive_property->set_edm_name( 'MaximumLotSizeQuantityUnitCodeText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LOT_SIZE_ROUNDING_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'LotSizeRoundingQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 31 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 14 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LOT_SIZE_ROUNDING_QUANTI_2' ).
    lo_primitive_property->set_edm_name( 'LotSizeRoundingQuantityUnitCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LOT_SIZE_ROUNDING_QUANTI_3' ).
    lo_primitive_property->set_edm_name( 'LotSizeRoundingQuantityUnitCodeText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MINIMUM_DAYS_OF_SUPPLY_DUR' ).
    lo_primitive_property->set_edm_name( 'MinimumDaysOfSupplyDuration' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MINIMUM_SHELF_LIFE_DURATIO' ).
    lo_primitive_property->set_edm_name( 'MinimumShelfLifeDuration' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MINIMUM_RECEIPT_DAYS_OF_SU' ).
    lo_primitive_property->set_edm_name( 'MinimumReceiptDaysOfSupplyDuration' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'MATERIAL' ).
    lo_navigation_property->set_edm_name( 'Material' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'MATERIAL' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_planning_forecast_group.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'PLANNING_FORECAST_GROUP'
                                    is_structure              = VALUE tys_planning_forecast_group( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'PlanningForecastGroup' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'PLANNING_FORECAST_GROUP_CO' ).
    lo_entity_set->set_edm_name( 'PlanningForecastGroupCollection' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'OBJECT_ID' ).
    lo_primitive_property->set_edm_name( 'ObjectID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 70 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PARENT_OBJECT_ID' ).
    lo_primitive_property->set_edm_name( 'ParentObjectID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 70 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_CATEGORY_INTERNAL' ).
    lo_primitive_property->set_edm_name( 'ProductCategoryInternalID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_CATEGORY_DESCRIPTI' ).
    lo_primitive_property->set_edm_name( 'ProductCategoryDescription' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 80 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'MATERIAL' ).
    lo_navigation_property->set_edm_name( 'Material' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'MATERIAL' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_product_category.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'PRODUCT_CATEGORY'
                                    is_structure              = VALUE tys_product_category( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'ProductCategory' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'PRODUCT_CATEGORY_COLLECTIO' ).
    lo_entity_set->set_edm_name( 'ProductCategoryCollection' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'OBJECT_ID' ).
    lo_primitive_property->set_edm_name( 'ObjectID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 70 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PARENT_OBJECT_ID' ).
    lo_primitive_property->set_edm_name( 'ParentObjectID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 70 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_CATEGORY_INTERNAL' ).
    lo_primitive_property->set_edm_name( 'ProductCategoryInternalID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DESCRIPTION' ).
    lo_primitive_property->set_edm_name( 'Description' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 80 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DESCRIPTION_LANGUAGE_CODE' ).
    lo_primitive_property->set_edm_name( 'DescriptionLanguageCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DESCRIPTION_LANGUAGE_COD_2' ).
    lo_primitive_property->set_edm_name( 'DescriptionLanguageCodeText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'MATERIAL' ).
    lo_navigation_property->set_edm_name( 'Material' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'MATERIAL' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_purchasing.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'PURCHASING'
                                    is_structure              = VALUE tys_purchasing( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'Purchasing' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'PURCHASING_COLLECTION' ).
    lo_entity_set->set_edm_name( 'PurchasingCollection' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'OBJECT_ID' ).
    lo_primitive_property->set_edm_name( 'ObjectID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 70 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PARENT_OBJECT_ID' ).
    lo_primitive_property->set_edm_name( 'ParentObjectID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 70 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PURCHASING_MEASURE_UNIT_CO' ).
    lo_primitive_property->set_edm_name( 'PurchasingMeasureUnitCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PURCHASING_MEASURE_UNIT__2' ).
    lo_primitive_property->set_edm_name( 'PurchasingMeasureUnitCodeText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LIFE_CYCLE_STATUS_CODE' ).
    lo_primitive_property->set_edm_name( 'LifeCycleStatusCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LIFE_CYCLE_STATUS_CODE_TEX' ).
    lo_primitive_property->set_edm_name( 'LifeCycleStatusCodeText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'MATERIAL' ).
    lo_navigation_property->set_edm_name( 'Material' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'MATERIAL' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PURCHASING_TEXT' ).
    lo_navigation_property->set_edm_name( 'PurchasingText' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PURCHASING_TEXT' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

  ENDMETHOD.


  METHOD def_purchasing_text.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'PURCHASING_TEXT'
                                    is_structure              = VALUE tys_purchasing_text( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'PurchasingText' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'PURCHASING_TEXT_COLLECTION' ).
    lo_entity_set->set_edm_name( 'PurchasingTextCollection' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'OBJECT_ID' ).
    lo_primitive_property->set_edm_name( 'ObjectID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 70 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PARENT_OBJECT_ID' ).
    lo_primitive_property->set_edm_name( 'ParentObjectID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 70 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TEXT' ).
    lo_primitive_property->set_edm_name( 'Text' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LANGUAGE_CODE' ).
    lo_primitive_property->set_edm_name( 'LanguageCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LANGUAGE_CODE_TEXT' ).
    lo_primitive_property->set_edm_name( 'LanguageCodeText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TYPE_CODE' ).
    lo_primitive_property->set_edm_name( 'TypeCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TYPE_CODE_TEXT' ).
    lo_primitive_property->set_edm_name( 'TypeCodeText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'AUTHOR_UUID' ).
    lo_primitive_property->set_edm_name( 'AuthorUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'AUTHOR_NAME' ).
    lo_primitive_property->set_edm_name( 'AuthorName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATED_ON' ).
    lo_primitive_property->set_edm_name( 'CreatedOn' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 7 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATED_BY' ).
    lo_primitive_property->set_edm_name( 'CreatedBy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 80 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'UPDATED_ON' ).
    lo_primitive_property->set_edm_name( 'UpdatedOn' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 7 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LAST_UPDATED_BY' ).
    lo_primitive_property->set_edm_name( 'LastUpdatedBy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 80 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PURCHASING' ).
    lo_navigation_property->set_edm_name( 'Purchasing' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PURCHASING' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_quantity_characteristic.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'QUANTITY_CHARACTERISTIC'
                                    is_structure              = VALUE tys_quantity_characteristic( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'QuantityCharacteristic' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'QUANTITY_CHARACTERISTIC_CO' ).
    lo_entity_set->set_edm_name( 'QuantityCharacteristicCollection' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'OBJECT_ID' ).
    lo_primitive_property->set_edm_name( 'ObjectID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 70 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PARENT_OBJECT_ID' ).
    lo_primitive_property->set_edm_name( 'ParentObjectID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 70 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'QUANTITY' ).
    lo_primitive_property->set_edm_name( 'Quantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 31 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 14 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'QUANTITY_UNIT_CODE' ).
    lo_primitive_property->set_edm_name( 'QuantityUnitCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'QUANTITY_UNIT_CODE_TEXT' ).
    lo_primitive_property->set_edm_name( 'QuantityUnitCodeText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHARACTERISTIC_QUANTITY_TY' ).
    lo_primitive_property->set_edm_name( 'CharacteristicQuantityTypeCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHARACTERISTIC_QUANTITY__2' ).
    lo_primitive_property->set_edm_name( 'CharacteristicQuantityTypeCodeText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHARACTERISTIC_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'CharacteristicQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 31 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 14 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHARACTERISTIC_QUANTITY_UN' ).
    lo_primitive_property->set_edm_name( 'CharacteristicQuantityUnitCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHARACTERISTIC_QUANTITY__3' ).
    lo_primitive_property->set_edm_name( 'CharacteristicQuantityUnitCodeText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'MATERIAL' ).
    lo_navigation_property->set_edm_name( 'Material' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'MATERIAL' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_quantity_conversion.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'QUANTITY_CONVERSION'
                                    is_structure              = VALUE tys_quantity_conversion( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'QuantityConversion' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'QUANTITY_CONVERSION_COLLEC' ).
    lo_entity_set->set_edm_name( 'QuantityConversionCollection' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'OBJECT_ID' ).
    lo_primitive_property->set_edm_name( 'ObjectID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 70 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PARENT_OBJECT_ID' ).
    lo_primitive_property->set_edm_name( 'ParentObjectID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 70 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CORRESPONDING_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'CorrespondingQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 31 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 14 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CORRESPONDING_QUANTITY_UNI' ).
    lo_primitive_property->set_edm_name( 'CorrespondingQuantityUnitCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CORRESPONDING_QUANTITY_U_2' ).
    lo_primitive_property->set_edm_name( 'CorrespondingQuantityUnitCodeText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'QUANTITY' ).
    lo_primitive_property->set_edm_name( 'Quantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 31 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 14 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'QUANTITY_UNIT_CODE' ).
    lo_primitive_property->set_edm_name( 'QuantityUnitCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'QUANTITY_UNIT_CODE_TEXT' ).
    lo_primitive_property->set_edm_name( 'QuantityUnitCodeText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BATCH_DEPENDENT_INDICATOR' ).
    lo_primitive_property->set_edm_name( 'BatchDependentIndicator' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'MATERIAL' ).
    lo_navigation_property->set_edm_name( 'Material' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'MATERIAL' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_sales.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'SALES'
                                    is_structure              = VALUE tys_sales( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'Sales' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'SALES_COLLECTION' ).
    lo_entity_set->set_edm_name( 'SalesCollection' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'OBJECT_ID' ).
    lo_primitive_property->set_edm_name( 'ObjectID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 70 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PARENT_OBJECT_ID' ).
    lo_primitive_property->set_edm_name( 'ParentObjectID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 70 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_ORGANISATION_ID' ).
    lo_primitive_property->set_edm_name( 'SalesOrganisationID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DISTRIBUTION_CHANNEL_CODE' ).
    lo_primitive_property->set_edm_name( 'DistributionChannelCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DISTRIBUTION_CHANNEL_COD_2' ).
    lo_primitive_property->set_edm_name( 'DistributionChannelCodeText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LIFE_CYCLE_STATUS_CODE' ).
    lo_primitive_property->set_edm_name( 'LifeCycleStatusCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LIFE_CYCLE_STATUS_CODE_TEX' ).
    lo_primitive_property->set_edm_name( 'LifeCycleStatusCodeText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_MEASURE_UNIT_CODE' ).
    lo_primitive_property->set_edm_name( 'SalesMeasureUnitCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_MEASURE_UNIT_CODE_TE' ).
    lo_primitive_property->set_edm_name( 'SalesMeasureUnitCodeText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ITEM_GROUP_CODE' ).
    lo_primitive_property->set_edm_name( 'ItemGroupCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ITEM_GROUP_CODE_TEXT' ).
    lo_primitive_property->set_edm_name( 'ItemGroupCodeText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MINIMUM_ORDER_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'MinimumOrderQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 31 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 14 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MINIMUM_ORDER_QUANTITY_UNI' ).
    lo_primitive_property->set_edm_name( 'MinimumOrderQuantityUnitCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MINIMUM_ORDER_QUANTITY_U_2' ).
    lo_primitive_property->set_edm_name( 'MinimumOrderQuantityUnitCodeText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CASH_DISCOUNT_DEDUCTIBLE_I' ).
    lo_primitive_property->set_edm_name( 'CashDiscountDeductibleIndicator' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REFERENCE_PRICE_MATERIAL_I' ).
    lo_primitive_property->set_edm_name( 'ReferencePriceMaterialID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REFERENCE_PRICE_MATERIAL_D' ).
    lo_primitive_property->set_edm_name( 'ReferencePriceMaterialDescription' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'MATERIAL' ).
    lo_navigation_property->set_edm_name( 'Material' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'MATERIAL' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'SALES_ORGANISATION_NAME_BY' ).
    lo_navigation_property->set_edm_name( 'SalesOrganisationNameByValidity' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'SALES_ORGANISATION_NAME__2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'SALES_TEXT' ).
    lo_navigation_property->set_edm_name( 'SalesText' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'SALES_TEXT' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'SALES_WARRANTY' ).
    lo_navigation_property->set_edm_name( 'SalesWarranty' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'SALES_WARRANTY' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

  ENDMETHOD.


  METHOD def_sales_organisation_name__2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'SALES_ORGANISATION_NAME__2'
                                    is_structure              = VALUE tys_sales_organisation_name__2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'SalesOrganisationNameByValidity' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'SALES_ORGANISATION_NAME_BY' ).
    lo_entity_set->set_edm_name( 'SalesOrganisationNameByValidityCollection' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'OBJECT_ID' ).
    lo_primitive_property->set_edm_name( 'ObjectID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 70 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'NAME' ).
    lo_primitive_property->set_edm_name( 'Name' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'START_DATE' ).
    lo_primitive_property->set_edm_name( 'StartDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'END_DATE' ).
    lo_primitive_property->set_edm_name( 'EndDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

  ENDMETHOD.


  METHOD def_sales_text.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'SALES_TEXT'
                                    is_structure              = VALUE tys_sales_text( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'SalesText' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'SALES_TEXT_COLLECTION' ).
    lo_entity_set->set_edm_name( 'SalesTextCollection' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'OBJECT_ID' ).
    lo_primitive_property->set_edm_name( 'ObjectID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 70 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PARENT_OBJECT_ID' ).
    lo_primitive_property->set_edm_name( 'ParentObjectID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 70 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TEXT' ).
    lo_primitive_property->set_edm_name( 'Text' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LANGUAGE_CODE' ).
    lo_primitive_property->set_edm_name( 'LanguageCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LANGUAGE_CODE_TEXT' ).
    lo_primitive_property->set_edm_name( 'LanguageCodeText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TYPE_CODE' ).
    lo_primitive_property->set_edm_name( 'TypeCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TYPE_CODE_TEXT' ).
    lo_primitive_property->set_edm_name( 'TypeCodeText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'AUTHOR_UUID' ).
    lo_primitive_property->set_edm_name( 'AuthorUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'AUTHOR_NAME' ).
    lo_primitive_property->set_edm_name( 'AuthorName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATED_ON' ).
    lo_primitive_property->set_edm_name( 'CreatedOn' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 7 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATED_BY' ).
    lo_primitive_property->set_edm_name( 'CreatedBy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 80 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'UPDATED_ON' ).
    lo_primitive_property->set_edm_name( 'UpdatedOn' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 7 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LAST_UPDATED_BY' ).
    lo_primitive_property->set_edm_name( 'LastUpdatedBy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 80 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'SALES' ).
    lo_navigation_property->set_edm_name( 'Sales' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'SALES' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_sales_warranty.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'SALES_WARRANTY'
                                    is_structure              = VALUE tys_sales_warranty( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'SalesWarranty' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'SALES_WARRANTY_COLLECTION' ).
    lo_entity_set->set_edm_name( 'SalesWarrantyCollection' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'OBJECT_ID' ).
    lo_primitive_property->set_edm_name( 'ObjectID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 70 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PARENT_OBJECT_ID' ).
    lo_primitive_property->set_edm_name( 'ParentObjectID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 70 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_ORGANISATION_ID' ).
    lo_primitive_property->set_edm_name( 'SalesOrganisationID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DISTRIBUTION_CHANNEL_CODE' ).
    lo_primitive_property->set_edm_name( 'DistributionChannelCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DISTRIBUTION_CHANNEL_COD_2' ).
    lo_primitive_property->set_edm_name( 'DistributionChannelCodeText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'START_DATE' ).
    lo_primitive_property->set_edm_name( 'StartDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'END_DATE' ).
    lo_primitive_property->set_edm_name( 'EndDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->set_edm_type_v2( 'DateTime' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_ID' ).
    lo_primitive_property->set_edm_name( 'ProductID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DESCRIPTION' ).
    lo_primitive_property->set_edm_name( 'Description' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'MATERIAL' ).
    lo_navigation_property->set_edm_name( 'Material' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'MATERIAL' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'SALES' ).
    lo_navigation_property->set_edm_name( 'Sales' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'SALES' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_supplier_information.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'SUPPLIER_INFORMATION'
                                    is_structure              = VALUE tys_supplier_information( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'SupplierInformation' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'SUPPLIER_INFORMATION_COLLE' ).
    lo_entity_set->set_edm_name( 'SupplierInformationCollection' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'OBJECT_ID' ).
    lo_primitive_property->set_edm_name( 'ObjectID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 70 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PARENT_OBJECT_ID' ).
    lo_primitive_property->set_edm_name( 'ParentObjectID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 70 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUPPLIER_ID' ).
    lo_primitive_property->set_edm_name( 'SupplierID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUPPLIER_PART_NUMBER' ).
    lo_primitive_property->set_edm_name( 'SupplierPartNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 60 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUPPLIER_LEAD_TIME_DURATIO' ).
    lo_primitive_property->set_edm_name( 'SupplierLeadTimeDuration' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_PARTNER_FORMATTED' ).
    lo_primitive_property->set_edm_name( 'BusinessPartnerFormattedName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 80 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'MATERIAL' ).
    lo_navigation_property->set_edm_name( 'Material' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'MATERIAL' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_text.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'TEXT'
                                    is_structure              = VALUE tys_text( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'Text' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'TEXT_COLLECTION' ).
    lo_entity_set->set_edm_name( 'TextCollection' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'OBJECT_ID' ).
    lo_primitive_property->set_edm_name( 'ObjectID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 70 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PARENT_OBJECT_ID' ).
    lo_primitive_property->set_edm_name( 'ParentObjectID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 70 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TEXT_2' ).
    lo_primitive_property->set_edm_name( 'Text' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LANGUAGE_CODE' ).
    lo_primitive_property->set_edm_name( 'LanguageCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LANGUAGE_CODE_TEXT' ).
    lo_primitive_property->set_edm_name( 'LanguageCodeText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TYPE_CODE' ).
    lo_primitive_property->set_edm_name( 'TypeCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TYPE_CODE_TEXT' ).
    lo_primitive_property->set_edm_name( 'TypeCodeText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'AUTHOR_UUID' ).
    lo_primitive_property->set_edm_name( 'AuthorUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'AUTHOR_NAME' ).
    lo_primitive_property->set_edm_name( 'AuthorName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATED_ON' ).
    lo_primitive_property->set_edm_name( 'CreatedOn' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 7 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATED_BY' ).
    lo_primitive_property->set_edm_name( 'CreatedBy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 80 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'UPDATED_ON' ).
    lo_primitive_property->set_edm_name( 'UpdatedOn' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 7 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LAST_UPDATED_BY' ).
    lo_primitive_property->set_edm_name( 'LastUpdatedBy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 80 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'MATERIAL' ).
    lo_navigation_property->set_edm_name( 'Material' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'MATERIAL' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

  ENDMETHOD.


  METHOD def_valuation.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'VALUATION'
                                    is_structure              = VALUE tys_valuation( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'Valuation' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'VALUATION_COLLECTION' ).
    lo_entity_set->set_edm_name( 'ValuationCollection' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'OBJECT_ID' ).
    lo_primitive_property->set_edm_name( 'ObjectID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 70 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PARENT_OBJECT_ID' ).
    lo_primitive_property->set_edm_name( 'ParentObjectID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 70 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COMPANY_ID' ).
    lo_primitive_property->set_edm_name( 'CompanyID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BUSINESS_RESIDENCE_ID' ).
    lo_primitive_property->set_edm_name( 'BusinessResidenceID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LIFE_CYCLE_STATUS_CODE' ).
    lo_primitive_property->set_edm_name( 'LifeCycleStatusCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LIFE_CYCLE_STATUS_CODE_TEX' ).
    lo_primitive_property->set_edm_name( 'LifeCycleStatusCodeText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'BUSINESS_RESIDENCE_CURRENT' ).
    lo_navigation_property->set_edm_name( 'BusinessResidenceCurrentName' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'BUSINESS_RESIDENCE_CURRE_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'COMPANY_CURRENT_NAME' ).
    lo_navigation_property->set_edm_name( 'CompanyCurrentName' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'COMPANY_CURRENT_NAME' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'MATERIAL' ).
    lo_navigation_property->set_edm_name( 'Material' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'MATERIAL' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_withholding_tax_classifi_5.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'WITHHOLDING_TAX_CLASSIFI_5'
                                    is_structure              = VALUE tys_withholding_tax_classifi_5( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'WithholdingTaxClassification' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'WITHHOLDING_TAX_CLASSIFICA' ).
    lo_entity_set->set_edm_name( 'WithholdingTaxClassificationCollection' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'OBJECT_ID' ).
    lo_primitive_property->set_edm_name( 'ObjectID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 70 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PARENT_OBJECT_ID' ).
    lo_primitive_property->set_edm_name( 'ParentObjectID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 70 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COUNTRY_CODE' ).
    lo_primitive_property->set_edm_name( 'CountryCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COUNTRY_CODE_TEXT' ).
    lo_primitive_property->set_edm_name( 'CountryCodeText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TAX_TYPE_CODE' ).
    lo_primitive_property->set_edm_name( 'TaxTypeCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TAX_TYPE_CODE_TEXT' ).
    lo_primitive_property->set_edm_name( 'TaxTypeCodeText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'WITHHOLDING_TAX_INCOME_TYP' ).
    lo_primitive_property->set_edm_name( 'WithholdingTaxIncomeTypeCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'WITHHOLDING_TAX_INCOME_T_2' ).
    lo_primitive_property->set_edm_name( 'WithholdingTaxIncomeTypeCodeText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'MATERIAL' ).
    lo_navigation_property->set_edm_name( 'Material' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'MATERIAL' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.
ENDCLASS.
