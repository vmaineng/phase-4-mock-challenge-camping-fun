class ApplicationController < ActionController::API
  include ActionController::Cookies

rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
rescue_from ActiveRecord::RecordInvalid, with: :record_invalid

private

def record_invalid(e)
  render json: {errors: e.record.errors.full_messages}, status: :unprocessable_entity
  #e.record = on the instance
end

def record_not_found(e)
  render json: {error: "#{e.model} not found"}, status: :not_found
  #render json: {errors: e.message }, status: :not_found
end

#error vs errors - it's expecting one kind of string - for error
#errors - it is for an array.

end
