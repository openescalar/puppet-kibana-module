class kibana::redhat::config ( 

  $es_host  = $kibana::ipaddresa

) {
  
  require kibana::redhat::install

  file { 

    '/opt/kibana3/embedded/conf/nginx.conf':
      path    => '/opt/kibana3/embedded/conf/nginx.conf',
      owner   => 'root',
      group   => 'root',
      mode    => '0644',
      content => template('kibana/nginx.conf.erb');

   '/opt/kibana3/html/app/dashboards/default.json':
      path    => '/opt/kibana3/html/app/dashboards/default.json',
      owner   => 'root',
      group   => 'root',
      mode    => '0644',
      source  => "puppet:///modules/kibana/logstash.json";

  }
}
