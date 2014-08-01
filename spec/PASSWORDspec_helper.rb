require 'serverspec'
require 'pathname'
require 'net/ssh'
require 'highline/import'

include Serverspec::Helper::Ssh
include Serverspec::Helper::DetectOS

RSpec.configure do |c|
  c.before :all do
    block = self.class.metadata[:block]
    if RUBY_VERSION.start_with?('1.8')
      file = block.to_s.match(/.*@(.*):[0-9]+>/)[1]
    else
      file = block.source_location.first
    end
    host  = File.basename(Pathname.new(file).dirname)
    if c.host != host
      c.ssh.close if c.ssh
      c.host  = host
      options = Net::SSH::Config.for(c.host)
        if ENV['ASK_SUDO_PASSWORD']
          c.sudo_password = ask("Enter sudo password: ") { |q| q.echo = false }
        else 
          c.sudo_password = ENV['SUDO_PASSWORD']
        end
        if ENV['ASK_LOGIN_PASSWORD']
          require 'highline/import'
          options[:password] = ask("\nEnter login password: ") { |q| q.echo = false }
        else
          options[:password] = ENV['PASSWORD']
        end
      user    = ENV['USER']
      c.ssh   = Net::SSH.start(host, user, options)
    end
  end
end