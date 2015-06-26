class DashboardController < ApplicationController

skip_before_filter :authenticate_user!, only: :index

def index
  console
  @trending = Program.trending
end
  
def program_show
  render 'programs/show'
end

end
