include: "/views/views_fct/fct_acuerdos_vigentes.view.lkml"
include: "/views/views_lkp/lkp_fechas.view.lkml"
include: "/views/views_lkp/lkp_acuerdos.view.lkml"
include: "/views/views_lkp/lkp_bancos.view.lkml"
include: "/views/views_lkp/lkp_sucursales_cuenta.view.lkml"
include: "/views/views_lkp/lkp_cuentas.view.lkml"
include: "/views/views_lkp/lkp_clientes_completa.view.lkml"

explore: fct_acuerdos_vigentes {
  label: "Activas | Acuerdos Vigentes"
  conditionally_filter: {
    filters: [fct_acuerdos_vigentes.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }
join: lkp_fechas {
  type: inner
  sql_on: ${fct_acuerdos_vigentes.fecha_key} = ${lkp_fechas.fecha_key}  ;;
  relationship: many_to_one
}
join: lkp_acuerdos {
  type: inner
  sql_on: ${fct_acuerdos_vigentes.acuerdo_key} = ${lkp_acuerdos.acuerdo_key} ;;
  relationship: many_to_one
}
join: lkp_bancos {
  type: inner
  sql_on: ${fct_acuerdos_vigentes.banco_key} = ${lkp_bancos.banco_key} ;;
  relationship: many_to_one
}
join: lkp_sucursales_cuenta {
  type: inner
  sql_on: ${fct_acuerdos_vigentes.sucursal_key} = ${lkp_sucursales_cuenta.sucursal_cuenta_key} ;;
  relationship: many_to_one
}
join: lkp_sucursales_radicacion {
  type: inner
  sql_on: ${lkp_clientes_completa.sucursal_radicacion_key} = ${lkp_sucursales_radicacion.sucursal_radicacion_key} ;;
  relationship: many_to_one
}
join: lkp_cuentas {
  type: inner
  sql_on: ${fct_acuerdos_vigentes.cuenta_key} = ${lkp_cuentas.cuenta_key} ;;
  relationship: many_to_one
}
join: lkp_clientes_completa {
  type: inner
  sql_on: ${fct_acuerdos_vigentes.cliente_key} = ${lkp_clientes_completa.cliente_key} ;;
  relationship: many_to_one
 }
}
