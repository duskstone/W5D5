class User < ApplicationRecord
    validates uniqueness: true

    has_many :authored_polls,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :Poll

    has_many :responses
    primary_id: :id,
    foreign_id: :user_id,
    class_name: :Response
end