include: "/views/views_fct/fct_ajustes_reclamos.view"
include: "/views/views_lkp/*.view"

explore: fct_ajustes_reclamos {
  label: "Reclamos | Ajustes"
  conditionally_filter: {
    filters: [fct_ajustes_reclamos.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }
  join: lkp_fechas {
    type: inner
    sql_on: ${fct_ajustes_reclamos.fecha_key} = ${lkp_fechas.fecha_key} ;;
    relationship: many_to_one
  }
  join: lkp_reclamos {
    type: inner
    sql_on: ${fct_ajustes_reclamos.reclamo_key} = ${lkp_reclamos.reclamo_key} ;;
  relationship: many_to_one
}
  join: lkp_productos_genericos_reclamos  {
    type: inner
    sql_on: ${fct_ajustes_reclamos.producto_generico_ajuste_key} = ${lkp_productos_genericos_reclamos.producto_generico_key};;
  relationship: many_to_one
}
  join: lkp_causales_ajustes {
    type: inner
    sql_on: ${fct_ajustes_reclamos.causal_ajuste_key} = ${lkp_causales_ajustes.causal_ajuste_key} ;;
  relationship: many_to_one
}
  join: lkp_conceptos_ajustes {
    type: inner
    sql_on: ${fct_ajustes_reclamos.concepto_ajuste_key} = ${lkp_conceptos_ajustes.concepto_ajuste_key} ;;
  relationship: many_to_one
}
  join: lkp_bancas {
    type: inner
    sql_on: ${fct_ajustes_reclamos.banca_key} = ${lkp_bancas.banca_key} ;;
  relationship: many_to_one
}
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_ajustes_reclamos.banco_key} = ${lkp_bancos.banco_key} ;;
  relationship: many_to_one
}
  join: lkp_clientes_completa {
    type: inner
    sql_on: ${fct_ajustes_reclamos.cliente_key} = ${lkp_clientes_completa.cliente_key} ;;
  relationship: many_to_one
}
  join: lkp_tipos_autorizacion_ajustes {
    type: inner
    sql_on: ${fct_ajustes_reclamos.tipo_autorizacion_ajuste_key} = ${lkp_tipos_autorizacion_ajustes.tipo_autorizacion_ajuste_key} ;;
  relationship: many_to_one
}
  join: lkp_estados_conceptos {
    type: inner
    sql_on: ${fct_ajustes_reclamos.estado_concepto_key} = ${lkp_estados_conceptos.estado_concepto_key} ;;
  relationship: many_to_one
}
  join: lkp_estados_ajustes {
    type: inner
    sql_on: ${fct_ajustes_reclamos.estado_ajuste_key} = ${lkp_estados_ajustes.estado_ajuste_key}  ;;
  relationship: many_to_one
}
  join: lkp_sectores_reclamos {
    type: inner
    sql_on: ${fct_ajustes_reclamos.sector_producto_ajuste_key} = ${lkp_sectores_reclamos.sector_reclamo_key} ;;
  relationship: many_to_one
}
  join: lkp_catalogo_productos_crm {
    type: inner
    sql_on: ${fct_ajustes_reclamos.catalogo_producto_crm_key} = ${lkp_catalogo_productos_crm.catalogo_producto_crm_key} ;;
  relationship: many_to_one
}
  join: lkp_analistas_reclamos_ajuste {
    type: inner
    sql_on: ${fct_ajustes_reclamos.analista_creacion_ajuste_key} = ${lkp_analistas_reclamos_ajuste.analista_reclamo_key} ;;
    relationship: many_to_one
}
  join: lkp_analistas_reclamos_concepto {
    type: inner
    sql_on: ${fct_ajustes_reclamos.analista_creacion_concepto_key} = ${lkp_analistas_reclamos_ajuste.analista_reclamo_key} ;;
    relationship: many_to_one
  }
}
