module TodoItems
  class Create
    prepend ::SimpleCommand
    
    def self.call(params)
      new(params).call
    end

    def initialize(params)
      @params = params
    end

    def call
      TodoItem.create!(@params.merge(id: SecureRandom.uuid))
    end

    private

    # Add your Private Method Here
  end
end