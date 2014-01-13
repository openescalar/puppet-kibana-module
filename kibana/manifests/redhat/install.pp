class kibana::redhat::install {
  
  package {
    
    'kibana3.x86_64':
      ensure => $kibana::version;

  }

}
