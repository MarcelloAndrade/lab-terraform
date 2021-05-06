output "public-ip-develop-2" {
    value = "${aws_instance.develop-2.public_ip}"
}