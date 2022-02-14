resource "aws_network_interface" "interface1" {
  count = 1
  subnet_id = tolist(data.aws_subnet_ids.aqua-all.ids)[count.index]
}
