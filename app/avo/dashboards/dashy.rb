class Avo::Dashboards::Dashy < Avo::Dashboards::BaseDashboard
  self.id = "dashy"
  self.name = -> { I18n.t("avo.dashboard_translations.disposals.name") }
  # self.description = "Tiny dashboard description"
  # self.grid_cols = 3
  self.visible = -> do
    true
  end

  def cards
    # cards go here
    # card UsersCount
  end
end
