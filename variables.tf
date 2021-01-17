variable "distribution_id" {
  type        = string
  description = ""
}
variable "identifier" {
  type        = string
  description = ""
}
variable "alarm_actions" {
  type        = list(string)
  description = ""
  default     = []
}
variable "ok_actions" {
  type        = list(string)
  description = ""
  default     = []
}
variable "insufficient_data_actions" {
  type        = list(string)
  description = ""
  default     = []
}
variable "tags" {
  type        = map(string)
  default     = {}
  description = "A mapping of tags to assign to the resource"
}
