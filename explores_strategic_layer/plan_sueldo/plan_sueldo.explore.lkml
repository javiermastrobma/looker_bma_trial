include: "/views/views_fct/fct_situaciones_indicadores_plan_sueldos.view"
include: "/views/views_fct/fct_situaciones_estados_capita_ps.view"
include: "/views/views_lkp/lkp_fechas.view"
include: "/views/views_lkp/lkp_clientes_completa.view"
include: "/views/views_lkp/lkp_bancas.view"
include: "/views/views_lkp/lkp_capitas_plan_sueldo.view"
include: "/views/views_lkp/lkp_oficiales_cuenta.view"
include: "/views/views_lkp/lkp_sucursales_cuenta.view"
include: "/views/views_lkp/lkp_estados_ps.view"
include: "/views/views_lkp/lkp_tipos_persona.view"
include: "/views/views_lkp/pop_fanout.view"


explore: Plan_Sueldo {
  label: "Plan Sueldo Monitor"
  description: "Estado y Acreditación de cápitas Plan Sueldo. (Mensual)"
  persist_with: plan_sueldo_datagroup
  from: fct_situaciones_indicadores_plan_sueldos
  #sql_always_where: ${lkp_fechas.periodo} >= "2021-01" ;;
  sql_always_where: ${mayor_a_fecha_minima} AND {% if lkp_fechas.comparacion_periodos._in_query %} ${lkp_fechas.comparacion_periodos} is not null {% else %} 1=1 {% endif %} ;;
  join: lkp_fechas {
    type: inner
    sql_on: ${lkp_fechas.fecha_key} = ${fecha_key} ;;
    relationship: many_to_one
  }
  join: lkp_clientes_completa {
    type: inner
    sql_on: ${lkp_clientes_completa.cliente_key} = ${lkp_capitas_plan_sueldo.cliente_convenio_key} ;;
    relationship: many_to_one
  }
  #Banca Histórica
  join: lkp_bancas{
    type: inner
    sql_on: ${lkp_bancas.banca_key} = ${lkp_clientes_completa.banca_key} ;;
    relationship: many_to_one
  }
  #Banca Comité
  join: lkp_bancas_comite {
    type: left_outer
    sql_on: ${lkp_clientes_completa.banca_comite_key} = ${lkp_bancas_comite.banca_key} ;;
    relationship: many_to_one
  }
  #Banca Actual
  join: lkp_banca_actual {
    type: left_outer
    sql_on: ${lkp_clientes_completa.banca_key} = ${lkp_banca_actual.banca_key} ;;
    relationship: many_to_one
  }
  join: lkp_oficiales_cuenta {
    type:  inner
    sql_on: ${lkp_oficiales_cuenta.oficial_cuenta_key} = ${lkp_clientes_completa.oficial_cuenta_key};;
    relationship: many_to_one
  }
  join: lkp_sucursales_radicacion {
    type: inner
    sql_on: ${lkp_sucursales_radicacion.sucursal_radicacion_key} = ${lkp_clientes_completa.sucursal_radicacion_key}  ;;
    relationship: many_to_one
  }
  join: fct_situaciones_estados_capita_ps {
    type: inner
    sql_on: ${fct_situaciones_estados_capita_ps.capita_key} = ${capita_key}
      and ${fct_situaciones_estados_capita_ps.fecha_key} = ${fecha_key} ;;
    relationship: many_to_one
  }
  join: lkp_capitas_plan_sueldo {
    type: inner
    sql_on: ${lkp_capitas_plan_sueldo.capita_key} = ${fct_situaciones_estados_capita_ps.capita_key} ;;
    relationship: many_to_one
  }
  join: lkp_estados_ps {
    type: inner
    sql_on: ${lkp_estados_ps.estado_monitor_ps_key} = ${fct_situaciones_estados_capita_ps.estado_monitor_ps_key} ;;
    relationship: many_to_one
  }
  join: lkp_clientes_completa_convenio_ps {
    type: inner
    sql_on: ${lkp_capitas_plan_sueldo.cliente_convenio_key} = ${lkp_clientes_completa_convenio_ps.cliente_key};;
    relationship: many_to_one
  }
  join: lkp_clientes_completa_capita_ps {
    type: inner
    sql_on: ${lkp_capitas_plan_sueldo.cliente_capita_key} = ${lkp_clientes_completa_capita_ps.cliente_key} ;;
    relationship: many_to_one
  }
  join: lkp_tipos_persona {
    type: inner
    sql_on: ${lkp_tipos_persona.tipo_persona_key} = ${lkp_clientes_completa.tipo_persona_key} ;;
    relationship: many_to_one
  }
  join: pop_fanout {
    type: inner
    sql_on: ${Plan_Sueldo.fecha_key} = ${pop_fanout.fecha_pop_key} ;;
    relationship: many_to_one
  }
}
