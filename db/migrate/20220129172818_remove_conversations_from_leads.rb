class RemoveConversationsFromLeads < ActiveRecord::Migration[6.1]
  def up
    remove_column :leads, :conversations
  end
end
