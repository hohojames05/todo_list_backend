module TodoItems
  class Index
    prepend ::SimpleCommand
    
    def self.call
      new.call
    end

    def call
      result = TodoItem.all
      result
    end

    private

    # Add your Private Method Here
    #

  end
end