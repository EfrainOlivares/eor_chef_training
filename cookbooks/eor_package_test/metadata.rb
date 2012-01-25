maintainer       "RightScale"
maintainer_email "efrain@rightscale.com"
license          "All rights reserved"
description      "Installs/Configures eor_package_test"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.rdoc'))
version          "0.0.1"


depends "rs_utils"

supports "ubuntu"

recipe "eor_package_test::setup_eor_package_test", "Testing out package installation"
