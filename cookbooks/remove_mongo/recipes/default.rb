service 'mongod' do
    action [:stop]
end

rpm_package 'mongodb-org-3.4.1-1.el7.x86_64' do
     action [:remove]
end

rpm_package 'mongodb-org-tools-3.4.1-1.el7.x86_64' do
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

directory '/var/log/mongodb' do
     recursive true
     action [:delete]
end

directory '/var/lib/mongo' do
     recursive true
     action [:delete]
end

