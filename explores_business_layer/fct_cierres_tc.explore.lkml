include: "/views/views_fct/fct_cierres_tc.view.lkml"
include: "/views/views_lkp/*.view.lkml"

explore: fct_cierres_tc {
  label: "Medios de Pago | Fechas Cierre TC"
  conditionally_filter: {
    filters: [fct_cierres_tc.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }
  join: lkp_cuentas_tc {
    type: inner
    sql_on: ${fct_cierres_tc.estado_cuenta_tc_key} = ${lkp_cuentas_tc.cuenta_tc_key} ;;
    relationship: many_to_one
  }
  join: lkp_campanias {
    type: inner
    sql_on: ${fct_cierres_tc.campania_key} = ${lkp_campanias.campania_key} ;;
    relationship: many_to_one
  }
  join: lkp_estados_paquetes{
    type: inner
    sql_on: ${fct_cierres_tc.estado_paquete_key} = ${lkp_estados_paquetes.estado_paquete_key};;
    relationship: many_to_one
  }
  join: lkp_paquetes{
    type: inner
    sql_on: ${fct_cierres_tc.cuenta_paquete_key} = ${lkp_paquetes.paquete_key};;
    relationship: many_to_one
  }
  join: lkp_tipos_paquete {
    type: inner
    sql_on: ${fct_cierres_tc.tipo_paquete_key} = ${lkp_tipos_paquete.tipos_paquete_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_cierres_tc.banco_key} = ${lkp_bancos.banco_key} ;;
    relationship: many_to_one
  }
  join: lkp_actividades {
    type: inner
    sql_on: ${fct_cierres_tc.actividad_key} = ${lkp_actividades.actividad_key};;
    relationship: many_to_one
  }
  join: lkp_residencias {
    type: inner
    sql_on: ${fct_cierres_tc.residencia_key} = ${lkp_residencias.residencia_key};;
    relationship: many_to_one
  }
  join:  lkp_sectores{
    type: inner
    sql_on: ${fct_cierres_tc.sector_key} on ${lkp_sectores.sector_key};;
    relationship: many_to_one
  }
  join: lkp_oficiales_cuenta {
    type: inner
    sql_on: ${fct_cierres_tc.oficial_cuenta_key} = ${lkp_oficiales_cuenta.oficial_cuenta_key};;
   relationship: many_to_one
  }
  join: lkp_productos {
    type: inner
    sql_on: ${fct_cierres_tc.producto_key} = ${lkp_productos.producto_key};;
    relationship: many_to_one
  }
  join: lkp_bancas {
    type: inner
    sql_on: ${fct_cierres_tc.banca_key} = ${lkp_bancas.banca_key};;
    relationship: many_to_one
  }
  join: lkp_clientes_completa {
    type: inner
    sql_on: ${fct_cierres_tc.cliente_key} = ${lkp_clientes_completa.cliente_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_cuenta {
    type: inner
    sql_on: ${fct_cierres_tc.sucursal_cuenta_key} = ${lkp_cuentas_tc.sucursal_cuenta_key} ;;
    relationship: many_to_one
  }
 #join: lkp_otros_atributos_cuentas_tc {}
  join:  lkp_estados_cuentas_tc{
    type: inner
    sql_on: ${fct_cierres_tc.estado_cuenta_tc_key} = ${lkp_estados_cuentas_tc.estado_cuenta_tc_key};;
    relationship: many_to_one
  }
   join: lkp_grupos_afinidad_1 {
     type: inner
     sql_on: ${fct_cierres_tc.grupo_afinidad_key} = ${lkp_grupos_afinidad_1.grupo_afinidad_key};;
     relationship: many_to_one
 }
  join: lkp_modelos_liquidacion_tc {
    type: inner
    sql_on: ${fct_cierres_tc.modelo_liquidacion_tc_key} = ${lkp_modelos_liquidacion_tc.modelo_liquidacion_tc_key};;
    relationship: many_to_one
  }
# join: lkp_cliente_cumplidor {}
  join: lkp_debitos_tc {
    type: inner
    sql_on: ${fct_cierres_tc.debitos_tc_key} = ${lkp_debitos_tc.debitos_tc_key} ;;
    relationship: many_to_one
  }
  join: lkp_carteras_tc {
    type: inner
    sql_on: ${fct_cierres_tc.cartera_tc_key} = ${lkp_carteras_tc.cartera_tc_key};;
  relationship: many_to_one
  }
  join: lkp_fechas {
    type: inner
    sql_on: ${fct_cierres_tc.fecha_key} = ${lkp_fechas.fecha_key};;
  relationship: many_to_one
  }
  join: lkp_sucursales_radicacion {
    type: inner
    sql_on: ${lkp_clientes_completa.sucursal_radicacion_key} = ${lkp_sucursales_radicacion.sucursal_radicacion_key} ;;
    relationship: many_to_one
  }
}
