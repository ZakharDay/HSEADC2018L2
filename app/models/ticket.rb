class Ticket < ApplicationRecord
  belongs_to :reporter, class_name: 'User', foreign_key: 'reporter_id'
  belongs_to :doer, class_name: 'User', foreign_key: 'doer_id', optional: true
end
