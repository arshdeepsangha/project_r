class RemoveTextFromPages < ActiveRecord::Migration[5.2]
  def change
    remove_column :pages , :content , :string
  end
end
