- dashboard: monitor_plan_sueldo_lookml
  title: Monitor Plan Sueldo (lookml)
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  description: ''
  preferred_slug: r3GrCVXaCRayhTrpnS4D13
  elements:
  - title: División
    name: División
    model: strategic_layer
    explore: Plan_Sueldo
    type: looker_grid
    fields: [lkp_sucursales_radicacion.division, lkp_sucursales_radicacion.detalle_division,
      Plan_Sueldo.sum_cantidad_capitas, sum_of_acreditacion_total_mes]
    filters: {}
    sorts: [Plan_Sueldo.sum_cantidad_capitas desc]
    limit: 500
    total: true
    dynamic_fields: [{category: measure, expression: '', label: Sum of Acreditacion
          Total Mes, value_format: "$#,##0,,", value_format_name: __custom, based_on: Plan_Sueldo.acreditacion_total_mes,
        _kind_hint: measure, measure: sum_of_acreditacion_total_mes, type: sum, _type_hint: number}]
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: [lkp_sucursales_radicacion.division_radicacion, lkp_sucursales_radicacion.detalle_division,
      Plan_Sueldo.sum_cantidad_capitas, sum_of_acreditacion_total_mes]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      Plan_Sueldo.sum_cantidad_capitas: Cantidad Capitas
      Plan_Sueldo.sum_acreditacion_total_mes: Acreditación Total Mes (MM$)
      sum_of_acreditacion_total_mes: Acreditación Total Mes (MM$)
      lkp_sucursales_radicacion.detalle_division: Detalle División
      lkp_sucursales_radicacion.division: División
    series_column_widths:
      lkp_sucursales_radicacion.division_radicacion: 105
      Plan_Sueldo.sum_cantidad_capitas: 84
      Plan_Sueldo.sum_acreditacion_total_mes: 124
      lkp_sucursales_radicacion.detalle_division: 82
      sum_of_acreditacion_total_mes: 129
    series_cell_visualizations:
      Plan_Sueldo.sum_cantidad_capitas:
        is_active: false
    series_text_format:
      lkp_sucursales_radicacion.division_radicacion:
        align: left
      lkp_sucursales_radicacion.detalle_division:
        align: center
        fg_color: "#003057"
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    header_font_color: "#fffafe"
    header_background_color: "#80868B"
    series_value_format:
      Plan_Sueldo.sum_acreditacion_total_mes: "$#,##0,,"
    truncate_column_names: false
    theme: contemporary
    customTheme: ''
    layout: fixed
    minWidthForIndexColumns: true
    headerFontSize: 12
    bodyFontSize: 12
    showTooltip: true
    showHighlight: true
    columnOrder: {}
    rowSubtotals: false
    colSubtotals: false
    spanRows: true
    spanCols: false
    calculateOthers: true
    sortColumnsBy: pivots
    useViewName: false
    useHeadings: false
    useShortName: false
    useUnit: false
    groupVarianceColumns: false
    genericLabelForSubtotals: false
    indexColumn: false
    transposeTable: false
    label|lkp_sucursales_radicacion.division_radicacion: Division Radicacion
    heading|lkp_sucursales_radicacion.division_radicacion: ''
    hide|lkp_sucursales_radicacion.division_radicacion: false
    label|lkp_sucursales_radicacion.detalle_division: Detalle Division
    heading|lkp_sucursales_radicacion.detalle_division: ''
    hide|lkp_sucursales_radicacion.detalle_division: false
    subtotalDepth: '1'
    label|Plan_Sueldo.sum_cantidad_capitas: Cantidad Capitas
    heading|Plan_Sueldo.sum_cantidad_capitas: ''
    style|Plan_Sueldo.sum_cantidad_capitas: normal
    reportIn|Plan_Sueldo.sum_cantidad_capitas: '1'
    unit|Plan_Sueldo.sum_cantidad_capitas: ''
    comparison|Plan_Sueldo.sum_cantidad_capitas: no_variance
    switch|Plan_Sueldo.sum_cantidad_capitas: false
    var_num|Plan_Sueldo.sum_cantidad_capitas: true
    var_pct|Plan_Sueldo.sum_cantidad_capitas: false
    label|sum_of_acreditacion_total_mes: Acreditación Total Mes
    heading|sum_of_acreditacion_total_mes: ''
    style|sum_of_acreditacion_total_mes: normal
    reportIn|sum_of_acreditacion_total_mes: '1'
    unit|sum_of_acreditacion_total_mes: ''
    comparison|sum_of_acreditacion_total_mes: no_variance
    switch|sum_of_acreditacion_total_mes: false
    var_num|sum_of_acreditacion_total_mes: true
    var_pct|sum_of_acreditacion_total_mes: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    hidden_points_if_no: []
    y_axes: []
    title_hidden: true
    listen:
      'Estado Monitor ': lkp_estados_ps.estado_monitor_ps
      Tipo Ps: lkp_bancas.tipo_ps
      'Banca ': lkp_bancas.banca
      'Segmento ': lkp_bancas.segmento
      Centralizado: Plan_Sueldo.centralizado
      Último mes cargado: Plan_Sueldo.fecha_maxima
      Mes: lkp_fechas.periodo
    row: 8
    col: 0
    width: 6
    height: 6
  - title: Región
    name: Región
    model: strategic_layer
    explore: Plan_Sueldo
    type: looker_grid
    fields: [Plan_Sueldo.sum_cantidad_capitas, lkp_sucursales_radicacion.region, sum_of_acreditacion_total_mes_1,
      lkp_sucursales_radicacion.detalle_region]
    filters: {}
    sorts: [Plan_Sueldo.sum_cantidad_capitas desc 0]
    limit: 500
    total: true
    dynamic_fields: [{measure: sum_of_acreditacion_total_mes, based_on: Plan_Sueldo.acreditacion_total_mes,
        expression: '', label: Sum of Acreditacion Total Mes, type: sum, _kind_hint: measure,
        _type_hint: number}, {category: measure, expression: '', label: Sum of Acreditacion
          Total Mes, value_format: "$#,##0,,", value_format_name: __custom, based_on: Plan_Sueldo.acreditacion_total_mes,
        _kind_hint: measure, measure: sum_of_acreditacion_total_mes_1, type: sum,
        _type_hint: number}]
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: false
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      Plan_Sueldo.sum_cantidad_capitas: Cantidad Capitas
      Plan_Sueldo.sum_acreditacion_total_mes: Acreditación Total Mes (MM$)
      sum_of_acreditacion_total_mes_1: Acreditación Total Mes (MM$)
      lkp_sucursales_radicacion.detalle_region: Detalle Región
      lkp_sucursales_radicacion.region: Región
    series_column_widths:
      Plan_Sueldo.sum_cantidad_capitas: 76
      Plan_Sueldo.sum_acreditacion_total_mes: 120
      lkp_sucursales_radicacion.region_radicacion: 158
      lkp_sucursales_radicacion.detalle_region: 88
      sum_of_acreditacion_total_mes_1: 123
    series_cell_visualizations:
      Plan_Sueldo.sum_cantidad_capitas:
        is_active: false
    series_text_format:
      lkp_sucursales_radicacion.detalle_region:
        fg_color: "#003057"
        align: center
    header_font_color: "#fafcff"
    header_background_color: "#80868B"
    series_value_format:
      Plan_Sueldo.sum_acreditacion_total_mes: "$#,##0,,"
    truncate_column_names: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    y_axes: []
    title_hidden: true
    listen:
      'Estado Monitor ': lkp_estados_ps.estado_monitor_ps
      Tipo Ps: lkp_bancas.tipo_ps
      'Banca ': lkp_bancas.banca
      'Segmento ': lkp_bancas.segmento
      Centralizado: Plan_Sueldo.centralizado
      Último mes cargado: Plan_Sueldo.fecha_maxima
      Mes: lkp_fechas.periodo
    row: 8
    col: 6
    width: 7
    height: 6
  - title: Stock por Division
    name: Stock por Division
    model: strategic_layer
    explore: Plan_Sueldo
    type: looker_grid
    fields: [Plan_Sueldo.sum_cantidad_capitas, lkp_sucursales_radicacion.division]
    filters: {}
    sorts: [Plan_Sueldo.sum_cantidad_capitas desc]
    limit: 500
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: true
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 80e60a97-c02b-4a41-aa05-83522ee2144b
      palette_id: 8b146fdb-43c2-42c2-a572-277b13e9ae5c
      options:
        steps: 5
        reverse: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      Plan_Sueldo.sum_cantidad_capitas: Cantidad Capitas
      Plan_Sueldo.sum_acreditacion_total_mes: Acreditación Total Mes (MM$)
    series_column_widths:
      lkp_sucursales_radicacion.division_radicacion: 140
    series_cell_visualizations:
      Plan_Sueldo.sum_cantidad_capitas:
        is_active: true
        palette:
          palette_id: d27e80ef-4ccc-7841-2143-bb7f9e890fe6
          collection_id: 80e60a97-c02b-4a41-aa05-83522ee2144b
          custom_colors:
          - "#1377b2"
          - "#10669c"
          - "#003057"
          - "#003057"
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    series_value_format:
      Plan_Sueldo.sum_acreditacion_total_mes: "$#,##0,,"
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: left
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: bottom, series: [{axisId: Plan_Sueldo.sum_cantidad_capitas,
            id: Plan_Sueldo.sum_cantidad_capitas, name: Cantidad Capitas}], showLabels: false,
        showValues: true, minValue: 20000, valueFormat: '0.000, "K"', unpinAxis: true,
        tickDensity: custom, tickDensityCustom: 9, type: linear}]
    hide_legend: false
    label_value_format: 0.000, "K"
    series_types: {}
    series_colors:
      Plan_Sueldo.sum_cantidad_capitas: "#003057"
    label_color: []
    defaults_version: 1
    hidden_fields: []
    title_hidden: true
    listen:
      'Estado Monitor ': lkp_estados_ps.estado_monitor_ps
      Tipo Ps: lkp_bancas.tipo_ps
      'Banca ': lkp_bancas.banca
      'Segmento ': lkp_bancas.segmento
      Centralizado: Plan_Sueldo.centralizado
      Último mes cargado: Plan_Sueldo.fecha_maxima
      Mes: lkp_fechas.periodo
    row: 8
    col: 13
    width: 11
    height: 6
  - title: 'Apertura Stock: Activa y Altas'
    name: 'Apertura Stock: Activa y Altas'
    model: strategic_layer
    explore: Plan_Sueldo
    type: looker_column
    fields: [lkp_fechas.periodo, Plan_Sueldo.cantidad_capitas_sin_activacion_mes,
      Plan_Sueldo.cantidad_altas]
    filters: {}
    sorts: [lkp_fechas.periodo]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: desc
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#8935bd"
    color_application:
      collection_id: ed5756e2-1ba8-4233-97d2-d565e309c03b
      palette_id: ff31218a-4f9d-493c-ade2-22266f5934b8
      options:
        steps: 5
        reverse: false
    y_axes: [{label: '', orientation: left, series: [{axisId: Plan_Sueldo.cantidad_capitas_sin_activacion_mes,
            id: Plan_Sueldo.cantidad_capitas_sin_activacion_mes, name: Activa}, {
            axisId: Plan_Sueldo.cantidad_altas, id: Plan_Sueldo.cantidad_altas, name: Activacion_Mes}],
        showLabels: true, showValues: true, minValue: 800000, unpinAxis: true, tickDensity: custom,
        tickDensityCustom: 8, type: linear}, {label: '', orientation: right, series: [
          {axisId: total, id: total, name: Evolucion}], showLabels: true, showValues: true,
        minValue: 500000, unpinAxis: true, tickDensity: custom, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: ''
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    font_size: '10'
    label_value_format: ''
    series_types:
      total: line
    series_colors:
      Plan_Sueldo.cantidad_capitas_sin_activacion_mes: "#ebc79a"
      Plan_Sueldo.cantidad_altas: "#b6d173"
      total: "#2e0e1d"
    series_labels:
      Plan_Sueldo.sum_cantidad_capitas: Cantidad Capitas
      Plan_Sueldo.sum_acreditacion_total_mes: Acreditación Total Mes (MM$)
      Plan_Sueldo.cantidad_capitas_sin_activacion_mes: Activa
      Plan_Sueldo.cantidad_altas: Activacion_Mes
      total: Evolucion
    series_point_styles: {}
    label_color: [black]
    reference_lines: []
    trend_lines: []
    show_dropoff: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_cell_visualizations:
      Plan_Sueldo.sum_cantidad_capitas:
        is_active: false
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_value_format:
      Plan_Sueldo.sum_acreditacion_total_mes: "$#,##0,,"
    defaults_version: 1
    hide_totals: false
    hide_row_totals: false
    hidden_fields: []
    title_hidden: true
    listen:
      'Estado Monitor ': lkp_estados_ps.estado_monitor_ps
      Tipo Ps: lkp_bancas.tipo_ps
      'Banca ': lkp_bancas.banca
      'Segmento ': lkp_bancas.segmento
      Centralizado: Plan_Sueldo.centralizado
      Periodo: lkp_fechas.periodo
    row: 16
    col: 0
    width: 11
    height: 6
  - title: Evolución Stock
    name: Evolución Stock
    model: strategic_layer
    explore: Plan_Sueldo
    type: looker_line
    fields: [lkp_fechas.periodo, Plan_Sueldo.sum_cantidad_capitas]
    filters: {}
    sorts: [lkp_fechas.periodo]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: Plan_Sueldo.sum_cantidad_capitas,
            id: Plan_Sueldo.sum_cantidad_capitas, name: Cantidad Capitas}], showLabels: true,
        showValues: true, minValue: 800000, valueFormat: '0, "K"', unpinAxis: false,
        tickDensity: custom, tickDensityCustom: 19, type: linear}]
    x_axis_label: ''
    label_value_format: ''
    series_types: {}
    series_colors: {}
    series_labels:
      Plan_Sueldo.sum_cantidad_capitas: Cantidad Capitas
      Plan_Sueldo.sum_acreditacion_total_mes: Acreditación Total Mes (MM$)
      Plan_Sueldo.cantidad_capitas_sin_activacion_mes: Activa
      Plan_Sueldo.cantidad_altas: Activacion_Mes
    x_axis_datetime_label: ''
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    series_cell_visualizations:
      Plan_Sueldo.sum_cantidad_capitas:
        is_active: false
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_value_format:
      Plan_Sueldo.sum_acreditacion_total_mes: "$#,##0,,"
    defaults_version: 1
    hide_totals: false
    hide_row_totals: false
    hidden_fields: []
    title_hidden: true
    listen:
      'Estado Monitor ': lkp_estados_ps.estado_monitor_ps
      Tipo Ps: lkp_bancas.tipo_ps
      'Banca ': lkp_bancas.banca
      'Segmento ': lkp_bancas.segmento
      Centralizado: Plan_Sueldo.centralizado
      Periodo: lkp_fechas.periodo
    row: 16
    col: 11
    width: 13
    height: 6
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "<div style=\"border-radius: 8px;border-bottom: solid 40px #003057;\"\
      >\n\n<nav style=\"font-size: 18px;width:100%\">\n\n<a style=\"padding: 15px;\
      \  box-sizing: content-box;width:55%;\nfloat: left; text-align: center; vertical-align:text-top;\
      \ line-height: 10px; font-weight: bold;color: #FFFFFF \" >Seleccionar Divisió\
      n</a>\n\n<a style=\"padding: 15px;  box-sizing: content-box; \nfloat: left;\
      \ text-align: center; vertical-align:text-top; line-height: 12px; font-weight:\
      \ bold;color: #FFFFFF \" >Seleccionar Región</a>\n"
    row: 6
    col: 0
    width: 13
    height: 2
  - name: " "
    type: text
    title_text: " "
    subtitle_text: ''
    body_text: "<div style=\"border-radius: 8px;border-bottom: solid 40px #003057;\"\
      >\n\n<nav style=\"font-size: 18px\">\n\n<a style=\"padding: 15px;  box-sizing:\
      \ content-box; width:100%; \nfloat: left; text-align: center; vertical-align:text-top;\
      \ line-height: 5px; font-weight: bold;color: #FFFFFF \" >Evolución Stock</a>\n\
      \n"
    row: 14
    col: 11
    width: 13
    height: 2
  - name: "  "
    type: text
    title_text: "  "
    subtitle_text: ''
    body_text: "<div style=\"border-radius: 8px;border-bottom: solid 40px #003057;\"\
      >\n\n<nav style=\"font-size: 18px\">\n\n<a style=\"padding: 20px;  box-sizing:\
      \ content-box; width:100%; \nfloat: left; text-align: center; vertical-align:text-top;\
      \ line-height: 10px; font-weight: bold;color: #FFFFFF \" >División</a>"
    row: 6
    col: 13
    width: 11
    height: 2
  - name: "   (2)"
    type: text
    title_text: "  "
    subtitle_text: ''
    body_text: "<div style=\"border-radius: 8px;border-bottom: solid 40px #003057;\"\
      >\n\n<nav style=\"font-size: 18px\">\n\n<a style=\"padding: 15px;  box-sizing:\
      \ content-box; width:100%; \nfloat: left; text-align: center; vertical-align:text-top;\
      \ line-height: 5px; font-weight: bold;color: #FFFFFF \" >Apertura Stock: Activa\
      \ y Altas</a>\n\n"
    row: 14
    col: 0
    width: 11
    height: 2
  - title: Untitled
    name: Untitled
    model: strategic_layer
    explore: Plan_Sueldo
    type: single_value
    fields: [lkp_fechas.mes, lkp_fechas.anio]
    sorts: [lkp_fechas.mes]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: 'concat(${lkp_fechas.mes},
          - ${lkp_fechas.anio})', label: Fecha, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: dimension, table_calculation: fecha, _type_hint: string}]
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
    custom_color: "#003057"
    conditional_formatting: [{type: not null, value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hidden_fields: [lkp_fechas.mes, lkp_fechas.anio]
    y_axes: []
    listen:
      Centralizado: Plan_Sueldo.centralizado
      Último mes cargado: Plan_Sueldo.fecha_maxima
      Mes: lkp_fechas.periodo
    row: 5
    col: 0
    width: 24
    height: 1
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "<div style=\" display: table-text;\"> \n\n<nav style=\"font-size:\
      \ 9px; padding: 1px 1px 1px 1px; height: 10px; width:100%\">\n\n<p><img src=\"\
      https://www.macro.com.ar/imagen/macrologoheader2020/macro_gral.png\" width=\"\
      12%\" height=\"50px\"></p>\n\n<a style=\"padding: 5px 5px; border-bottom: solid\
      \ 5px #003057;\ncolor: #003057;background-color: #003057;border-color: #003057;\
      \ box-sizing: content-box; width:12%;font-weight: bold; background-color: #FDFEFE;\n\
      float: left;text-align: center; vertical-align: top;line-height: 25px;margin-right:2px;font-weight:\
      \ bold;border-radius: 18px;\"\nhref=\"https://bancomacro.cloud.looker.com/dashboards/67?Centralizado=&Mes=&Tipo+Ps=&Segmento+=&Estado+Monitor+=Activa%2C%22Activacion_Mes%22&Banca+=&Periodo=&%C3%9Altimo+mes+cargado=true\"\
      >Monitor Plan Sueldo</a> \n\n<a style=\"padding: 5px 1px; border-top: solid\
      \ 2px #003057;\ncolor: #fff;background-color: #003057;border-color: #003057;\
      \ box-sizing: content-box; width:12%;\nfloat: left;text-align: center; vertical-align:\
      \ top;line-height: 25px;margin-right:5px;font-weight: bold;border-radius: 18px;\"\
      \nhref=\"https://bancomacro.cloud.looker.com/dashboards/68?Centralizado=&Periodo=&Tipo%20Ps=&Segmento%20=&Estado%20Monitor%20=Activa,%22Activacion_Mes%22&Banca%20=&Divisi%C3%B3n%20=\"\
      > Evolución Stock x División</a>\n\n<a style=\"padding: 5px 5px; border-top:\
      \ solid 2px #003057;\ncolor: #fff;background-color: #003057;border-color: #003057;box-sizing:\
      \ content-box; width:12%;\nfloat: left;text-align: center; vertical-align: top;line-height:\
      \ 25px;margin-right:2px;font-weight: bold;border-radius: 18px;\" \nhref=\"https://bancomacro.cloud.looker.com/dashboards/69?Periodo=&Segmento+=&Banca+=&Divisi%C3%B3n=&Regi%C3%B3n=&Centralizado=\"\
      >Stock Q/$</a>\n\n<a style=\"padding: 5px 5px; border-top: solid 2px #003057;\n\
      color: #fff;background-color: #003057;border-color: #003057; box-sizing: content-box;\
      \ width:12%;\nfloat: left;text-align: center; vertical-align: top;line-height:\
      \ 25px;margin-right:2px;font-weight: bold;border-radius: 18px;\" \nhref=\"https://bancomacro.cloud.looker.com/dashboards/70?Centralizado=&Periodo=&Tipo+Ps=&Segmento+=&Banca+=&Divisi%C3%B3n+=&Regi%C3%B3n+=&Sucursal+=\"\
      >Evolución Altas Netas</a>\n\n<a style=\"padding: 5px 5px; border-top: solid\
      \ 2px #003057;\ncolor: #fff;background-color: #003057;border-color: #003057;\
      \ box-sizing: content-box; width:12%;\nfloat: left;text-align: center; vertical-align:\
      \ top;line-height: 25px;margin-right:2px;font-weight: bold;border-radius: 18px;\"\
      \ \nhref=\"https://bancomacro.cloud.looker.com/dashboards/71?Periodo=&Tipo+Ps=&Banca+=\"\
      >Altas Netas</a>\n\n<a style=\"padding: 5px 5px; border-top: solid 2px #003057;\n\
      color: #fff;background-color: #003057;border-color: #003057; box-sizing: content-box;\
      \ width:12%;\nfloat: left;text-align: center; vertical-align: top;line-height:\
      \ 25px;margin-right:2px;font-weight: bold;border-radius: 18px;\" \nhref=\"https://bancomacro.cloud.looker.com/dashboards/72?Centralizado=&Periodo=&Tipo+Ps=&Segmento+=&Banca+=&Divisi%C3%B3n+=&Regi%C3%B3n+=&Sucursal+=\"\
      >Bajas</a>\n\n<a style=\"padding: 5px 5px; border-top: solid 2px #003057;\n\
      color: #fff;background-color: #003057;border-color: #003057; box-sizing: content-box;\
      \ width:12%;\nfloat: left;text-align: center; vertical-align: top;line-height:\
      \ 25px;margin-right:2px;font-weight: bold;border-radius: 18px;\" \nhref=\"https://bancomacro.cloud.looker.com/dashboards/73?Tipo+Ps=&Banca+=&Divisi%C3%B3n+=&Regi%C3%B3n+=&Sucursal+=\"\
      >Variaciones</a>\n\n\n"
    row: 0
    col: 0
    width: 24
    height: 3
  - name: " (3)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"p","children":[{"text":"Filtro Mes: ","bold":true},{"text":"Actúa
      sobre los tres Looks de arriba. \r\n"},{"text":"Filtro Periodo:","bold":true},{"text":"
      Actúa sobre los dos Looks de abajo."}],"id":1671807866533}]'
    rich_content_json: '{"format":"slate"}'
    row: 3
    col: 0
    width: 10
    height: 2
  filters:
  - name: Mes
    title: Mes
    type: field_filter
    default_value: ''
    allow_multiple_values: false
    required: false
    ui_config:
      type: advanced
      display: popover
    model: strategic_layer
    explore: Plan_Sueldo
    listens_to_filters: []
    field: lkp_fechas.periodo
  - name: Periodo
    title: Periodo
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: strategic_layer
    explore: Plan_Sueldo
    listens_to_filters: []
    field: lkp_fechas.periodo
  - name: Tipo Ps
    title: Tipo Ps
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: strategic_layer
    explore: Plan_Sueldo
    listens_to_filters: []
    field: lkp_bancas.tipo_ps
  - name: 'Banca '
    title: 'Banca '
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: strategic_layer
    explore: Plan_Sueldo
    listens_to_filters: []
    field: lkp_bancas.banca
  - name: 'Segmento '
    title: 'Segmento '
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: strategic_layer
    explore: Plan_Sueldo
    listens_to_filters: []
    field: lkp_bancas.segmento
  - name: Centralizado
    title: Centralizado
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: strategic_layer
    explore: Plan_Sueldo
    listens_to_filters: []
    field: Plan_Sueldo.centralizado
  - name: 'Estado Monitor '
    title: 'Estado Monitor '
    type: field_filter
    default_value: Activa,"Activacion_Mes"
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: inline
      options:
      - Activa
      - Activacion_Mes
    model: strategic_layer
    explore: Plan_Sueldo
    listens_to_filters: []
    field: lkp_estados_ps.estado_monitor_ps
  - name: Último mes cargado
    title: Último mes cargado
    type: field_filter
    default_value: 'true'
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
    model: strategic_layer
    explore: Plan_Sueldo
    listens_to_filters: []
    field: Plan_Sueldo.fecha_maxima
