require 'spec_helper'

#Directory of config files
describe file('/root/.ssh/config') do
  it { should be_file }
end

describe file('/home/deploy/.ssh/config') do
  it { should be_file }
end

describe file('/etc/ntp.conf') do
	it { should be_file }
end

describe file('/etc/mysql/my.cnf') do
	it { should be_file }
end

describe file('/etc/nova/nova.conf') do
	it { should be_file }
end

describe file('/etc/nova/policy.json') do
	it { should be_file }
end

describe file('/etc/lvm/lvm.conf') do
	it { should be_file }
end

describe file('/etc/nova/nova.conf') do
	it { should be_file }
end

describe file('/etc/nova/policy.json') do
	it { should be_file }
end

describe file('/etc/lvm/lvm.conf') do
	it { should be_file }
end

describe file('/etc/diamond/diamond.conf') do
	it { should be_file }
end

describe file('/etc/rsyslog.d/100-musashi.conf') do
	it { should be_file }
end

describe file('/tmp/secret.xml') do
	it { should be_file }
end

describe file('/etc/init/graphite.conf') do
	it { should be_file }
end

describe file('/etc/init/riemann.conf') do
	it { should be_file }
end

describe file('/etc/apache2/sites-available/dashboard.conf') do
	it { should be_file }
end

describe file('/etc/init/webapp.conf') do
	it { should be_file }
end

describe file('/etc/redis/redis.conf') do
	it { should be_file }
end

describe file('/etc/init/mariadb.conf') do
	it { should be_file }
end

describe file('/etc/init/logstash.conf') do
	it { should be_file }
end

describe file('/etc/dmd.cfg') do
	it { should be_file }
end
