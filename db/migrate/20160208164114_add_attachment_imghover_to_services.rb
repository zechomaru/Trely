class AddAttachmentImghoverToServices < ActiveRecord::Migration
  def self.up
    change_table :services do |t|
      t.attachment :imghover
    end
  end

  def self.down
    remove_attachment :services, :imghover
  end
end
