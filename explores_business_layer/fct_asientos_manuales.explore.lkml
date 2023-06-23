include: "/views/views_fct/fct_asientos_manuales.view.lkml"
include: "/views/views_lkp/lkp_fechas.view.lkml"
include: "/views/views_lkp/lkp_areas_origen.view.lkml"
include: "/views/views_lkp/lkp_bancos.view.lkml"
include: "/views/views_lkp/lkp_plan_cuentas.view.lkml"
include: "/views/views_lkp/lkp_areas_destino.view.lkml"

explore: fct_asientos_manuales {
  label: "Contabilidad | Asientos Manuales Mensual"
  conditionally_filter: {
    filters: [fct_asientos_manuales.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }
  join: lkp_fechas {
    type: inner
    sql_on: ${fct_asientos_manuales.fecha_key} = ${lkp_fechas.fecha_key} ;;
    relationship: many_to_one
  }
  join: lkp_areas_origen {
    type: inner
    sql_on: ${fct_asientos_manuales.area_origen_key} = ${lkp_areas_origen.area_origen_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_asientos_manuales.banco_key} = ${lkp_bancos.banco_key} ;;
    relationship: many_to_one
  }
  join: lkp_plan_cuentas {
    type: inner
    sql_on: ${fct_asientos_manuales.plan_cuentas_key} = ${lkp_plan_cuentas.plan_cuentas_key} ;;
    relationship: many_to_one
  }
  join: lkp_areas_destino {
    type: inner
    sql_on: ${fct_asientos_manuales.area_destino_key} = ${lkp_areas_destino.area_destino_key} ;;
    relationship: many_to_one
  }

}
