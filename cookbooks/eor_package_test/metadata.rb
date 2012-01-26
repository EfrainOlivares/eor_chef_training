maintainer       "RightScale"
maintainer_email "efrain@rightscale.com"
license          "All rights reserved"
description      "Installs/Configures eor_package_test"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.rdoc'))
version          "0.0.1"


depends "rs_utils"

supports "ubuntu"

recipe "eor_package_test::setup_eor_package_test", "Testing out package installation"

attribute "eor_attrib",
  :display_name => "Just some value",
  :description => "Description of eor_attrib",
  :required => "required",
  :recipes => ["eor_package_test::setup_eor_package_test"]

# node[:eor_package_test][:someval]
attribute "eor_package_test/someval",
  :display_name => "Grouped Input",
  :required => "required",
  :recipes => ["eor_package_test::setup_eor_package_test"]
