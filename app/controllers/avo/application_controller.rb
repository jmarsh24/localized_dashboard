module Avo
  class ApplicationController < BaseApplicationController
    def set_avo_locale(&action)
      I18n.with_locale(params[:locale], &action)
    end
  end
end
