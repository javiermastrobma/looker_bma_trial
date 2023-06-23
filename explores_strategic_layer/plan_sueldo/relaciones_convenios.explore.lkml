include: "/views/views_lkp/lkp_fechas.view.lkml"
include: "/views/views_lkp/lkp_capitas_plan_sueldo.view.lkml"
include: "/views/views_lkp/lkp_clientes_completa.view.lkml"
include: "/views/views_lkp/lkp_convenios_cuenta.view.lkml"
include: "/views/views_lkp/lkp_convenios.view.lkml"
include: "/views/views_lkp/lkp_cuentas.view.lkml"
include: "/views/views_lkp/lkp_estados_convenios_cuenta.view.lkml"


explore: relaciones_convenios {
  label: "Plan Sueldo Padron Capitas"
  description: "Datos de empleadores, empleados, convenios y estado de sus relaciones."
  persist_with: relaciones_convenio_datagroup
  from: lkp_capitas_plan_sueldo
  join: lkp_fechas_alta_capita_key {
    from: lkp_fechas
    type: inner
    sql_on: ${relaciones_convenios.fecha_alta_capita_key} = ${lkp_fechas_alta_capita_key.fecha_key} ;;
    relationship: many_to_one
  }
  join: lkp_clientes_completa_convenio {
    from: lkp_clientes_completa
    type: inner
    sql_on: ${relaciones_convenios.cliente_convenio_key} = ${lkp_clientes_completa_convenio.cliente_key};;
    relationship: many_to_one
  }
  join: lkp_clientes_completa_capita {
    from: lkp_clientes_completa
    type: inner
    sql_on: ${relaciones_convenios.cliente_capita_key} = ${lkp_clientes_completa_capita.cliente_key} ;;
    relationship: many_to_one
  }
  join: lkp_convenios_cuenta {
    type: inner
    sql_on: ${relaciones_convenios.capita_key} = ${lkp_convenios_cuenta.capita_key} ;;
    relationship: many_to_one
  }
  join: lkp_cuentas {
    type: inner
    sql_on: ${lkp_convenios_cuenta.cuenta_key} = ${lkp_cuentas.cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_convenios {
    type: inner
    sql_on: ${lkp_convenios_cuenta.convenio_key} = ${lkp_convenios.convenio_key} ;;
    relationship: many_to_one
  }
  join: lkp_estados_convenios_cuenta {
    type: inner
    sql_on: ${lkp_convenios_cuenta.estado_convenio_cuenta_key} = ${lkp_convenios_cuenta.estado_convenio_cuenta_key} ;;
    relationship: many_to_one
  }
  join: lkp_fechas_ultimo_estado_key {
    from: lkp_fechas
    type: inner
    sql_on: ${lkp_fechas_ultimo_estado_key.fecha_key} = ${lkp_convenios_cuenta.fecha_ultimo_estado_key} ;;
    relationship: many_to_one
  }
}
