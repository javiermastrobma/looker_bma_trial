include: "/views/views_fct/fct_bonificaciones.view.lkml"
include: "/views/views_lkp/*.view.lkml"

explore: fct_bonificaciones {
  label: "Pasivas | Bonificaciones"
  description: "Bonificaciones sobre Cajas de Ahorro y Cuentas Corriente."
  conditionally_filter: {
    filters: [fct_bonificaciones.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
    }
  join: lkp_fechas {
    type: inner
    sql_on: ${fct_bonificaciones.fecha_key} = ${lkp_fechas.fecha_key} ;;
    relationship: many_to_one
  }
  join: lkp_estados_bonificacion {
    type: inner
    sql_on: ${fct_bonificaciones.estado_bonificacion_key} = ${lkp_estados_bonificacion.estado_bonificacion_key} ;;
    relationship: many_to_one
  }
  join: lkp_tipos_bonificacion {
      type: inner
      sql_on: ${fct_bonificaciones.tipo_bonificacion_key} = ${lkp_tipos_bonificacion.tipo_bonificacion_key} ;;
      relationship: many_to_one
    }
  join: lkp_rubros_bonificacion {
    type: inner
    sql_on: ${fct_bonificaciones.rubro_bonificacion_key} = ${lkp_rubros_bonificacion.rubros_bonificacion_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_bonificaciones.banco_key} = ${lkp_bancos.banco_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_cuenta {
    type: inner
    sql_on: ${fct_bonificaciones.sucursal_key} = ${lkp_sucursales_cuenta.sucursal_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_categorias_cuenta {
    type: inner
    sql_on: ${fct_bonificaciones.categoria_cuenta_key} = ${lkp_categorias_cuenta.categoria_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_productos {
    type: inner
    sql_on: ${fct_bonificaciones.producto_key} = ${lkp_productos.producto_key} ;;
    relationship: many_to_one
  }
  join: lkp_estados_cuenta {
    type: inner
    sql_on: ${fct_bonificaciones.estado_cuenta_key} = ${lkp_estados_cuenta.estado_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_clientes_completa {
    type: inner
    sql_on: ${fct_bonificaciones.cliente_key} = ${lkp_clientes_completa.cliente_key} ;;
    relationship: many_to_one
  }
  join: lkp_cuentas {
    type: inner
    sql_on: ${fct_bonificaciones.cuenta_key} = ${lkp_cuentas.cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_radicacion {
    type: inner
    sql_on: ${lkp_clientes_completa.sucursal_radicacion_key} = ${lkp_sucursales_radicacion.sucursal_radicacion_key};;
    relationship: many_to_one
  }

}
