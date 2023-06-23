include: "/views/views_fct/fct_transacciones.view.lkml"
include: "/views/views_lkp/lkp_causales.view.lkml"
include: "/views/views_lkp/lkp_cuentas.view.lkml"
include: "/views/views_lkp/lkp_tipos_transferencia.view.lkml"
include: "/views/views_lkp/lkp_fechas.view.lkml"
include: "/views/views_lkp/lkp_clientes_completa.view.lkml"

explore: transacciones_ps {
 # fields: [ALL_FIELDS*, -fct_transacciones.filtro_flag_reversa, -fct_transacciones.causal_tipo_transferencia, -fct_transacciones.causal_tipo_transferencia_convenio]
  persist_with: transacciones_y_acred_conv_datagroup
  label: "Plan Sueldo Acreditaciones Salariales"
  description: "Transacciones por cliente bajo causales Plan Sueldo realizados en Cajas de Ahorro."
  sql_always_where: ${lkp_fechas.periodo} >= "2021-01" and ${flag_reversa} <> "9" and ${debito_credito} = "C" and (${lkp_causales.causal} in (303, 1001, 1004, 1304, 1501, 1780, 1783, 1935, 2028, 4068)
                    or (${lkp_causales.causal} = 1444 and ${lkp_tipos_transferencia.tipo_transferencia} = "Sueldos")) ;;
  #-- datanet 2028 sueldos y 4068 honorarios
  join: lkp_causales {
    type: inner
    sql_on: ${transacciones_ps.causal_key} = ${lkp_causales.causal_key} ;;
    relationship: many_to_one
  }
  join: lkp_cuentas {
    type: inner
    sql_on: ${transacciones_ps.cuenta_key} = ${lkp_cuentas.cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_tipos_transferencia {
    type: inner
    sql_on: ${transacciones_ps.tipo_transferencia_key} = ${lkp_tipos_transferencia.tipo_transferencia_key} ;;
    relationship: many_to_one
  }
  join: lkp_fechas {
    type: inner
    sql_on: ${transacciones_ps.fecha_key} = ${lkp_fechas.fecha_key} ;;
    relationship: many_to_one
  }
  join: lkp_clientes_completa {
    type: inner
    sql_on: ${lkp_cuentas.cliente_key} = ${lkp_clientes_completa.cliente_key} ;;
    relationship: many_to_one
  }
}
