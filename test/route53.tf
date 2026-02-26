resource "aws_route53_record" "www" {
    count =3
  zone_id = var.hosted_zone
  name    = "${var.instances[count.index]}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = [aws_instance.example[count.index].private_ip]
}