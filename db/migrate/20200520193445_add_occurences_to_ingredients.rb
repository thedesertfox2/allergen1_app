class AddOccurencesToIngredients < ActiveRecord::Migration[6.0]
  def change
    add_column :ingredients, :allergy_occurence, :integer
  end
end
