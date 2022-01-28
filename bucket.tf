
data "oci_objectstorage_namespace" "test_namespace" {


}

resource "oci_objectstorage_bucket" "bucket2" {
  compartment_id = var.compartment_ocid
  namespace      = data.oci_objectstorage_namespace.test_namespace.namespace
  name           = "buck2"
  access_type    = "NoPublicAccess"
  auto_tiering   = "Disabled"
  depends_on = [
    oci_objectstorage_bucket.bucket1
  ]
}

