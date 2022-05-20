service {
  name = "order-service"
  port = 8002

  connect {
    sidecar_service {
      proxy {
        upstreams = [
          {
            destination_name = "user-service"
            local_bind_port  = 8000
          }
        ]
      }
    }
  }

  check {
    id       = "dashboard-check"
    http     = "http://localhost:8002/health"
    method   = "GET"
    interval = "1s"
    timeout  = "1s"
  }
}

