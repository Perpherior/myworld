class Admin < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :novels

  PAPERCLIP_OPTIONS = {
    :styles          => { :medium => "300x300>", :thumb => "100x100>" },
    :path            => ":rails_root/public/system/:attachment/:id-:hash/:style/:filename",
    :url             => "/system/:attachment/:id-:hash/:style/:filename",
    :storage         => (:filesystem),
    :hash_secret     => "ThisIsThePiSecretStringForPractices"
  }
  has_attached_file :avatar, PAPERCLIP_OPTIONS
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  def avatar_url
    avatar.url(:medium)
  end

  def as_json(options = {})
    options[:methods] ||= []
    options[:methods] << :avatar_url

    super(options)
  end
end
