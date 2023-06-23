include: "/views/views_lkp/lkp_fechas.view"
include: "/views/views_pdt/*.view"


explore: cash_management {
  description: "Volumen ($) de productos Cash Management para Banca Empresas."
  query: prueba_quick_start {
    dimensions: [lkp_fechas.periodo, cash_management.grupo]
    measures: [cash_management.sum_importe]
    pivots: [grupo]
    sorts: [lkp_fechas.periodo: asc]
    limit: 500
  }
  join: lkp_fechas {
    type: left_outer
    sql_on: ${cash_management.fecha_key} = ${lkp_fechas.fecha_key} ;;
    relationship: many_to_one
  }
}
