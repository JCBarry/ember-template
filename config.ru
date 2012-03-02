require 'rack'
require 'rack/contrib/try_static'
require 'rack/contrib/not_found'
require 'rake-pipeline'
require 'rake-pipeline/middleware'

use Rake::Pipeline::Middleware, 'Assetfile'
use Rack::TryStatic,
    :root => "public",
    :urls => %w[/],
    :try => ['.html', 'index.html', '/index.html']

run Rack::NotFound.new './public/404.html'