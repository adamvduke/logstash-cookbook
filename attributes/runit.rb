default[:logstash_forwarder][:runit][:user]              = 'root'
default[:logstash_forwarder][:runit][:group]             = 'root'
default[:logstash_forwarder][:runit][:spool_size]        = 100
default[:logstash_forwarder][:runit][:log_to_syslog]     = false
default[:logstash_forwarder][:runit][:restart_on_update] = true
