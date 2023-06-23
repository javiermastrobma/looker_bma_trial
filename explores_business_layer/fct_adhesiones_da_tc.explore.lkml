include: "/views/views_fct/fct_adhesiones_da_tc.view"
include: "/views/views_lkp/*.view"

explore: fct_adhesiones_da_tc {
  label: "Medios de Pago | Adhesiones Débito Automático TC"
  conditionally_filter: {
    filters: [fct_adhesiones_da_tc.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }
  join: lkp_fechas {
    type: inner
    sql_on: ${fct_adhesiones_da_tc.fecha_key} = ${lkp_fechas.fecha_key} ;;
  relationship: many_to_one
  }
  join: lkp_clientes_completa {
    type: inner
    sql_on: ${fct_adhesiones_da_tc.cliente_key} = ${lkp_clientes_completa.cliente_key};;
    relationship: many_to_one
  }
  join: lkp_tipos_titular_segmentacion {
    type: inner
    sql_on: ${fct_adhesiones_da_tc.tipo_titular_key} = ${lkp_tipos_titular_segmentacion.tipo_titular_key} ;;
    relationship: many_to_one
  }
  join: lkp_marcas {
    type: inner
    sql_on: ${fct_adhesiones_da_tc.marca_key} = ${lkp_marcas.marca_key} ;;
    relationship: many_to_one
  }
  join: lkp_productos {
    type: inner
    sql_on: ${fct_adhesiones_da_tc.producto_key} = ${lkp_productos.producto_key} ;;
    relationship: many_to_one
  }
  join: lkp_estados_adhesion_da_tc {
    type: inner
    sql_on: ${fct_adhesiones_da_tc.estado_adhesion_da_key} = ${lkp_estados_adhesion_da_tc.estado_adhesion_da_key};;
    relationship: many_to_one
  }
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_adhesiones_da_tc.banco_key} = ${lkp_bancos.banco_key} ;;
    relationship:many_to_one
  }
  join: lkp_canales_adhesiones_da_tc {
    type: inner
    sql_on: ${fct_adhesiones_da_tc.canal_adhesion_da_key} = ${lkp_canales_adhesiones_da_tc.canal_adhesion_da_key} ;;
    relationship: many_to_one
  }
  join: lkp_cuentas_tc {
    type: inner
    sql_on: ${fct_adhesiones_da_tc.cuenta_tc_key} = ${lkp_cuentas_tc.cuenta_tc_key};;
    relationship: many_to_one
  }
  join: lkp_tarjetas_credito {
    type: inner
    sql_on: ${fct_adhesiones_da_tc.tarjeta_credito_key} = ${lkp_tarjetas_credito.tarjeta_credito_key} ;;
    relationship: many_to_one
  }
  join: lkp_dotacion_rrhh {
    type: inner
    sql_on: ${fct_adhesiones_da_tc.dotacion_rrhh_key} = ${lkp_dotacion_rrhh.dotacion_rrhh_key} ;;
    relationship: many_to_one
  }
  join: lkp_comercios_completa {
    type: inner
    sql_on: ${fct_adhesiones_da_tc.comercio_key} = ${lkp_comercios_completa.comercio_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_cuenta {
    type: inner
    sql_on: ${fct_adhesiones_da_tc.sucursal_cuenta_key} = ${lkp_sucursales_cuenta.sucursal_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_radicacion {
    type: inner
    sql_on: ${lkp_clientes_completa.sucursal_radicacion_key} = ${lkp_sucursales_radicacion.sucursal_radicacion_key} ;;
    relationship: many_to_one
  }
}
