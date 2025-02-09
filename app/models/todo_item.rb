# == Schema Information
#
# Table name: todo_items
#
#  id          :uuid             not null, primary key
#  description :string           default(""), not null
#  title       :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  status      :integer          default("pending"), not null
#
class TodoItem < ApplicationRecord
  enum status: { pending: 0, inprogress: 1, completed: 2 }

  STATUSES = [
    { key: 'pending', name: 'Pending' },
    { key: 'inprogress', name: 'In Progress' },
    { key: 'completed', name: 'Completed' }
  ].freeze
end
