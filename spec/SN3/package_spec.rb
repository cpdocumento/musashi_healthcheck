current_directory = File.expand_path(File.dirname(__FILE__))
require 'spec_helper'
require 'rspec/its'
require 'csv'

CSV.foreach "#{current_directory}/SN3.csv" do |pkg,version|
		describe package(pkg) do 
			it do
				should be_installed.with_version(version)
			end		
		end
end