class RemoveSurveyTable < ActiveRecord::Migration
  def change
    remove_foreign_key :questions, column: :survey_id

    drop_table :surveys do |x|
      x.string :name, null: false
      x.timestamps null: false
    end

    remove_column :questions, :survey_id

  end

end
