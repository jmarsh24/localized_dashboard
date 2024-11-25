class Avo::Resources::Comment < Avo::BaseResource
  self.includes = [ :post ]
  # self.attachments = []
  # self.search = {
  #   query: -> { query.ransack(id_eq: params[:q], m: "or").result(distinct: false) }
  # }

  def fields
    field :body, as: :textarea, translation_key: "avo.field_translations.comment.body"
    field :commentable,
    as: :belongs_to,
    polymorphic_as: :commentable,
    types: [ ::Post ],
    polymorphic_help: "Choose the type of record",
    help: "Choose the record you need.",
    translation_key: "avo.field_translations.comment.commentable",
    hide_on: :show
  end
end
