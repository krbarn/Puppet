file { '/root/.ssh':
	ensure => directory,
	owner => root,
	group => root,
	mode => 0600,
}
