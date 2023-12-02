class Task < ApplicationRecord


  #Association
  belongs_to :user

  # Enum method for status attribute, because of storing only todo and done in status

  enum status: { todo: 'TODO', done: 'DONE' }
  validates :status, inclusion: { in: statuses.keys }

end
