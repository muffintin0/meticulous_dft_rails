class UsersController < ApplicationController
  before_filter :authenticate_user!, except:[:check_name,:check_email]
  
  def index
    @users = User.limit(PAGE_LIMIT)
    @pageLimit = PAGE_LIMIT
    @usersTotal = User.count
  end

  def show_more
    offset = params[:offset]
    @users = User.offset(offset).limit(PAGE_LIMIT)
    respond_to do |format|
      format.js
    end
  end

  def show
  end

  def check_name
    @user = User.find_by_name(params[:user][:name])
    if @user
      user_available=false
    else
      user_available=true
    end
    respond_to do |format|
      format.json {  render :json => user_available }
    end
  end

  def check_email
    @user = User.find_by_email(params[:user][:email])
    if @user
      user_available=false
    else
      user_available=true
    end
    respond_to do |format|
      format.json {  render :json => user_available }
    end
  end

  def search
    @usernames=User.where("name like ?","%#{params[:query]}%").select('name').map(&:name)
    respond_to do |format|
      format.json{
        render :json => @usernames.to_json
      }
    end
  end
  
end
