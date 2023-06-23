include: "/views/views_fct/fct_bienes_uso.view.lkml"
include: "/views/views_lkp/*.view.lkml"

explore: fct_bienes_uso {
  label: "Contabilidad | Bienes de Uso Mensual"
  conditionally_filter: {
    filters: [fct_bienes_uso.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }
  join: lkp_fechas {
    type: inner
    sql_on: ${fct_bienes_uso.fecha_key} = ${lkp_fechas.fecha_key}  ;;
    relationship: many_to_one
  }
  join: lkp_bienes_uso {
    type: inner
    sql_on: ${fct_bienes_uso.bien_uso_key} = ${lkp_bienes_uso.bien_uso_key} ;;
    relationship: many_to_one
  }
  join: lkp_areas_destino {
    type: inner
    sql_on: ${fct_bienes_uso.area_destino_key} = ${lkp_areas_destino.area_destino_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_bienes_uso.banco_key} = ${lkp_bancos.banco_key} ;;
    relationship: many_to_one
  }
  join: lkp_especies {
    type: inner
    sql_on: ${fct_bienes_uso.especie_key} = ${lkp_especies.especie_key} ;;
    relationship: many_to_one
  }
  join: lkp_plan_cuentas_amortizacion_acumulado {
    type: inner
    sql_on: ${fct_bienes_uso.plan_cuentas_amortizacion_acumulada_key} = ${lkp_plan_cuentas_amortizacion_acumulado.plan_cuentas_key} ;;
    relationship: many_to_one
  }
  join: lkp_plan_cuentas_amortizacion_reexpresion {
    type: inner
    sql_on: ${fct_bienes_uso.plan_cuentas_amortizacion_reexpresion_key} = ${lkp_plan_cuentas_amortizacion_reexpresion.plan_cuentas_key} ;;
    relationship: many_to_one
  }
  join: lkp_plan_cuentas_amortizacion_acumulada_reexpresion {
    type: inner
    sql_on: ${fct_bienes_uso.plan_cuentas_amortizacion_acumulada_key} = ${lkp_plan_cuentas_amortizacion_acumulada_reexpresion.plan_cuentas_key} ;;
    relationship: many_to_one
  }
  join: lkp_plan_cuentas_amortizacion {
    type: inner
    sql_on: ${fct_bienes_uso.plan_cuentas_amortizacion_key} = ${lkp_plan_cuentas_amortizacion.plan_cuentas_key} ;;
    relationship: many_to_one
  }
  join: lkp_plan_cuentas_actualizacion_activo {
    type: inner
    sql_on: ${fct_bienes_uso.plan_cuentas_actualizacion_activo_key} = ${lkp_plan_cuentas_actualizacion_activo.plan_cuentas_key} ;;
    relationship: many_to_one
  }
  join: lkp_plan_cuentas_activo {
    type: inner
    sql_on: ${fct_bienes_uso.plan_cuentas_activo_key} = ${lkp_plan_cuentas_activo.plan_cuentas_key} ;;
    relationship: many_to_one
  }
}
