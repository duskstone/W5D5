class Question < ApplicationRecord

    belongs_to :poll,
    primary_id: :id,
    foreign_id: :poll_id,
    class_name: :Poll

    has_many :answer_choices,
    primary_id: :id,
    foreign_id: :poll_id,
    class_name: :AnswerChoice

    # has_many :responses,
    # primary_id: :id,
    # foreign_id: :question_id,
    # class_name: :Question

end