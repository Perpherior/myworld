class AddAdminRefToNovels < ActiveRecord::Migration
  def change
    add_reference :novels, :admin, index: true
    Novel.all.each do |novel|
      novel.admin = Admin.first.id
      novel.save!
    end
  end
end
