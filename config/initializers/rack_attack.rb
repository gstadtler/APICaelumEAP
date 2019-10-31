class Rack::Attack
  throttle('req/ip', limit: 300, period: 5.minutes) do |req|
    req.ip # unless req.path.start_with?('/assets')
  end

  safelist('allow from localhost') do |req|
    req.ip == '127.0.0.1'
  end
end
