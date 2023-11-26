resource "aws_route_table_association" "test" {
  subnet_id      = aws_subnet.subnet.id
  route_table_id = aws_route_table.route.id
}
