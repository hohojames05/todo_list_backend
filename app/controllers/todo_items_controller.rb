class TodoItemsController < ApplicationController
	def index
		command = TodoItems::Index.call()
		render json: { data: command.result }, status: :ok
	end

	def create
		command = TodoItems::Create.call(todo_items_params)
		if command.success?
			render json: command.result, root: 'data', status: :ok
		else
			render json: { error: command.errors.full_messages }, status: :unprocessable_entity
		end
	end

	def update
		command = TodoItems::Update.call(todo_items_params)
		if command.success?
			render json: command.result, status: :ok, root: 'data'
		else
			render json: { error: command.errors.full_messages }, status: :unprocessable_entity
		end
	end

	def destroy
		command = TodoItems::Destroy.call(id_params[:id])
		if command.success?
			render json: command.result, status: :no_content, root: 'data'
		else
			render json: { error: command.errors.full_messages }, status: :unprocessable_entity
		end
	end

	private

	def index_params
		params.permit(:sort_by, :order_by, :status, :title, :description, :updated_at)
	end

	def id_params
		params.permit(:id)
	end

	def todo_items_params
		params.permit(:id, :title, :description, :status)
	end
end