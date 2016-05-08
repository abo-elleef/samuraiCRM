module Samurai

    class Ability
      include CanCan::Ability

        class_attribute :abilities
        self.abilities = Set.new

      def self.add_ability ability
        self.abilities.add ability
      end

      def self.remove_ability
        self.abilities.delete ability
      end

      def initialize(user)
        Rails.logger.info self.abilities.inspect
        if user.admin
            can :manage, :all
        else
            can :read, :dashboard
        end
        Ability.abilities.each do |klass|
            ability = klass.send(:new, user)
            @rules = rules + ability.send(:rules)
        end
        # Define abilities for the passed in user here. For example:
        #
        #   user ||= User.new # guest user (not logged in)
        #   if user.admin?
        #     can :manage, :all
        #   else
        #     can :read, :all
        #   end
        #
        # The first argument to `can` is the action you are giving the user
        # permission to do.
        # If you pass :manage it will apply to every action. Other common actions
        # here are :read, :create, :update and :destroy.
        #
        # The second argument is the resource the user can perform the action on.
        # If you pass :all it will apply to every resource. Otherwise pass a Ruby
        # class of the resource.
        #
        # The third argument is an optional hash of conditions to further filter the
        # objects.
        # For example, here the user can only update published articles.
        #
        #   can :update, Article, :published => true
        #
        # See the wiki for details:
        # https://github.com/ryanb/cancan/wiki/Defining-Abilities
      end
    end
end