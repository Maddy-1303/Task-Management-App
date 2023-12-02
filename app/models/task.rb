class Task < ApplicationRecord

  # Enum method for status attribute, because of storing only todo and done in status

  enum status: { todo: 'TODO', done: 'DONE' }

end
