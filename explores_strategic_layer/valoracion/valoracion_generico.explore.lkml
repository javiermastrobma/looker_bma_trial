include: "/views/views_embebed/fct_situacion_acumulada_valoracion.view.lkml"
include: "/views/views_embebed/lkp_bancas.view"
include: "/views/views_embebed/lkp_conceptos_valoracion.view"
include: "/views/views_embebed/lkp_conceptos_valoracion_agrupaciones.view"
include: "/views/views_embebed/lkp_clientes_completa.view"
include: "/views/views_embebed/lkp_fechas.view"
include: "/views/views_embebed/lkp_oficiales_cuenta.view"
include: "/views/views_embebed/lkp_sucursales_radicacion.view"


explore: valoracion_generico {
  label: "Valoración"
  description: "Indicadores de Valoración/PNB por cliente, banca, sucursal y oficial de cuentas."
  persist_with: valoracion_datagroup
  from: fct_situacion_acumulada_valoracion_embebed
  sql_always_where: ${lkp_fechas_embebed.periodo} >= "2021-01" ;;
  always_filter: {
    filters: [lkp_clientes_completa_embebed.codigo_cliente: ""]
  }
  view_label: "Fct Situacion Acumulada Valoracion"
  join: lkp_bancas_embebed {
    type: inner
    sql_on: ${valoracion_generico.banca_key} = ${lkp_bancas_embebed.banca_key} ;;
    relationship: many_to_one
  }
  join: lkp_conceptos_valoracion_embebed {
    type: inner
    sql_on: ${valoracion_generico.concepto_valoracion_key} = ${lkp_conceptos_valoracion_embebed.concepto_valoracion_key} ;;
    relationship: many_to_one
  }
  join: lkp_conceptos_valoracion_agrupaciones_embebed {
    type: inner
    sql_on: ${valoracion_generico.concepto_valoracion_key} = ${lkp_conceptos_valoracion_agrupaciones_embebed.concepto_valoracion_key} ;;
    relationship: many_to_one
  }
  join: lkp_clientes_completa_embebed {
    type: inner
    sql_on: ${valoracion_generico.cliente_key} = ${lkp_clientes_completa_embebed.cliente_key} ;;
    relationship: many_to_one
  }
  join: lkp_fechas_embebed {
    type: inner
    sql_on: ${valoracion_generico.fecha_key} = ${lkp_fechas_embebed.fecha_key} ;;
    relationship: many_to_one
  }
  join: lkp_oficiales_cuenta_embebed {
    type: left_outer
    sql_on: ${valoracion_generico.oficial_cliente_key} = ${lkp_oficiales_cuenta_embebed.oficial_cliente_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_radicacion_embebed {
    type: inner
    sql_on: ${valoracion_generico.sucursal_radicacion_key} = ${lkp_sucursales_radicacion_embebed.sucursal_radicacion_key} ;;
    relationship: many_to_one
  }
}
