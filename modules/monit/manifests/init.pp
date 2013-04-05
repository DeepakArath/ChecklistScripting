class monit::install {

package { "monit" :
           ensure => present,
        }

service { "monit":
            ensure    => "running",
            enable    => "true",
            require   => Package["monit"],
            hasrestart => true,
            hasstatus => true,
        }

file {  "monitconf":
             path  => "/etc/monit/monitrc",
             source => "puppet:///modules/monit/monitconf",
             mode    => 644,
             owner   => "root",
             group   => "root",
             ensure    => present,
             require => Package["monit"],
             notify   =>  Service["monit"], 
     }

}

class monit {
             include monit::install
                        }

