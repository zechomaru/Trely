class AddAttachmentImgSerivceToServices < ActiveRecord::Migration
  def self.up
    change_table :services do |t|
      t.attachment :img_serivce
    end
  end

  def self.down
    remove_attachment :services, :img_serivce
  end
end
