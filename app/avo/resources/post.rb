class Avo::Resources::Post < Avo::BaseResource
  # self.includes = []
  # self.attachments = []
  # self.search = {
  #   query: -> { query.ransack(id_eq: params[:q], m: "or").result(distinct: false) }
  # }
  self.translation_key = "avo.resource_translations.post"

  def fields
    field :id, as: :id
  end
end
