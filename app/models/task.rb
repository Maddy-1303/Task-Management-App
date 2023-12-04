class Task < ApplicationRecord

  #==============Associations==========#
  belongs_to :user


  #============= Validations ===============
  validates :name, presence: true

  #=========Enum method for status attribute, because of storing only todo and done in status======#

  enum status: { todo: 'TODO', done: 'DONE' }
  validates :status, inclusion: { in: statuses.keys }

  enum visibility: { privately: 'Private', publicaly: 'Public' }
  validates :visibility, inclusion: { in: visibilities.keys }

end
