class User < ApplicationRecord
  has_many :reactions
  has_many :chat_room_users
  has_many :chat_rooms, through: :chat_room_users
  has_many :chat_messages

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true

  validates :self_introduction, length: { maximum: 500 }

  enum gender: { man: 0, woman: 1 }

  mount_uploader :profile_image, ProfileImageUploader

  def update_without_current_password(params, *options)
    
    if params[:password].blank? && params[:password_confirmation].blank?
      params.delete(:password)
      params.delete(:password_confirmation)
    end

    result = update_attributes(params, *options)
    clean_up_passwords
    result
  end
end
