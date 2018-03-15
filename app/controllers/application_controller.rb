class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, :keys => [:phone_number, :education_level, :is_mentor, :name, :undergrad_degree, :undergrad_school, :mba_program, :concentration, :full_time_employer, :mentee_capacity, :available_start_date])

    devise_parameter_sanitizer.permit(:account_update, :keys => [:phone_number, :education_level, :is_mentor, :name, :undergrad_degree, :undergrad_school, :mba_program, :concentration, :full_time_employer, :mentee_capacity, :available_start_date])
  end
end
