class profile::ssh_server {
  package {'openssh-server':
    ensure => present,  
  }
  service {'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key {'root@master.puppet.vm':
    ensure => present,
    user => 'root',
    type => 'ssh-rsa',
    key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDaOGQPJep4FpPIINB2k25kJ/laupoEC5s55ZcufQqSXZLDRwP7Zv8eZieDCm1k8hzfotKnwsy/LEBa62hN/zka1B5ddjolh9XCSnAIHqpzqdFMit7aHqJCqUxn1Qd36rRYlc00szvpkW+JKxyjjwlKmTZr6b6+q2mJ8MuvX5gkbISUSa3qtFMNhHOGIDeU6ZYboewl+gUJ4A0t74kBJR/5n48A1R/ykIkaCUgv4ZfmzhPEhv8BxFtFy8dHwD4KHnCeyVZcLPS018cIiblyu/YfIKXRAZSeqyMpCGmGqpcILDCaXAZryVBRltOP+QANIFfqbmsP68eerosa/oB9hLOf',
  }
}
