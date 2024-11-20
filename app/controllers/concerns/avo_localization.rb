module AvoLocalization
  extend ActiveSupport::Concern

  included do
    around_action :localize
  end

  def localize(&action)
    I18n.with_locale(params[:locale], &action)
  end
end
