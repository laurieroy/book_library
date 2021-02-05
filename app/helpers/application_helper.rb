module ApplicationHelper
	def admin? 
		user_signed_in? && current_user.admin?
	end

	def titilize(str)
		str.gsub('_', ' ').capitalize
	end
end
