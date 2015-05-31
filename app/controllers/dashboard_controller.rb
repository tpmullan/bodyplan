class DashboardController < ApplicationController

skip_before_filter :authenticate_user!, only: :index

def index
  @trending = Program.trending
end

end
