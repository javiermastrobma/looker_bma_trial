include: "/views/views_fct/fct_ausentismo_sectores_reclamos.view.lkml"
include: "/views/views_lkp/lkp_fechas.view.lkml"
include: "/views/views_lkp/lkp_analistas_reclamos.view.lkml"
include: "/views/views_lkp/lkp_grupos_analisis_reclamos.view.lkml"
include: "/views/views_lkp/lkp_bancos.view.lkml"
include: "/views/views_lkp/lkp_motivos_ausentismo.view.lkml"

explore: fct_ausentismo_sectores_reclamos {
  label: "Reclamos | Ausentismo"
  conditionally_filter: {
    filters: [fct_ausentismo_sectores_reclamos.fecha_max: "yes"]
    unless: [lkp_fechas.fecha, lkp_fechas.periodo]
  }
join: lkp_fechas {
  type: inner
  sql_on: ${fct_ausentismo_sectores_reclamos.fecha_key} = ${lkp_fechas.fecha_key} ;;
  relationship: many_to_one
}
join: lkp_analistas_reclamos {
  type: inner
  sql_on: ${fct_ausentismo_sectores_reclamos.analista_reclamo_key} = ${lkp_analistas_reclamos.analista_reclamo_key} ;;
  relationship: many_to_one
}
join: lkp_grupos_analisis_reclamos {
  type: inner
  sql_on: ${fct_ausentismo_sectores_reclamos.analista_reclamo_key} = ${lkp_grupos_analisis_reclamos.grupo_analisis_reclamo_key} ;;
  relationship: many_to_one
}
join: lkp_bancos {
  type: inner
  sql_on: ${fct_ausentismo_sectores_reclamos.banco_key} = ${lkp_bancos.banco_key} ;;
  relationship: many_to_one
}
join: lkp_motivos_ausentismo {
  type: inner
  sql_on: ${fct_ausentismo_sectores_reclamos.motivo_ausentismo_key} = ${lkp_motivos_ausentismo.motivo_ausentismo_key} ;;
  relationship: many_to_one

  }
}
