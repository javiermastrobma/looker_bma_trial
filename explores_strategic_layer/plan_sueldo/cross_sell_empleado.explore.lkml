include: "/views/views_lkp/lkp_fechas.view"
include: "/views/views_pdt/cross_sell_empleado.view"

explore: cross_sell_empleado {
  label: "Plan Sueldo Cross Sell Empleado"
  description: "Tenencia de productos de capitas en stock. (Mensual)."
  persist_with: cross_sell_datagroup
  sql_always_where: ${lkp_fechas.periodo} >= "2021-01" ;;
  join: lkp_fechas {
    type: left_outer
    sql_on: ${cross_sell_empleado.fecha_key} = ${lkp_fechas.fecha_key} ;;
    relationship: many_to_one
  }
}
