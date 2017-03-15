class Contact < ApplicationRecord

	def changed_time
		updated_at.strftime("%b %d, %Y")
	end

	def full_name
		first_name+" "+last_name
	end

	def add_prefix
		"+81 "+phone.to_s
	end

	def find_john
		@keyword = "John"
		Contact.where("first_name LIKE ?", @keyword)
	end
end
