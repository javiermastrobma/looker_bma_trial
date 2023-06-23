include: "/views/views_fct/fct_ajustes_acreditaciones_ps.view.lkml"
include: "/views/views_lkp/lkp_fechas.view.lkml"
include: "/views/views_lkp/lkp_bancos.view.lkml"
include: "/views/views_lkp/lkp_capitas_plan_sueldo.view.lkml"


explore: fct_ajustes_acreditaciones_ps {
  label: "Plan Sueldo | Ajustes Acreditaciones Mensual"
  conditionally_filter: {
    filters: [fct_ajustes_acreditaciones_ps.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_ajustes_acreditaciones_ps.banco_key} = ${lkp_bancos.banco_key} ;;
    relationship: many_to_one
  }
  join: lkp_capitas_plan_sueldo {
    type: inner
    sql_on: ${fct_ajustes_acreditaciones_ps.capita_key} = ${lkp_capitas_plan_sueldo.capita_key} ;;
    relationship: many_to_one
  }
  join: lkp_fechas {
    type: inner
    sql_on: ${fct_ajustes_acreditaciones_ps.fecha_key} = ${lkp_fechas.fecha_key} ;;
    relationship: many_to_one
  }
}
