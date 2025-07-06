class ProfilesController < ApplicationController
	def new
		@profile = Profile.new
	end

  # def index
  #    profile = Profile.all
  # end

  def create
    @profile = current_user.profile.build(profile_params)
		if @profile.save
      redirect_to profile_path, status: :unprocessable_entity
		else
			flash new[:danger] = "プロフィールの作成に失敗しました"
			render  :new, status
		end
  end

	private
  def profile_params
		params.require(:racket).permit(:racket, :history, :play_style, :level, :gender)
  end
end