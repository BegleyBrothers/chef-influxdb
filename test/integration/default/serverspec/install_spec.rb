require 'spec_helper'

describe 'influxdb' do
  describe user('influxdb') do
    it { should exist }
  end

  describe service('influxdb') do
    it { should be_running }
  end

  describe port(8083) do
    it { should be_listening }
  end

  describe port(8086) do
    it { should be_listening }
  end
end
