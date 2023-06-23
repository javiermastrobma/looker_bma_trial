include: "/views/views_fct/fct_control_presupuestario_diario.view.lkml"
include: "/views/views_lkp/lkp_fechas.view.lkml"
include: "/views/views_lkp/lkp_bienes_uso.view.lkml"
include: "/views/views_lkp/lkp_origen_gastos.view.lkml"
include: "/views/views_lkp/lkp_bancos.view.lkml"
include: "/views/views_lkp/lkp_plan_cuentas.view.lkml"
include: "/views/views_lkp/lkp_escenarios_presupuesto.view.lkml"
include: "/views/views_lkp/lkp_areas_destino.view.lkml"

explore: fct_control_presupuestario_diario {
  label: "Presupuesto | Control Presupuestario Diario"
  conditionally_filter: {
    filters: [fct_control_presupuestario_diario.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }

  join: lkp_fechas {
    type: inner
    sql_on: ${fct_control_presupuestario_diario.fecha_key} = ${lkp_fechas.fecha_key} ;;
    relationship: many_to_one
  }
  join: lkp_bienes_uso {
    type: inner
    sql_on: ${fct_control_presupuestario_diario.bien_uso_key} = ${lkp_bienes_uso.bien_uso_key} ;;
    relationship: many_to_one
  }
  join: lkp_origen_gastos {
    type: inner
    sql_on: ${fct_control_presupuestario_diario.origen_gasto_key} = ${lkp_origen_gastos.origen_gasto_key}  ;;
    relationship: many_to_one
  }
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_control_presupuestario_diario.banco_key} = ${lkp_bancos.banco_key};;
    relationship: many_to_one
  }
  join: lkp_plan_cuentas {
    type: inner
    sql_on: ${fct_control_presupuestario_diario.plan_cuentas_key} = ${lkp_plan_cuentas.plan_cuentas_key} ;;
    relationship: many_to_one
  }
  join: lkp_escenarios_presupuesto {
    type: inner
    sql_on: ${fct_control_presupuestario_diario.escenario_presupuesto_key} = ${lkp_escenarios_presupuesto.escenario_presupuesto_key} ;;
    relationship: many_to_one
  }
  join: lkp_areas_destino {
    type: inner
    sql_on: ${fct_control_presupuestario_diario.area_destino_key} = ${lkp_areas_destino.area_destino_key} ;;
    relationship: many_to_one
  }
}
