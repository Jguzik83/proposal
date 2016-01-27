class TopicsController < ApplicationController

  def new
    @topic = Topic.new
    @user = User.find_by(id: current_user.id)
  end

  def create
    topic = Topic.new(topic_params)
    if topic.save
      redirect_to user_path(current_user.id)
    else
      redirect_to new_user_path(id: current_user)
    end
  end

  def index
    user = User.find_by(id: current_user)
    @topics = Topic.where(user_id: user.id)
  end

  def splash
    @user = User.find_by(id: current_user)
    # @topics = Topic.find_by(user_id: @user.id)
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def topic_params
    params.require(:topic).permit(:main_topic, :sub_topic, :title, :description, :user_id)
  end

end
