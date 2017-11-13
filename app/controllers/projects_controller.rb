class ProjectsController < ApplicationController
	def index
		@projects = Project.joins(:user).eager_load(:category).order('projects.created_at')
	
	end

	def index_sort
		sort = { '0' => 'projects.created_at', '1' => 'projects.title', '2' => 'categories.name', '3' => 'users.name'}
		sort_order = sort[params[:name]]

		@projects = Project.joins(:user).eager_load(:category).order(sort_order)
	end
end
