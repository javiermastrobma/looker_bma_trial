include: "/views/views_lkp/lkp_convenios_cuenta.view"
include: "/views/views_lkp/lkp_convenios.view"


explore: lkp_convenios_cuenta {
  label: "Plan Sueldo Convenios Cuenta"
  sql_always_where: ${lkp_convenios.tipo} = "AS" and ${lkp_convenios.grupo} in ('AS','HON');;

  join: lkp_convenios {
    type: left_outer
    sql_on: ${lkp_convenios_cuenta.convenio_key} = ${lkp_convenios.convenio_key} ;;
    relationship: many_to_one
  }
}
