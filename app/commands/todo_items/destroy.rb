module TodoItems
  class Destroy
    prepend ::SimpleCommand
    
    def self.call(id)
      new(id).call
    end

    def initialize(id)
      @id = id
    end

    def call
      todo_item = TodoItem.find(@id)
      todo_item.destroy
      todo_item
    end
  end
end