Samurai::User.class_eval do
	has_many :contacts , class_name: Samurai::Contacts::Contact, foreign_key: "samurai_user_id"

	# def contacts
	# 	Samurai::Contacts::Contact.where(samurai_user_id: self.id)
	# end
end