class UsersController < ApplicationController

  before_filter :load_instruments, :only => [:new, :edit, :update, :create]
  
  # GET /users
  # GET /users.json   
  def index
    if params[:format]=='svc'
      @users = User.order(:branch_id, :shirt_type_id, :shirt_size_id)
     else
      @users = User.order(:branch_id, :instrument_id, :name)
     end 
    
    respond_to do |format|
      format.html # index.html.erb
      #format.json { render json: @users }
      format.csv { send_data @users.to_csv }
    end
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
      format.csv { send_data @users.to_csv }
    end
  end

  # GET /users/new
  # GET /users/new.json
  def new    
    @user = User.new    
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
    end
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(params[:user])
    @user.is_active = 'S' unless @user.is_active == 'N'
    
    #Notifier.email_create_user(@user).deliver unless @user.shirt_size_id == nil
       
    respond_to do |format|
      if @user.save
        Notifier.email_create_user(@user).deliver
        format.html { redirect_to @user, notice: t('users.create_success') }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: "new" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /users/1
  # PUT /users/1.json
  def update
    @user = User.find(params[:id])
    @user.is_active = 'S' unless @user.is_active == 'N'
    
    
    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to @user, notice: t('users.update_success') }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end

  protected
    def load_instruments
      @instruments = Instrument.order(:name)
    end

end
