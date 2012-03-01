require 'sinatra'
require 'rake-pipeline'
require 'rake-pipeline/middleware'

class Server < Sinatra::Base
  get '/' do
    'ohai'
  end

end

use Rack::Static, :urls => ["/ember-skeleton", "/libs"], :root => "public"
use Rake::Pipeline::Middleware, File.join('Assetfile')
run Server