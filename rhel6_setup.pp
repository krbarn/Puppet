#
# rhel6.pp
# use puppet to setup a Intops RHEL 6 server
#

package { 'ksh' :
        ensure => installed,
}

package { 'ruby' :
        ensure => installed,
}

package { 'nfs-utils' :
        ensure => installed,
}

package { 'autofs' :
        ensure => installed,
}

package { 'rpcbind' :
        ensure => installed,
}

package { 'vasclnt' :
        ensure => installed,
        install_options => ['--nogpgcheck'],
}

package { 'check_mk-agent' :
        ensure => installed,
        install_options => ['--nogpgcheck'],
}

service { 'autofs' :
        ensure => running,
        enable => true,
}

service { 'vasd' :
        ensure => running,
        enable => true,
}

service { 'rpcbind' :
        ensure => running,
        enable => true,
}



