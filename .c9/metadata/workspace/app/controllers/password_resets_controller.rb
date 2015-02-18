{"filter":false,"title":"password_resets_controller.rb","tooltip":"/app/controllers/password_resets_controller.rb","ace":{"folds":[],"scrolltop":413,"scrollleft":0,"selection":{"start":{"row":69,"column":3},"end":{"row":69,"column":3},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":{"row":34,"state":"start","mode":"ace/mode/ruby"}},"hash":"bee7a8f9bb18bc9b40a772b4c20b3dd5991f92c7","undoManager":{"mark":26,"position":26,"stack":[[{"group":"doc","deltas":[{"start":{"row":1,"column":2},"end":{"row":5,"column":5},"action":"remove","lines":["def new","  end","","  def edit","  end"]},{"start":{"row":1,"column":2},"end":{"row":18,"column":5},"action":"insert","lines":[" def new","  end","","  def create","    @user = User.find_by(email: params[:password_reset][:email].downcase)","    if @user","      @user.create_reset_digest","      @user.send_password_reset_email","      flash[:info] = \"Email sent with password reset instructions\"","      redirect_to root_url","    else","      flash.now[:danger] = \"Email address not found\"","      render 'new'","    end","  end","","  def edit","  end"]}]}],[{"group":"doc","deltas":[{"start":{"row":2,"column":1},"end":{"row":2,"column":2},"action":"insert","lines":[" "]}]}],[{"group":"doc","deltas":[{"start":{"row":0,"column":0},"end":{"row":20,"column":0},"action":"remove","lines":["class PasswordREsetsController < ApplicationController","   def new","   end","","  def create","    @user = User.find_by(email: params[:password_reset][:email].downcase)","    if @user","      @user.create_reset_digest","      @user.send_password_reset_email","      flash[:info] = \"Email sent with password reset instructions\"","      redirect_to root_url","    else","      flash.now[:danger] = \"Email address not found\"","      render 'new'","    end","  end","","  def edit","  end","end",""]},{"start":{"row":0,"column":0},"end":{"row":20,"column":3},"action":"insert","lines":["class PasswordResetsController < ApplicationController","","  def new","  end","","  def create","    @user = User.find_by(email: params[:password_reset][:email].downcase)","    if @user","      @user.create_reset_digest","      @user.send_password_reset_email","      flash[:info] = \"Email sent with password reset instructions\"","      redirect_to root_url","    else","      flash.now[:danger] = \"Email address not found\"","      render 'new'","    end","  end","","  def edit","  end","end"]}]}],[{"group":"doc","deltas":[{"start":{"row":1,"column":0},"end":{"row":2,"column":51},"action":"insert","lines":[" before_action :get_user,   only: [:edit, :update]","  before_action :valid_user, only: [:edit, :update]"]}]}],[{"group":"doc","deltas":[{"start":{"row":20,"column":5},"end":{"row":21,"column":0},"action":"insert","lines":["",""]},{"start":{"row":21,"column":0},"end":{"row":21,"column":2},"action":"insert","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":21,"column":2},"end":{"row":22,"column":0},"action":"insert","lines":["",""]},{"start":{"row":22,"column":0},"end":{"row":22,"column":2},"action":"insert","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":22,"column":2},"end":{"row":23,"column":0},"action":"insert","lines":["",""]},{"start":{"row":23,"column":0},"end":{"row":23,"column":2},"action":"insert","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":22,"column":2},"end":{"row":34,"column":7},"action":"insert","lines":[" private","","    def get_user","      @user = User.find_by(email: params[:email])","    end","","    # Confirms a valid user.","    def valid_user","      unless (@user && @user.activated? &&","              @user.authenticated?(:reset, params[:id]))","        redirect_to root_url","      end","    end"]}]}],[{"group":"doc","deltas":[{"start":{"row":2,"column":51},"end":{"row":2,"column":52},"action":"insert","lines":["\\"]}]}],[{"group":"doc","deltas":[{"start":{"row":2,"column":51},"end":{"row":2,"column":52},"action":"remove","lines":["\\"]}]}],[{"group":"doc","deltas":[{"start":{"row":2,"column":51},"end":{"row":3,"column":0},"action":"insert","lines":["",""]},{"start":{"row":3,"column":0},"end":{"row":3,"column":2},"action":"insert","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":3,"column":2},"end":{"row":4,"column":0},"action":"insert","lines":[" before_action :check_expiration, only: [:edit, :update]",""]}]}],[{"group":"doc","deltas":[{"start":{"row":1,"column":0},"end":{"row":1,"column":1},"action":"insert","lines":[" "]}]}],[{"group":"doc","deltas":[{"start":{"row":3,"column":0},"end":{"row":3,"column":1},"action":"remove","lines":[" "]}]}],[{"group":"doc","deltas":[{"start":{"row":23,"column":2},"end":{"row":24,"column":0},"action":"insert","lines":["",""]},{"start":{"row":24,"column":0},"end":{"row":24,"column":2},"action":"insert","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":23,"column":2},"end":{"row":24,"column":0},"action":"insert","lines":["",""]},{"start":{"row":24,"column":0},"end":{"row":24,"column":2},"action":"insert","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":24,"column":2},"end":{"row":36,"column":0},"action":"insert","lines":[" def update","    if password_blank?","      flash.now[:danger] = \"Password can't be blank\"","      render 'edit'","    elsif @user.update_attributes(user_params)","      log_in @user","      flash[:success] = \"Password has been reset.\"","      redirect_to @user","    else","      render 'edit'","    end","  end",""]}]}],[{"group":"doc","deltas":[{"start":{"row":24,"column":0},"end":{"row":24,"column":2},"action":"remove","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":24,"column":0},"end":{"row":24,"column":1},"action":"insert","lines":[" "]}]}],[{"group":"doc","deltas":[{"start":{"row":39,"column":0},"end":{"row":39,"column":2},"action":"insert","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":39,"column":2},"end":{"row":39,"column":4},"action":"insert","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":39,"column":4},"end":{"row":40,"column":0},"action":"insert","lines":["",""]},{"start":{"row":40,"column":0},"end":{"row":40,"column":4},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":40,"column":4},"end":{"row":41,"column":0},"action":"insert","lines":["",""]},{"start":{"row":41,"column":0},"end":{"row":41,"column":4},"action":"insert","lines":["    "]}]}],[{"group":"doc","deltas":[{"start":{"row":40,"column":4},"end":{"row":47,"column":7},"action":"insert","lines":["def user_params","      params.require(:user).permit(:password, :password_confirmation)","    end","","    # Returns true if password is blank.","    def password_blank?","      params[:user][:password].blank?","    end"]}]}],[{"group":"doc","deltas":[{"start":{"row":60,"column":2},"end":{"row":61,"column":0},"action":"insert","lines":["",""]},{"start":{"row":61,"column":0},"end":{"row":61,"column":2},"action":"insert","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":61,"column":2},"end":{"row":62,"column":0},"action":"insert","lines":["",""]},{"start":{"row":62,"column":0},"end":{"row":62,"column":2},"action":"insert","lines":["  "]}]}],[{"group":"doc","deltas":[{"start":{"row":61,"column":2},"end":{"row":67,"column":7},"action":"insert","lines":["  # Checks expiration of reset token.","    def check_expiration","      if @user.password_reset_expired?","        flash[:danger] = \"Password reset has expired.\"","        redirect_to new_password_reset_url","      end","    end"]}]}]]},"timestamp":1424258224388}