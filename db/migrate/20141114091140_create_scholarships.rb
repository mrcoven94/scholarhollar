class CreateScholarships < ActiveRecord::Migration
  def change
    create_table :scholarships do |t|
      t.string :title
      t.string :company
      t.string :url

      t.timestamps
    end
  end
end
