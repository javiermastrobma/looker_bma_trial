include: "/views/views_pf/pasivas_plazo_fijo_flujo.view"
include: "/views/views_lkp/lkp_fechas.view"

explore: pasivas_plazo_fijo_flujo {
  join: lkp_fechas {
    type: inner
    sql_on: ${pasivas_plazo_fijo_flujo.fecha_key} = ${lkp_fechas.fecha_key} ;;
    relationship: many_to_one
  }
}
