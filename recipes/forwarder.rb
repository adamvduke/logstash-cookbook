include_recipe 'logstash::repos'

package 'logstash-forwarder'

template '/etc/logstash-forwarder' do
  source 'logstash-forwarder.erb'
  mode 0644
  owner 'root'
  group 'root'
end
