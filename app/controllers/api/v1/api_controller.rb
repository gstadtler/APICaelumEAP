module Api::V1
  class ApiController < ActionController::API
    include Response
    include ExceptionHandler
  end
end
