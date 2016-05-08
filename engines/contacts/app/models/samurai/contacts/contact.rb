module Samurai::Contacts
  class Contact < ActiveRecord::Base
    belongs_to :samurai_user
  end
end
