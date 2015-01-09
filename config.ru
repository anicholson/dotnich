require 'bundler/setup'
require 'sinatra/base'
require 'rack/contrib'
require 'rack/cache'

# The project root directory
$root = ::File.dirname(__FILE__)

CACHE_CLIENT = if ENV['RACK_ENV'] == 'production'
                 Dalli::Client.new((ENV["MEMCACHIER_SERVERS"] || "").split(","),
                                   :username => ENV["MEMCACHIER_USERNAME"],
                                   :password => ENV["MEMCACHIER_PASSWORD"],
                                   :failover => true,
                                   :socket_timeout => 1.5,
                                   :socket_failure_delay => 0.2,
                                   :value_max_bytes => 1048576)
               else
                 'file:///tmp'
               end

class Website < Sinatra::Base
  before do
    cache_control :public, :must_revalidate, :max_age => 68000
  end

  use Rack::TryStatic,
      root: 'public',
      urls: %w[/],
      try:  ['.html', 'index.html', '/index.html']

  use Rack::Cache,
      :verbose     => true,
      :metastore   => CACHE_CLIENT,
      :entitystore => CACHE_CLIENT,
      :default_ttl => 36_000

end

use Rack::ETag
use Rack::Deflater
run Website
