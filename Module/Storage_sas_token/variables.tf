variable "connection_string" {
  type = string
}

variable "https_only" {
  type = bool
}

variable "signed_version" {
  type = string
}

# resource Types
variable "service" {
  type = string
}

variable "container" {
  type = string
}

variable "object" {
  type = string
}

# Services
variable "blob" {
  type = string
}

variable "queue" {
  type = string
}

variable "table" {
  type = string
}

variable "file" {
  type = string
}

# SAS Token Validity Period
variable "start" {
  type = string
}

variable "expiry" {
  type = string
}

#Permissions
variable "read" {
  type = string
}

variable "write" {
  type = string
}

variable "delete" {
  type = string
}

variable "list" {
  type = string
}

variable "add" {
  type = string
}

variable "create" {
  type = string
}

variable "update" {
  type = string
}

variable "process" {
  type = string
}

variable "tag" {
  type = string
}

variable "filter" {
  type = string
}