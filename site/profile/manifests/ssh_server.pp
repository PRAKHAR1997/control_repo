class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC1gtj/PYsvPFNJAwgSQCO38ZmI1CIhiPNXfYTVHRrLWTFR1CnpRUDgBYnfKeKhMz129iRXwT1Rr7mB85kezcfomauT7QItLgLAyWLRZKymddVsemXKqlpP1JHcNjlIZFEwTkjv8Jcw/zemOGkqGeuThR5h4vYTOess12kwrBmfbLy1t2KQnIWfERqMHXi+a8T8XuLtlx5WxK/ikgopc8SoYjrR7fgUFz4tifp1NXM/7hPE9YhF4aIqqAUae8k/BISFJfOLbvLcpjAO+qGbL5xbFwgJrCv80BBoxZoinqi0z44H7hJAbCLJYUU81z1Q9I6MoVbHwYhKxImr9B3l9nzb',
  }  
}
