class ProfilesController < ApplicationController
	def new
		@profile = Profile.new
	end

  def create
    @profile = current_user.profiles.burild(param_profile)
		if @profile.save
      redirect_to profile_path, status: :unprocessable_entity
		else
			flash new[:danger] = "プロフィールの作成に失敗しました"
			render  :new, status
		end

  end
end