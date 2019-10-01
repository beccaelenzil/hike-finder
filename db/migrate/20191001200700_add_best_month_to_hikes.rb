class AddBestMonthToHikes < ActiveRecord::Migration[5.2]
  def change
    # Rails loves both symbols and implicit parens
    add_column :hikes, :best_month, :string
  end
end
