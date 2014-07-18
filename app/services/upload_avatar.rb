class UploadAvatar < Struct.new(:admin, :avatar)
  def call
    admin.avatar = avatar
    admin.save!
    admin
  end
end
