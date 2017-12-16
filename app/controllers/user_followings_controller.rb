class UserFollowingsController < ApplicationController
  before_action :set_user_following, only: [:show, :edit, :update, :destroy]

  # GET /user_followings
  # GET /user_followings.json
  def index
    @user_followings = UserFollowing.all
  end

  # GET /user_followings/1
  # GET /user_followings/1.json
  def show
  end

  # GET /user_followings/new
  def new
    @user_following = UserFollowing.new
  end

  # GET /user_followings/1/edit
  def edit
  end

  # POST /user_followings
  # POST /user_followings.json
  def create
    puts "params : #{params.inspect}"
    @user_following = UserFollowing.new(user_following_params)

    respond_to do |format|
      if @user_following.save
        format.html { redirect_to @user_following, notice: 'User following was successfully created.' }
        format.json { render :show, status: :created, location: @user_following }
      else
        format.html { render :new }
        format.json { render json: @user_following.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_followings/1
  # PATCH/PUT /user_followings/1.json
  def update
    respond_to do |format|
      if @user_following.update(user_following_params)
        format.html { redirect_to @user_following, notice: 'User following was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_following }
      else
        format.html { render :edit }
        format.json { render json: @user_following.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_followings/1
  # DELETE /user_followings/1.json
  def destroy
    @user_following.destroy
    respond_to do |format|
      format.html { redirect_to user_followings_url, notice: 'User following was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def create_follow_user
    #params : id of user whom you want to follow
    user_following = current_twitter_user.user_followings.new
    user_following.following_user_id = params['following_user_id']
    user_following.save!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_following
      @user_following = UserFollowing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_following_params
      params.require(:user_following).permit(:twitter_user_id, :following_user_id)
    end
end
