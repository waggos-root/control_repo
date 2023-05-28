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
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDp16YaTPVAB2qtmzzBfpCJcv7m25nZ64xXYwNmLo7bitXe7CdtFZDNlJzO95kkAtXj9GdNzdveBt0DlOvZGvequg5KUC4uWa4IvyIF+SfJvrPiDRnTEY9gTdoKeAEFl7sYE4OcyRhCAj2hZjoXVJrzWA69n75Ef+2HdMGAAkq0xx6fMYrE19AmYJoTRHchSawzVqOPoGJTyCMOMWIbhs4GD9Tm/wUX61YtnKOjHk5a1cOmy6ULec6ET7Ln8giCkjuN/cF8tZ2dIheoSfk6OeULmzRSRL7HmWq+rNdi5INFyzOVdYMnzyH7oCM9VsQTkdvzo75j7cI3YL1UBMLBoERl',
  }  
}
