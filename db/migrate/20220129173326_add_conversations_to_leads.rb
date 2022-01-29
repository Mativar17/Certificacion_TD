class AddConversationsToLeads < ActiveRecord::Migration[6.1]
  def change
    add_column :leads, :conversation, :text
  end
end
