@AbapCatalog.sqlViewName: 'ZPROJECTANALY'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Z_PROJECT Analytical View'

@Analytics.query: true
@Analytics.dataCategory: #CUBE

@UI.chart: [{ 
                chartType: #COLUMN_STACKED,
                dimensions: [ 'ProjectID','Projectstartdate' ],
                measures: [ 'TotalProjectCost' ],
                dimensionAttributes: [{ dimension: 'Projectstartdate',role: #SERIES },
                                      { dimension: 'ZEmployeeResponsible',role: #CATEGORY }      ],
                                      measureAttributes: [{ measure: 'TotalProjectCost', asDataPoint: true,role:#AXIS_1  }]


 }]
 

define view Z_PROJECT_ANALYTICAL as select from zproject
{
    key project_uuid as ProjectUuid,
    project_id as ProjectId,
    project_name as ProjectName,
    z_employee_responsible as ZEmployeeResponsible,
    
    @Semantics.amount.currencyCode: 'totalprojectcostcurrencycode'  
    @DefaultAggregation: #SUM
    @UI.dataPoint : {
                        title: 'BIDDING',
                        criticalityCalculation :{
                                                    improvementDirection: #MAXIMIZE
                                                }
                     }
    totalprojectcost as TotalProjectCost,
    totalprojectcostcurrencycode as Totalprojectcostcurrencycode,
    projectstartdate as Projectstartdate,
    projectenddate as Projectenddate
}
