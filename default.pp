include nodejs
#include j2se
#include tomcat6

node default {
	exec { "update-apt" :
		command => "/usr/bin/apt-get update"
	}

	package { "openjdk-7-jre" :
		ensure => "installed",
		require => Exec['update-apt']
	}
	package { "openjdk-7-jre-headless" :
		ensure => "installed",
		require => Exec['update-apt']
	}
}
