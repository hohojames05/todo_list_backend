module TodoItems
  class Index
    prepend ::SimpleCommand
    
    def self.call
      new.call
    end

    # def initialize(params)
    #   @params = params
    # end

    def call
      result = TodoItem.all.order(:created_at)
      result
    end

    private

    # Add your Private Method Here
    #

  end
end