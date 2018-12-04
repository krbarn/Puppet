#
# register_rhn.pp
# author: Ken Barnhouse
# date: 2/21/2016
# purpose: use puppet to register with RHN
# condition: only register the system if /etc/sysconfig/rhn/systemid does not exist on the system
# 

case $operatingsystemmajrelease {
     '6': {
          
          notify {"register with the RHEL 6 channel":}
          exec { 'register system with RHN 6' :
                 command =>  '/usr/sbin/rhnreg_ks --force --profilename=${HOSTNAME} --activationkey=1-40545d790818d61d5effe7bfd2efc1df --serverUrl=http://HOST.unx.sas.com/XMLRPC',
                 onlyif => "/usr/bin/test ! -f /etc/sysconfig/rhn/systemid",
               }
    	  }
     '7': {
          notify {"register with the RHEL 7 channel":}
          exec { 'register system with RHN 7' :
                 command =>  '/usr/sbin/rhnreg_ks --force --profilename=${HOSTNAME} --activationkey=1-0a96619232e2bcb6c8c6ec1d64d90d59 --serverUrl=http://HOST.unx.sas.com/XMLRPC',
                 onlyif => "/bin/test ! -f /etc/sysconfig/rhn/systemid",
               }
          }
     default: { 
          notify {"system cannot be registered with RHN":} 
          }
}          
