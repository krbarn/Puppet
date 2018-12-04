# author: Ken Barnhouse
# date: 2/21/2016
# purpose: use puppet to add a user account to the local password file
# 
#

user { USERNAME:
    ensure   => present,
    home => '/home/username'
    managehome => true,
    comment => 'Full Name',
    shell => '/bin/bash'
}
