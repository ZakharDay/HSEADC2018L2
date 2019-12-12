class Post < ApplicationRecord
  acts_as_taggable_on :categories

  has_many :application_forms
  has_many :application_settings
end
