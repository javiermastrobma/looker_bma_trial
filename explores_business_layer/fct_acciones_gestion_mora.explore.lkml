include: "/views/views_fct/fct_acciones_gestion_mora.view.lkml"
include: "/views/views_lkp/*.lkml"

explore: fct_acciones_gestion_mora {
  label: "Riesgos | Acciones Gestión Mora"
  conditionally_filter: {
    filters: [fct_acciones_gestion_mora.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }
  join: lkp_fechas {
    type: inner
    sql_on: ${fct_acciones_gestion_mora.fecha_key} = ${lkp_fechas.fecha_key} ;;
    relationship: many_to_one
  }
  #join: lkp_tramos_mora {}
  join: lkp_estados_gestion_mora {
    type: inner
    sql_on: ${fct_acciones_gestion_mora.estado_gestion_mora_key} = ${lkp_estados_gestion_mora.estado_gestion_mora_key} ;;
    relationship: many_to_one
  }
  #join: lkp_agencias_gestion_mora {}
  #join: lkp_tipos_respuesta_acciones {}
  join: lkp_residencias {
    type: inner
    sql_on: ${fct_acciones_gestion_mora.residencia_key} = ${lkp_residencias.residencia_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_cuenta {
    type: inner
    sql_on: ${fct_acciones_gestion_mora.sucursal_reclamo_key} = ${lkp_sucursales_cuenta.sucursal_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_sectores {
    type: inner
    sql_on: ${fct_acciones_gestion_mora.sector_key} = ${lkp_sectores.sector_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_acciones_gestion_mora.banco_key} = ${lkp_bancos.banco_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancas {
    type: inner
    sql_on: ${fct_acciones_gestion_mora.banca_key} = ${lkp_bancas.banca_key} ;;
    relationship: many_to_one
  }
  join: lkp_clientes_completa {
    type: inner
    sql_on: ${fct_acciones_gestion_mora.cliente_key} = ${lkp_clientes_completa.cliente_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_radicacion {
    type: inner
    sql_on: ${lkp_clientes_completa.sucursal_radicacion_key} = ${lkp_sucursales_radicacion.sucursal_radicacion_key} ;;
    relationship: many_to_one
  }
  #join: lkp_estrategias_gestion_mora {}
  #join: lkp_eventos_gestion_mora {}
  #join: lkp_tipos_acciones {}
  join: lkp_escenarios_gestion_mora {
    type: inner
    sql_on: ${fct_acciones_gestion_mora.escenario_key} = ${lkp_escenarios_gestion_mora.escenario_gestion_mora_key} ;;
    relationship: many_to_one
  }
}
