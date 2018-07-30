##/ TODO how to clear dynamic data in db
##/ TODO how to separate dynamic and static data in db

class Article < ApplicationRecord
  ##/How to use ActiveRecord? here the model attribute not auto declared
  ##/Validation, https://guides.rubyonrails.org/active_record_validations.html:
  has_many :comments, dependent: :destroy
  validates :title, presence: true, length: { minimum: 5 }
end
