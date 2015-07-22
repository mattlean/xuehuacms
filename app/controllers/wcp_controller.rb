class WcpController < ApplicationController
  def index
  	if user_signed_in?
  		#redirect_to wcp_index_path
  	else
  		redirect_to new_user_session_path
  	end

  	render :layout => 'wcp-layout'
  end

  def test
  	render 'test', :locals => {:testvar => 5}
  end
end
