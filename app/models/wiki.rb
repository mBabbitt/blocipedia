class Wiki < ActiveRecord::Base
  belongs_to :user
 
scope :visible_to, ->(user, viewable = true) {user ? all : where(public: viewable)}
end
