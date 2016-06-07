class FantasyContestantsController < ApplicationController
  def index
    @fantasy_contestants = FantasyContestant.all
  end

  def show
    @fantasy_contestant = FantasyContestant.find(params[:id])
  end

  def new
    @fantasy_contestant = FantasyContestant.new
  end

  def create
    @fantasy_contestant = FantasyContestant.new
    @fantasy_contestant.cast_id = params[:cast_id]
    @fantasy_contestant.user_id = params[:user_id]

    if @fantasy_contestant.save
      redirect_to "/fantasy_contestants", :notice => "Fantasy contestant created successfully."
    else
      render 'new'
    end
  end

  def edit
    @fantasy_contestant = FantasyContestant.find(params[:id])
  end

  def update
    @fantasy_contestant = FantasyContestant.find(params[:id])

    @fantasy_contestant.cast_id = params[:cast_id]
    @fantasy_contestant.user_id = params[:user_id]

    if @fantasy_contestant.save
      redirect_to "/fantasy_contestants", :notice => "Fantasy contestant updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @fantasy_contestant = FantasyContestant.find(params[:id])

    @fantasy_contestant.destroy

    redirect_to "/fantasy_contestants", :notice => "Fantasy contestant deleted."
  end
end
