# set_root_passwd.pp
# author: Ken Barnhouse
# date: 2/21/2016
# purpose: use puppet to root password to the Intops default root password
#
#
# run puppet resourse user root to get hashed password
#

user { root:
    ensure   => present,
  password         => 'ENCRYPTED_GOES_HERE',


  }
