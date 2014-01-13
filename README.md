= kibana Puppet Module =

A puppet module for managing and configuring kibana

= Versions =

tested with kibana version 2 & 3

= Usage =

== Standard ==

Install, service running, start at boot, use default config settings

    class {'kibana': }

Install, disable services

    class {'kibana': 
      status => 'disabled',
    }


== ToDo ==

Currently just installs kibana.  there's a bunch of apache and other stuff that needs to be configured 
and rolled into this module.
