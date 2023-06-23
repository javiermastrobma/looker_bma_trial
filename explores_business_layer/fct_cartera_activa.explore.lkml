include: "/views/views_fct/fct_cartera_activa.view"
include: "/views/views_lkp/*.view"


explore: fct_cartera_activa {
  label: "Activas | Saldos Mensuales"
  description: "Detalle saldos mensuales de operaciones de crédito."
    conditionally_filter: {
      filters: [fct_cartera_activa.fecha_max: "yes"]
      unless: [lkp_fechas.fecha, lkp_fechas.periodo]
    }

  sql_always_where: {% if pop_fanout.pop._in_query %}
            ${lkp_fechas.fecha_key} = ${pop_fanout.fecha_key}
            {% else %}
            ${lkp_fechas.fecha_key} = ${fct_cartera_activa.fecha_key}
            {% endif %}
             ;;

  join: lkp_fechas {
    type: inner ##left_outer
    sql_on:${lkp_fechas.fecha_key} = ${pop_fanout.fecha_key} ;;
    relationship: many_to_one
  }
  join: pop_fanout {
    type: inner
    sql_on: ${fct_cartera_activa.fecha_key} = ${pop_fanout.fecha_pop_key} ;;
    relationship: many_to_one
  }

  # join: lkp_fechas {
  #   type: inner
  #   sql_on: ${fct_cartera_activa.fecha_key} = ${lkp_fechas.fecha_key} ;;
  #   relationship: many_to_one
  # }
  # join: lkp_prestamos {
  #   type: inner
  #   sql: ${fct_cartera_activa.cuenta_key} = ${lkp_prestamos.cuenta_key} ;;
  #   relationship: many_to_one
  # }
  join: lkp_acuerdos {
    type: inner
    sql_on: ${fct_cartera_activa.acuerdo_key} = ${lkp_acuerdos.acuerdo_key} ;;
    relationship: many_to_one
  }
  join: lkp_sucursales_radicacion {
    type: inner
    sql_on: ${lkp_clientes_completa.sucursal_radicacion_key} = ${lkp_sucursales_radicacion.sucursal_radicacion_key};;
    relationship: many_to_one
  }
  join: lkp_sucursales_cuenta {
    type: inner
    sql_on: ${fct_cartera_activa.sucursal_cuenta_key} = ${lkp_sucursales_cuenta.sucursal_cuenta_key};;
    relationship: many_to_one
  }
  join: lkp_tipos_cuenta {
    type: inner
    sql_on: ${fct_cartera_activa.tipo_cuenta_key} = ${lkp_tipos_cuenta.tipo_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_tipos_cartera {
    type: inner
    sql_on: ${fct_cartera_activa.tipo_cartera_key} = ${lkp_tipos_cartera.tipo_cartera_key} ;;
    relationship: many_to_one
  }
  join: lkp_estado_deuda {
    type: inner
    sql_on: ${fct_cartera_activa.estado_deuda_key} = ${lkp_estado_deuda.estado_deuda_key} ;;
    relationship: many_to_one
  }
  join: lkp_clasificaciones_contables {
    type: inner
    sql_on: ${fct_cartera_activa.clasificacion_contable_key} = ${lkp_clasificaciones_contables.clasificacion_contable_key} ;;
    relationship: many_to_one
  }
  join: lkp_dias_mora {
    type: inner
    sql_on: ${fct_cartera_activa.dias_mora_key} = ${lkp_dias_mora.dias_mora_key} ;;
    relationship: many_to_one
  }
  join: lkp_fecha_vencimiento {
    type: inner
    sql_on: ${fct_cartera_activa.fecha_vencimiento_key} = ${lkp_fecha_vencimiento.fecha_vencimiento_key} ;;
    relationship: many_to_one
  }
  join: lkp_situaciones_deudor_banco {
    type: inner
    sql_on: ${fct_cartera_activa.situacion_deudor_banco_key} = ${lkp_situaciones_deudor_banco.situacion_deudor_banco_key} ;;
    relationship: many_to_one
  }
  join: lkp_situaciones_deudor_bcra {
    type:  inner
    sql_on: ${fct_cartera_activa.situacion_deudor_bcra_key} = ${lkp_situaciones_deudor_bcra.situacion_deudor_bcra_key} ;;
    relationship: many_to_one
  }
  join: lkp_inactividad {
    type: inner
    sql_on: ${fct_cartera_activa.inactividad_key} = ${lkp_inactividad.inactividad_key} ;;
    relationship: many_to_one
  }
  join: lkp_bloqueos {
    type: inner
    sql_on: ${fct_cartera_activa.bloqueo_key} = ${lkp_bloqueos.bloqueo_key} ;;
    relationship: many_to_one
  }
  join: lkp_abonos {
    type: inner
    sql_on: ${fct_cartera_activa.abono_key} = ${lkp_abonos.abono_key} ;;
    relationship: many_to_one
  }
  join: lkp_bancos {
    type: inner
    sql_on: ${fct_cartera_activa.banco_key} = ${lkp_bancos.banco_key} ;;
    relationship: many_to_one
  }
  join: lkp_cuentas {
    type: inner
    sql_on: ${fct_cartera_activa.cuenta_key} = ${lkp_cuentas.cuenta_key} ;;
    relationship: many_to_one
  }
join: lkp_bancas {
  type: inner
  sql_on: ${fct_cartera_activa.banca_key} = ${lkp_bancas.banca_key} ;;
  relationship: many_to_one
  }
  join: lkp_clientes_completa {
    type: inner
    sql_on: ${fct_cartera_activa.cliente_key} = ${lkp_clientes_completa.cliente_key} ;;
    relationship: many_to_one
  }
  join: lkp_especies {
    type: inner
    sql_on: ${fct_cartera_activa.especie_key} = ${lkp_especies.especie_key} ;;
    relationship: many_to_one
  }
  join: lkp_mercados {
    type: inner
    sql_on: ${fct_cartera_activa.mercado_key} = ${lkp_mercados.mercado_key} ;;
    relationship: many_to_one
  }
  join: lkp_oficiales_cuenta {
    type: inner
    sql_on: ${fct_cartera_activa.oficial_cuenta_key} = ${lkp_oficiales_cuenta.oficial_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_productos {
    type: inner
    sql_on: ${fct_cartera_activa.producto_key} = ${lkp_productos.producto_key} ;;
    relationship: many_to_one
  }
  join: lkp_categorias_cuenta {
    type: inner
    sql_on: ${fct_cartera_activa.categoria_cuenta_key} = ${lkp_categorias_cuenta.categoria_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_tipos_persona {
    type:  inner
    sql_on: ${fct_cartera_activa.tipo_persona_key} = ${lkp_tipos_persona.tipo_persona_key} ;;
    relationship: many_to_one
  }
  join: lkp_unidades_cobranza {
    type: inner
    sql_on: ${fct_cartera_activa.unidad_cobro_key} = ${lkp_unidades_cobranza.unidad_cobranza_key}_key ;;
    relationship: many_to_one
  }
  join: lkp_unidades_recupero {
    type: inner
    sql_on: ${fct_cartera_activa.unidad_recupero_key} = ${lkp_unidades_recupero.unidad_recupero_key} ;;
    relationship: many_to_one
  }
  join: lkp_estados_cuenta {
    type: inner
    sql_on: ${fct_cartera_activa.estado_cuenta_key} = ${lkp_estados_cuenta.estado_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_residencias {
    type: inner
    sql_on: ${fct_cartera_activa.residencia_key} = ${lkp_residencias.residencia_key} ;;
    relationship: many_to_one
  }
  join: lkp_sectores {
    type: inner
    sql_on: ${fct_cartera_activa.sector_key} = ${lkp_sectores.sector_key} ;;
    relationship: many_to_one
  }
  join: lkp_actividades {
    type: inner
    sql_on: ${fct_cartera_activa.actividad_key} = ${lkp_actividades.actividad_key} ;;
    relationship: many_to_one
  }
  }
