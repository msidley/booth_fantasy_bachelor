class ActionsController < ApplicationController
  def index
    @actions = Action.all
  end

  def show
    @action = Action.find(params[:id])
  end

  def new
    @action = Action.new
  end

  def create
    @action = Action.new
    @action.cast_id = params[:cast_id]
    @action.play = params[:play]
    @action.point_value = params[:point_value]
    @action.week = params[:week]
    if @action.save
      @users = User.all
      @actions = Action.all
      @users.each do |user|
        points = 0
        @picked_contestants = user.picked_contestants.all
        @picked_contestants.each do |picked_contestant|
          @actions.each do |action|
            if picked_contestant.name == action.cast.name
              points = points + action.point_value
            end
          end
        end
        user.point_total = points
        user.save
      end
      redirect_to "/actions", :notice => "Action created successfully."
    else
      render 'new'
    end
  end

  def edit
    @action = Action.find(params[:id])
  end

  def update
    @action = Action.find(params[:id])

    @action.cast_id = params[:cast_id]
    @action.play = params[:play]
    @action.point_value = params[:point_value]
    @action.week = params[:week]

    if @action.save
      redirect_to "/actions", :notice => "Action updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @action = Action.find(params[:id])

    @action.destroy

    redirect_to "/actions", :notice => "Action deleted."
  end
end
