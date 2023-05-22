class Note < ApplicationRecord
  validates :name, presence: true

  default_scope {order('notes.created_at DESC')}
end
