output "api_url" {
  value = {
    for lake in sort(keys(var.data_lakes)) :
    lake => module.data_lake[lake].api_url
  }
}

output "userpool_id" {
  value = {
    for lake in sort(keys(var.data_lakes)) :
    lake => module.data_lake[lake].userpool_id
  }
}

output "api_key" {
  value = {
    for lake in sort(keys(var.data_lakes)) :
    lake => module.data_lake[lake].api_key
  }
  sensitive = true
}

output "client_id" {
  value = {
    for lake in sort(keys(var.data_lakes)) :
    lake => module.data_lake[lake].client_id
  }
}

output "username" {
  value = {
    for lake in sort(keys(var.data_lakes)) :
    lake => module.data_lake[lake].username
  }
}

output "password" {
  value = {
    for lake in sort(keys(var.data_lakes)) :
    lake => module.data_lake[lake].password
  }
}