# # CloudFront Cache Distribution
# resource "aws_cloudfront_distribution" "cf" {
#   enabled     = true
#   comment     = "cache distribution"
#   price_class = "PriceClass_All"

#   origin {
#     domain_name = "00374.engineed-exam.com"
#     origin_id   = aws_alb.alb.name

#     custom_origin_config {
#       origin_protocol_policy = "match-viewer"
#       origin_ssl_protocols   = ["TLSv1", "TLSv1.1", "TLSv1.2"]
#       http_port              = 80
#       https_port             = 443
#     }
#   }



#   default_cache_behavior {
#     allowed_methods = ["GET", "HEAD"]
#     cached_methods  = ["GET", "HEAD"]


#     forwarded_values {
#       query_string = true
#       cookies {
#         forward = "all"
#       }
#     }
#     target_origin_id       = aws_alb.alb.name
#     viewer_protocol_policy = "redirect-to-https"
#     min_ttl                = 0
#     default_ttl            = 0
#     max_ttl                = 0
#   }

#   restrictions {
#     geo_restriction {
#       restriction_type = "none"
#     }
#   }

#   # aliases = []

#   viewer_certificate {
#     # acmacm_certificate
#   }

# }


# resource "aws_route53_record" "route53_cloudfront" {
#   zone_id = "Z00995921EHOMVDSTO90J"
#   name    = "00374.engineed-exam.com"
#   type    = "A"

#   alias {
#     name                   = aws_cloudfront_distribution.cf.domain_name
#     zone_id                = aws_cloudfront_distribution.cf.hosted_zone_id
#     evaluate_target_health = true
#   }
# }
