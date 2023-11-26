provider "aws" {
  access_key = "ASIAUQNDJNH5LHYHJL5U"
  secret_key = "6jZpFwAakWqaCW5vrmmMYd5llLNigTXSfMEyWdLG"
  token = "FwoGZXIvYXdzEEgaDPWf6yU2e4ct9LCCWyK3Ablo0JrOwNPvzeUkaBcZWUzizXq2/stp8953JHehsxd1KrX5gjCKVI19BLOeETowa+uLdZPBZt7PNEOLgqWMgeH2npCiX8kE3z+vfs1zVWIEpt/j9zS5WkJ3xtxzxP6lIlsRHLsTCSOM0t/m/TTu6w5eNn0ZyLStpqfuFp8rwUC6bntTaDJn5k2gDCU6NgqCIH5tYc5LxiludHReiDqAId17Bq45DNmFqxtj0dY8JlHYN5aN7tPAWCjUrI2rBjItQnLKTL2b8W7jr05/r6gQhwsE9T6fGQ8qwtSHjY1a92/2olkVuFm72IU2C8wJ"
  region = "us-east-1"
}

resource "aws_instance" "vm_for_kubernetes" {
  ami = "ami-0261755bbcb8c4a84"
  instance_type = "t2.micro"
}
