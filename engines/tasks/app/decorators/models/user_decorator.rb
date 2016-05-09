Samurai::User.eval_class do
	has_many: tasks, class_name: Samurai::Tasks::Task
end
