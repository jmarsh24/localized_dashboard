class Avo::Resources::Comment < Avo::BaseResource
  self.includes = [ :post ]
  # self.attachments = []
  # self.search = {
  #   query: -> { query.ransack(id_eq: params[:q], m: "or").result(distinct: false) }
  # }

  def fields
    field :body, as: :textarea, translation_key: "avo.field_translations.comment.body"
    field :post, as: :belongs_to
  end
end
