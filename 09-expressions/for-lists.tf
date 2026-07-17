locals {
    double_numbers = [for num in var.numbers_list : num * 2]
    even_numbers   = [for num in var.numbers_list : num if num % 2 == 0]
    firstnames     = [for person in var.object_list : person.firstnames]
    fullnames = [
        for person in var.object_list : "${person.firstname} ${person.lastname}"
    ]
}

output "double_numbers" {
    value = local.double_numbers
}

output "even_number" {
    value = local.even_numbers
}

output "firstnames" {
    value = local.firstnames
}

output "fullnames" {
    value = local.fullnames
}