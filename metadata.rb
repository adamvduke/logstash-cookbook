name              "logstash"
maintainer        "Adam Duke"
maintainer_email  "adam.v.duke+chef@gmail.com"
license           "MIT"
description       "Installs/configures logstash/logstash-forwarder"
version           "0.0.1"
recipe            "logstash", "Installs/configures logstash/logstash-forwarder"

%w{ ubuntu }.each do |os|
  supports os
end

depends 'apt'
depends 'runit'
