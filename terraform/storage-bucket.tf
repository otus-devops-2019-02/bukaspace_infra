

provider "google" {

  version = "2.0.0"

  project = "${var.project}"

  region  = "${var.region}"

}



module "storage-bucket" {

  source  = "SweetOps/storage-bucket/google"

  version = "0.1.1"



  # Имена поменяйте на другие  

  name = ["storage-bucket-bukaspace1", "storage-bucket-bukaspace2"]

}



module "storage-bucket-states" {

  source  = "SweetOps/storage-bucket/google"

  version = "0.1.1"



  # Имена поменяйте на другие  

  name = ["storage-bucket-states-bukaspace"]

}



output storage-bucket_url {

  value = "${module.storage-bucket.url}"

}



output storage-bucket-states_url {

  value = "${module.storage-bucket-states.url}"

}
