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
      return result if !@params[:order_by].present? && @params[:sort_by].present?
      result = result.order("#{sort_by} #{sort_order}")
      result
    end

    private

    def sort_order
      @params[:order_by].try(:to_s).try(:upcase)
    end

    def sort_by
      @params[:sort_by].try(:to_s).try(:downcase)
    end
  end
end