include: "/views/views_fct/fct_compras_comercios_td.view.lkml"
include: "/views/views_lkp/*.view.lkml"

explore: fct_compras_comercios_td {
  label: "Medios de Pago | Compras Comercios TD Diaria"
  conditionally_filter: {
    filters: [fct_compras_comercios_td.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }

  join: lkp_fechas {
    type: inner
    sql_on: ${fct_compras_comercios_td.fecha_key} = ${lkp_fechas.fecha_key} ;;
    relationship: many_to_one
  }
  join: lkp_cuentas_td {
    type: inner
    sql_on: ${fct_compras_comercios_td.cuenta_debito_key} = ${lkp_cuentas_td.cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_modalidades_compra {
    type: inner
    sql_on: ${fct_compras_comercios_td.modalidad_compra_key} = ${lkp_modalidades_compra.modalidad_compra_key} ;;
    relationship: many_to_one
  }
  join: lkp_motivos_reversa {
    type: inner
    sql_on: ${fct_compras_comercios_td.motivo_reversa_key} = ${lkp_motivos_reversa.motivo_reversa_key} ;;
    relationship: many_to_one
  }
  join: lkp_estados_transaccion {
    type: inner
    sql_on: ${fct_compras_comercios_td.estado_transaccion_key} = ${lkp_estados_transaccion.estado_transaccion_key}  ;;
    relationship: many_to_one
  }
  join: lkp_tipos_transaccion {
    type: inner
    sql_on: ${fct_compras_comercios_td.tipo_transaccion_key} = ${lkp_tipos_transaccion.tipo_transaccion_key} ;;
    relationship: many_to_one
  }
  join: lkp_clientes_completa {
    type: inner
    sql_on: ${fct_compras_comercios_td.cliente_key} = ${lkp_clientes_completa.cliente_key} ;;
    relationship: many_to_one
  }
  join: lkp_paises {
    type: inner
    sql_on: ${fct_compras_comercios_td.pais_key} = ${lkp_paises.pais_key} ;;
    relationship: many_to_one
  }
  join: lkp_horas {
    type: inner
    sql_on: ${fct_compras_comercios_td.hora_key} = ${lkp_horas.hora_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_compras_comercios_td.banco_key} = ${lkp_bancos.banco_key} ;;
    relationship: many_to_one
  }
  join: lkp_especies {
    type: inner
    sql_on: ${fct_compras_comercios_td.especie_key} = ${lkp_especies.especie_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_cuenta {
    type: inner
    sql_on: ${fct_compras_comercios_td.sucursal_cuenta_key} = ${lkp_sucursales_cuenta.sucursal_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_radicacion {
    type: inner
    sql_on: ${lkp_clientes_completa.sucursal_radicacion_key} = ${lkp_sucursales_radicacion.sucursal_radicacion_key} ;;
    relationship: many_to_one
  }
  join: lkp_productos {
    type: inner
    sql_on: ${fct_compras_comercios_td.producto_key} = ${lkp_productos.producto_key}  ;;
    relationship: many_to_one
  }
  join: lkp_bancas {
    type: inner
    sql_on: ${fct_compras_comercios_td.banca_key} = ${lkp_bancas.banca_key} ;;
    relationship: many_to_one
  }
  join: lkp_cuentas {
    type: inner
    sql_on: ${fct_compras_comercios_td.cuenta_key} = ${lkp_cuentas.cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_cuentas_debito  {
    type: inner
    sql_on: ${fct_compras_comercios_td.cuenta_debito_key} = ${lkp_cuentas_debito.cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_rubros {
    type: inner
    sql_on: ${fct_compras_comercios_td.rubro_key} = ${lkp_rubros.rubro_key} ;;
    relationship: many_to_one
  }
  join: lkp_comercios_completa {
    type: inner
    sql_on: ${fct_compras_comercios_td.comercio_key} = ${lkp_comercios_completa.comercio_key} ;;
    relationship: many_to_one
  }


}
