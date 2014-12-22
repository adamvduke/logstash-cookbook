
if node[:logstash][:repos][:logstash]
  apt_repository 'logstash' do
    uri          'http://packages.elasticsearch.org/logstash/1.4/debian'
    components   ['stable', 'main']
    keyserver    'keyserver.ubuntu.com'
    key          'D88E42B4'
    deb_src      false
  end
end

if node[:logstash][:repos][:logstash_forwarder]
  apt_repository 'logstash-forwarder' do
    uri          'http://packages.elasticsearch.org/logstashforwarder/debian'
    components   ['stable', 'main']
    keyserver    'keyserver.ubuntu.com'
    key          'D88E42B4'
    deb_src      false
  end
end
