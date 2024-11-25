class Avo::Resources::Post < Avo::BaseResource
  self.includes = [ :comments ]
  # self.attachments = []
  # self.search = {
  #   query: -> { query.ransack(id_eq: params[:q], m: "or").result(distinct: false) }
  # }
  self.translation_key = "avo.resource_translations.post"

  def fields
    field :id, as: :id
    field :title, as: :text, translation_key: "avo.field_translations.posts.title"
    field :is_featured, as: :boolean, translation_key: "avo.field_translations.posts.is_featured"
    field :comments, as: :has_many
  end


  def filters
    filter Avo::Filters::Featured
  end
end
