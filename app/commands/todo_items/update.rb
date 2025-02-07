module TodoItems
  class Update
    prepend ::SimpleCommand
    
    def self.call(params)
      new(params).call
    end

    def initialize(params)
      @params = params
    end

    def call
      todo_item = TodoItem.find(@params[:id])
      todo_item.update!(@params)
      todo_item
    end

    private

    # Add your Private Method Here
    #
  end
end