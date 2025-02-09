module TodoItems
  class Index
    prepend ::SimpleCommand
    
    def self.call(params)
      new(params).call
    end

    def initialize(params)
      @params = params
    end

    def call
      result = TodoItem.all
      result = result.order(title: sort_order) if @params[:order_by].present?
      result = result.order(:created_at) if @params[:order_by].blank?
      result
    end

    private

    def sort_order
      @params[:order_by].to_sym
    end
  end
end