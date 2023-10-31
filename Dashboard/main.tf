resource "newrelic_one_dashboard" "My-Dashboards" {
    for_each = var.count-Dashboards
    name        = var.count-Dashboards[each.key].name
    permissions = var.count-Dashboards[each.key].my-permissions

    page {
    name = var.count-Dashboards[each.key].page.name

    widget_billboard {
      title  = var.count-Dashboards[each.key].page.widget_billboard.title
      row    = var.count-Dashboards[each.key].page.widget_billboard.row
      column = var.count-Dashboards[each.key].page.widget_billboard.column
      width  = var.count-Dashboards[each.key].page.widget_billboard.width
      height = var.count-Dashboards[each.key].page.widget_billboard.height

      nrql_query {
        query = var.count-Dashboards[each.key].page.widget_billboard.nrql_query.query
      }
    }

    widget_bar {
      title  = var.count-Dashboards[each.key].page.widget_bar.title
      row    = var.count-Dashboards[each.key].page.widget_bar.row
      column = var.count-Dashboards[each.key].page.widget_bar.column
      width  = var.count-Dashboards[each.key].page.widget_bar.width
      height = var.count-Dashboards[each.key].page.widget_bar.height

      nrql_query {
        query = var.count-Dashboards[each.key].page.widget_bar.nrql_query.query
      }
    }

    widget_line {
      title  = var.count-Dashboards[each.key].page.widget_line.title
      row    = var.count-Dashboards[each.key].page.widget_line.row
      column = var.count-Dashboards[each.key].page.widget_line.column
      width  = var.count-Dashboards[each.key].page.widget_line.width
      height = var.count-Dashboards[each.key].page.widget_line.height

      nrql_query {
        query = var.count-Dashboards[each.key].page.widget_line.nrql_query.query
      }
    }
  }
}