include: "/views/views_pf/pasivas_plazo_fijo_stock.view"
include: "/views/views_lkp/lkp_fechas.view"

explore: pasivas_plazo_fijo_stock {
  join: lkp_fechas {
    type: inner
    sql_on: ${pasivas_plazo_fijo_stock.fecha_key} = ${lkp_fechas.fecha_key} ;;
    relationship: many_to_one
  }
}
