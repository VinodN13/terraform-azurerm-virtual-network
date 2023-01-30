variable "tags" {
  type        = map(string)
  description = "A mapping of tags to assign to the resource."
  default = {
    Environment  = "Production"
    "Managed_by" = "terraform"
  }
}
