class TodoItemController
	def index
	end

	def create
	end

	def updated
	end

	def destroy
	end

	private

	def todo_items_params
		params.permit(:title, :description, :status)
	end
end