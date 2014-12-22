default[:logstash_forwarder][:config][:host]    = 'localhost'
default[:logstash_forwarder][:config][:port]    = 5000
default[:logstash_forwarder][:config][:timeout] = 15
default[:logstash_forwarder][:config][:ssl_ca]  = '/etc/pki/tls/certs/logstash-forwarder.crt'
default[:logstash_forwarder][:config][:files]   = [
  {
    'paths' => [
      '/var/log/syslog',
      '/var/log/auth.log'
    ],
    'fields' => { 'type' => 'syslog' }
  }
]
