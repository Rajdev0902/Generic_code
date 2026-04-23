variable "stgacc" {
type = map(object({
  stgname = string
  resource_group_name = string
  location = string
  account_tier = string
 replication_type = string
  tags = map(string)
}))
}

