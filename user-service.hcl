service {
  name = "user-service"
  id = "user-service-1"
  port = 8003

  connect {
    sidecar_service {}
  }

  check {
    id       = "user-service-check"
    http     = "http://localhost:8003/health"
    method   = "GET"
    interval = "1s"
    timeout  = "1s"
  }
}

