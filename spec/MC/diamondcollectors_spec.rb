require 'spec_helper'
require 'rspec/its'

describe file('/etc/diamond/collectors/CPUCollector.conf') do
  its(:content) { should match /enabled = False/ }
end

describe file('/etc/diamond/collectors/DiskSpaceCollector.conf') do
  its(:content) { should match /enabled = False/ }
end

describe file('/etc/diamond/collectors/DiskUsageCollector.conf') do
  its(:content) { should match /enabled = False/ }
end

describe file('/etc/diamond/collectors/LoadAverageCollector.conf') do
  its(:content) { should match /enabled = False/ }
end

describe file('/etc/diamond/collectors/MemoryCollector.conf') do
  its(:content) { should match /enabled = False/ }
end

describe file('/etc/diamond/collectors/MusashiCPUCollector.conf') do
  its(:content) { should match /^enabled = True/ }
  its(:content) { should match /^ttl_multiplier = 2/ }
  its(:content) { should match /^normalize = False/ }
  its(:content) { should match /^measure_collector_time = False/ }
  its(:content) { should match /^byte_unit = byte,/ }
  its(:content) { should match /^simple = True/ }
  its(:content) { should match /^percore = True/ }
  its(:content) { should match /^path_suffix = ""/ }
  its(:content) { should match /^splay = 1/ }
  its(:content) { should match /^instance_prefix = instances/ }
  its(:content) { should match /^interval = 300/ }
  its(:content) { should match /^path_prefix = servers/ }
  its(:content) { should match /^method = Threaded/ }
  #method on v1.0.0 is sequential. On v1.1.0, threaded
end

describe file('/etc/diamond/collectors/MusashiDiskSpaceCollector.conf') do
  its(:content) { should match /^enabled = True/ }
  its(:content) { should match /^ttl_multiplier = 2/ }
  its(:content) { should match /^splay = 1/ }
  its(:content) { should match /^path_suffix = ""/ }
  its(:content) { should match /^measure_collector_time = False/ }
  its(:content) { should match /^instance_prefix = instances/ }
  its(:content) { should match /^interval = 300/ }
  its(:content) { should match /^path_prefix = servers/ }
end

describe file('/etc/diamond/collectors/MusashiMemoryCollector.conf') do
  its(:content) { should match /^enabled = True/ }
  its(:content) { should match /^path_suffix = ""/ }
  its(:content) { should match /^ttl_multiplier = 2/ }
  its(:content) { should match /^measure_collector_time = False/ }
  its(:content) { should match /^byte_unit = byte,/ }
  its(:content) { should match /^instance_prefix = instances/ }
  its(:content) { should match /^interval = 300/ }
  its(:content) { should match /^splay = 1/ }
  its(:content) { should match /^path_prefix = servers/ }
end

describe file('/etc/diamond/collectors/MusashiPingCollector.conf') do
  its(:content) { should match /^enabled = True/ }
  its(:content) { should match /^path_suffix = ""/ }
  its(:content) { should match /^ttl_multiplier = 2/ }
  its(:content) { should match /^measure_collector_time = False/ }
  its(:content) { should match /^byte_unit = byte,/ }
  its(:content) { should match /^use_sudo = False/ }
  its(:content) { should match /^target_list = \/etc\/diamond\/collectors\/Target_MusashiPingCollector.csv/ }
  its(:content) { should match /^bin = \/bin\/ping/ }
  its(:content) { should match /^sudo_cmd = \/usr\/bin\/sudo/ }
  its(:content) { should match /^instance_prefix = instances/ }
  its(:content) { should match /^interval = 300/ }
  its(:content) { should match /^splay = 1/ }
  its(:content) { should match /^path_prefix = servers/ }
  its(:content) { should match /^method = Threaded/ }
  #method on v1.0.0 is sequential. On v1.1.0, threaded
end

describe file('/etc/diamond/collectors/MusashiPortCollector.conf') do
  its(:content) { should match /^enabled = True/ }
  its(:content) { should match /^path_suffix = ""/ }
  its(:content) { should match /^ttl_multiplier = 2/ }
  its(:content) { should match /^measure_collector_time = False/ }
  its(:content) { should match /^byte_unit = byte,/ }
  its(:content) { should match /^target_list = \/etc\/diamond\/collectors\/Target_MusashiPortCollector.csv/ }
  its(:content) { should match /^timeout = 3/ }
  its(:content) { should match /^instance_prefix = instances/ }
  its(:content) { should match /^interval = 300/ }
  its(:content) { should match /^splay = 1/ }
  its(:content) { should match /^path_prefix = servers/ }
  its(:content) { should match /^method = Threaded/ }
  #method on v1.0.0 is sequential. On v1.1.0, threaded
end

describe file('/etc/diamond/collectors/SockstatCollector.conf') do
  its(:content) { should match /^enabled = False/ }
end

describe file('/etc/diamond/collectors/Target_MusashiPingCollector.csv') do
  its(:content) { should match /^(.*?),(.*?).(.*?).(.*?)/ }
  its(:content) { should match /^(.*?),(.*?).(.*?).(.*?)/ }
  its(:content) { should match /^(.*?),(.*?).(.*?).(.*?)/ }
  its(:content) { should match /^(.*?),(.*?).(.*?).(.*?)/ }
  its(:content) { should match /^(.*?),(.*?).(.*?).(.*?)/ }
  its(:content) { should match /^(.*?),(.*?).(.*?).(.*?)/ }
  its(:content) { should match /^(.*?),(.*?).(.*?).(.*?)/ }
end

describe file('/etc/diamond/collectors/Target_MusashiPortCollector.csv') do
  its(:content) { should match /^(.*?),(.*?).(.*?).(.*?),22,tcp/ }
  its(:content) { should match /^(.*?),(.*?).(.*?).(.*?),5000,tcp/ }
  its(:content) { should match /^(.*?),(.*?).(.*?).(.*?),35357,tcp/ }
  its(:content) { should match /^(.*?),(.*?).(.*?).(.*?),8774,tcp/ }
  its(:content) { should match /^(.*?),(.*?).(.*?).(.*?),8776,tcp/ }
  its(:content) { should match /^(.*?),(.*?).(.*?).(.*?),9292,tcp/ }
  its(:content) { should match /^(.*?),(.*?).(.*?).(.*?),22,tcp/ }
  its(:content) { should match /^(.*?),(.*?).(.*?).(.*?),5000,tcp/ }
  its(:content) { should match /^(.*?),(.*?).(.*?).(.*?),35357,tcp/ }
  its(:content) { should match /^(.*?),(.*?).(.*?).(.*?),8774,tcp/ }
  its(:content) { should match /^(.*?),(.*?).(.*?).(.*?),8776,tcp/ }
  its(:content) { should match /^(.*?),(.*?).(.*?).(.*?),9292,tcp/ }
  its(:content) { should match /^(.*?),(.*?).(.*?).(.*?),22,tcp/ }
  its(:content) { should match /^(.*?),(.*?).(.*?).(.*?),22,tcp/ }
  its(:content) { should match /^(.*?),(.*?).(.*?).(.*?),22,tcp/ }
  its(:content) { should match /^(.*?),(.*?).(.*?).(.*?),22,tcp/ }
  its(:content) { should match /^(.*?),(.*?).(.*?).(.*?),22,tcp/ }
end

describe file('/etc/diamond/collectors/VMStatCollector.conf') do
  its(:content) { should match /^enabled = False/ }
end
