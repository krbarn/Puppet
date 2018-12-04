#
# rhel7.pp
# use puppet to setup a Intops RHEL 7 server
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

package { 'vasclnt' :
        ensure => installed,
        install_options => ['--nogpgcheck'],
}

service { 'nfs-utils' :
        ensure => running,
        enable => true,
}

service { 'autofs' :
        ensure => running,
        enable => true,
}

service { 'vasd' :
        ensure => running,
        enable => true,
}


