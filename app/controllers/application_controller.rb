class ApplicationController < ActionController::Base
  include DeviseWhitelist
  include SetSource
  include CurrentUserConcern
  include DefaultPageContent

  before_action :set_copy_right

  def set_copy_right
    @copyright = AnamViewTool::Rendered.copyright 'Ana Mihic Zunic', 'All rights reserved'
  end

end
