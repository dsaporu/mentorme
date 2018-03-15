ActiveAdmin.register User do

 permit_params :email, :password, :phone_number, :education_level, :is_mentor, :name, :undergrad_degree, :undergrad_school, :mba_program, :concentration, :full_time_employer, :mentee_capacity, :available_start_date
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
