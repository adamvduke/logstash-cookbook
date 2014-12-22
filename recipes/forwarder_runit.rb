
include_recipe 'runit'

# create the /var/log/logstash-forwarder log directory
directory '/var/log/logstash-forwarder' do
  owner 'root'
  group 'root'
  mode  '0644'
  action :create
end

runit_service 'logstash-forwarder' do
  run_template_name 'logstash-forwarder'
  log_template_name 'logstash-forwarder'
  cookbook          'logstash'
  options(
    :user          => node[:logstash_forwarder][:runit][:user],
    :group         => node[:logstash_forwarder][:runit][:group],
    :spool_size    => node[:logstash_forwarder][:runit][:spool_size],
    :log_to_syslog => node[:logstash_forwarder][:runit][:log_to_syslog]
  )
  restart_on_update node[:logstash_forwarder][:runit][:restart_on_update]
end
