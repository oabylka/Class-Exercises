class Contact < ApplicationRecord

	def changed_time
		updated_at.strftime("%b %d, %Y")
	end

	def full_name
		first_name+" "+middle_name+" "+last_name
	end

	def add_prefix
		"+81 "+phone.to_s
	end

#Class method vs. instance methods
	# def self.find_john
	# 	contacts = Contacts.all
	# 	johns = []
	# 	@keyword = "John"
	# 	Contact.where("first_name LIKE ?", @keyword)
	# 	if contact.first_name == "John"
	# 		johns << contact
	# 	end
	# 	return johns
	# end
end
