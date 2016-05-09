if Samurai::Core.available?(:contacts)
	Samurai::Contacts::Contact.eval_class do
		has_many: tasks, class_name: Samurai::Tasks::Task
	end
end