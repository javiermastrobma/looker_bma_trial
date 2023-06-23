include: "/views/views_lkp/lkp_fechas.view"
include: "/views/views_pdt/cross_sell_empleador.view"

explore: cross_sell_empleador {
  label: "Plan Sueldo Cross Sell Empleador"
  description: "Tenencia de productos de las cápitas en stock agregado a nivel Empleador."
  persist_with: cross_sell_datagroup
  sql_always_where: ${lkp_fechas.periodo} >= "2021-01" ;;
  join: lkp_fechas {
    type: left_outer
    sql_on: ${cross_sell_empleador.fecha_key} = ${lkp_fechas.fecha_key};;
    relationship: many_to_one
  }
}
