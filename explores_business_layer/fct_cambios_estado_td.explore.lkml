include: "/views/views_fct/fct_cambios_estado_td.view.lkml"
include: "/views/views_lkp/lkp_fechas.view.lkml"
include: "/views/views_lkp/lkp_cuentas_td.view.lkml"
include: "/views/views_lkp/lkp_bancos.view.lkml"
include: "/views/views_lkp/lkp_sucursales_cuenta.view.lkml"
include: "/views/views_lkp/lkp_cuentas.view.lkml"
include: "/views/views_lkp/lkp_estados_td.view.lkml"

explore: fct_cambios_estado_td {
  label: "Medios de Pago | Cambios Estado TD Diaria"
  conditionally_filter: {
    filters: [fct_cambios_estado_td.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }

  join: lkp_fechas {
    type: inner
    sql_on: ${fct_cambios_estado_td.fecha_key} = ${lkp_fechas.fecha_key} ;;
    relationship: many_to_one
  }
  join: lkp_cuentas_td {
    type: inner
    sql_on: ${fct_cambios_estado_td.cuenta_key} = ${lkp_cuentas_td.cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_cambios_estado_td.banco_key} = ${lkp_bancos.banco_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_cuenta {
    type: inner
    sql_on: ${fct_cambios_estado_td.sucursal_estado_key} = ${lkp_sucursales_cuenta.sucursal_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_cuentas {
    type: inner
    sql_on: ${fct_cambios_estado_td.cuenta_key} = ${lkp_cuentas.cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_estados_td {
    type: inner
    sql_on: ${fct_cambios_estado_td.estado_td_key} = ${lkp_estados_td.estado_td_key} ;;
    relationship: many_to_one
  }

}
