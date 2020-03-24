class KidSerializer < ActiveModel::Serializer
    attributes :id, :name, :gender, :birthday, :user_id, :journals, :behaviour_progress, :behaviour_score, :sport_progress, :sport_score, :academic_progress, :academic_score, :character_progress, :character_score
    belongs_to :user
    has_many :journals
  end