include: "/views/views_fct/fct_certificados_en_garantia.view.lkml"
include: "/views/views_lkp/*.view.lkml"

explore: fct_certificados_en_garantia {
  label: "Activas | Certificados en Garantía Diaria"
  conditionally_filter: {
    filters: [fct_certificados_en_garantia.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }
  join: lkp_fechas {
    type: inner
    sql_on: ${fct_certificados_en_garantia.fecha_key} = ${lkp_fechas.fecha_key} ;;
    relationship: many_to_one
  }
  join: lkp_garantias_recibidas {
    type: inner
    sql_on: ${fct_certificados_en_garantia.garantia_recibida_key} = ${lkp_garantias_recibidas.garantia_recibida_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_certificados_en_garantia.banco_key} = ${lkp_bancos.banco_key} ;;
    relationship: many_to_one
  }
  join: lkp_especies_pf {
    type: inner
    sql_on: ${fct_certificados_en_garantia.especie_pf_key} = ${lkp_especies_pf.especie_key} ;;
    relationship: many_to_one
  }
  join: lkp_especies_prestamo {
    type: inner
    sql_on: ${fct_certificados_en_garantia.especie_prestamo_key} = ${lkp_especies_prestamo.especie_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_cuenta {
    type: inner
    sql_on: ${fct_certificados_en_garantia.sucursal_cuenta_pf_key} = ${lkp_sucursales_cuenta.sucursal_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_productos {
    type: inner
    sql_on: ${fct_certificados_en_garantia.producto_prestamo_key} = ${lkp_productos.producto_key} ;;
    relationship: many_to_one
  }
  join: lkp_prestamos {
    type: inner
    sql_on: ${fct_certificados_en_garantia.cuenta_prestamo_key} = ${lkp_prestamos.cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_cuentas_pf {
    type: inner
    sql_on: ${fct_certificados_en_garantia.cuenta_pf_key} = ${lkp_cuentas_pf.cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_cuentas_prestamo {
    type: inner
    sql_on: ${fct_certificados_en_garantia.cuenta_prestamo_key} = ${lkp_cuentas_prestamo.cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_clientes_pf {
    type: inner
    sql_on: ${fct_certificados_en_garantia.cliente_pf_key} = ${lkp_clientes_pf.cliente_key} ;;
    relationship: many_to_one
  }
  join: lkp_clientes_prestamo {
    type: inner
    sql_on: ${fct_certificados_en_garantia.cliente_prestamo_key} = ${lkp_clientes_prestamo.cliente_key} ;;
    relationship: many_to_one
  }
  join: lkp_estados_garantia {
    type: inner
    sql_on: ${fct_certificados_en_garantia.estado_garantia_key} = ${lkp_estados_garantia.estado_garantia_key} ;;
    relationship: many_to_one
  }
}
