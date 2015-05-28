default[:reprepro][:repo_dir] = "/srv/apt"
default[:reprepro][:allow] = []
default[:reprepro][:pgp_key] = "devops@cybera.ca"

default[:reprepro][:cron][:enabled] = false
default[:reprepro][:cron][:minute] = 0
default[:reprepro][:cron][:hour] = "*/12"
default[:reprepro][:cron][:log] = "/home/reprepro/reprepro-cron.log"
