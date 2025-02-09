module TodoItems
  class GetStatus
    prepend ::SimpleCommand

    def self.call
      new.call
    end

    def call
      result = TodoItem::STATUSES
      result
    end
  end
end