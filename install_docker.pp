#
# install_docker.pp
# use puppet to setup docker
#

package { 'docker' :
        ensure => installed,
}

service { 'docker' :
        ensure => running,
        enable => true,
}


