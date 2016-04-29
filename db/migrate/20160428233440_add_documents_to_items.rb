class AddDocumentsToItems < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :documents, :json
  end
end
