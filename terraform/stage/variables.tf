variable project {

  description = "Project ID"

}



variable region {

  description = "Region"



  # Значение по умолчанию

  default = "europe-north1-b"

}



variable zone {

  description = "Region"



  # Значение по умолчанию

  default = "europe-north1-b"

}



variable public_key_path {

  # Описание переменной

  description = "Path to the public key used for ssh access"

}



variable disk_image {

  description = "Disk image"

}



variable db_disk_image {

  description = "Disk image for reddit db"

  default     = "reddit-db-base"

}



variable app_disk_image {

  description = "Disk image for reddit app"

  default     = "reddit-app-base"

}



variable private_key_path {

  # Описание переменной

  description = "Path to the public key used for ssh access"

}
