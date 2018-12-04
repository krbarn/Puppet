#
# rhel7_automount.pp
# use puppet to setup a Intops RHEL 7 servers automounter
#

package { 'nfs-utils' :
        ensure => installed,
}

package { 'rpcbind' :
        ensure => installed,
}

package { 'autofs' :
        ensure => installed,
}

service { 'rpcbind' :
        ensure => running,
        enable => true,
}

service { 'autofs' :
        ensure => running,
        enable => true,
}

