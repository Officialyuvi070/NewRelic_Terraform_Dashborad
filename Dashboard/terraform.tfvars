count-Dashboards = {
  "0" = {
    name       = "My First Demo Dashboard"
    my-permissions = "public_read_only"
    page = {
      name = "My First Demo Dashboard"
      widget_billboard = {
        title  = "Requests per minute."
        row    = 1
        column = 1
        width  = 3
        height = 3
        nrql_query = {
          query = "FROM Transaction SELECT rate(count(*), 1 minute)"
        }
      }
      widget_bar = {
        title  = "Average transaction duration, by application"
        row    = 1
        column = 4
        width  = 3
        height = 3
        nrql_query = {
          query = "FROM Transaction SELECT average(duration) FACET appName"
        }
      }
      widget_line = {
        title  = "Average transaction duration and the request per minute, by application"
        row    = 1
        column = 7
        width  = 3
        height = 3
        nrql_query = {
          query = "FROM Transaction SELECT max(duration) as 'max duration' where httpResponseCode = '504' timeseries since 5 minutes ago"
        }
      }
    }
  }

  "1" = {
    name       = "My Second Demo Dashboard"
    my-permissions = "public_read_only"
    page = {
      name = "New Relic Terraform page-1"
      widget_billboard = {
        title  = "Requests per minute."
        row    = 1
        column = 1
        width  = 3
        height = 3
        nrql_query = {
          query = "FROM Transaction SELECT rate(count(*), 1 minute)"
        }
      }
      widget_bar = {
        title  = "Average transaction duration, by application"
        row    = 1
        column = 4
        width  = 3
        height = 3
        nrql_query = {
          query = "FROM Transaction SELECT average(duration) FACET appName"
        }
      }
      widget_line = {
        title  = "Average transaction duration and the request per minute, by application"
        row    = 1
        column = 7
        width  = 3
        height = 3
        nrql_query = {
          query = "FROM Transaction SELECT max(duration) as 'max duration' where httpResponseCode = '504' timeseries since 5 minutes ago"
        }
      }
    }
  }
}