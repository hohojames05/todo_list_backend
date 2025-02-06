# == Schema Information
#
# Table name: todo_items
#
#  id          :uuid             not null, primary key
#  description :string           default(""), not null
#  status      :string           not null
#  title       :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require "test_helper"

class TodoItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
