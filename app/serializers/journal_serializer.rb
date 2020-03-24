class JournalSerializer < ActiveModel::Serializer
    attributes :id, :date_now, :text, :kid_id
    belongs_to :kid
  end