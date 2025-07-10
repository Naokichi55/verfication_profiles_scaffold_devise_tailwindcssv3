class ProfilesController < ApplicationController
	def new
		@profile = Profile.new
	end

  def show
    @profile = Profile.find(params[:id])
  end

  def create
    @profile = current_user.build_profile(profile_params)
		if @profile.save
      redirect_to profiles_path
		else
			flash.now[:danger] = "プロフィールの作成に失敗しました"
			render  :new, status: :unprocessable_entity
		end
  end

	private
  def profile_params
		params.require(:profile).permit(:racket, :history, :play_style, :level, :gender, :body)
  end
end
