service 'mongod' do
    action [:stop]
end

rpm_package 'mongodb-org-tools-3.4.1-1.el7.x86_64' do
     action [:remove]
end

rpm_package 'mongodb-org-3.4.1-1.el7.x86_64' do
     action [:remove]
end

rpm_package 'mongodb-org-shell-3.4.1-1.el7.x86_64' do
     action [:remove]
end

rpm_package 'mongodb-org-mongos-3.4.1-1.el7.x86_64' do
     action [:remove]
end

rpm_package 'mongodb-org-server-3.4.1-1.el7.x86_64' do
     action [:remove]
end

file '/var/log/mongodb' do
     action [:delete]
end

file /var/lib/mongo' do
     action [:delete]
end

