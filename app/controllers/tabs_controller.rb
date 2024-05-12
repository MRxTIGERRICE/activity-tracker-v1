class TabsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:update_tabs]
  
  def update_tabs
    tabs_data = params[:tabs]
    email = params[:Email] # Accessing the email parameter
    
    user = User.find_by(email: email)
    
    tabs_data.each do |tab_data|
      url = tab_data['url']
      
      # Find or initialize the tab
      tab = Tab.find_or_initialize_by(url: url, user_id: user.id)
      
      # Update tab attributes
      tab.update(counter: tab_data['counter'], summary_time: tab_data['summaryTime'], favicon: tab_data['favicon'])
      
      # Find or initialize the day associated with this tab for the current date
      current_date = Date.today
      day = tab.days.find_or_initialize_by(date: current_date)
      
      # Update day attributes
      day.update(counter: tab_data['counter'], summary: tab_data['summaryTime'])
    end

    render json: { message: 'Tabs data updated successfully' }, status: :ok
  end
end



