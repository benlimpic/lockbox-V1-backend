class CreateKeys < ActiveRecord::Migration[7.0]
  def change
    create_table :keys do |t|

      t.string :mac
      t.string :cut
      t.string :page
      t.string :reference
      t.string :assigneeName
      t.string :assigneeEmail
      t.string :assigneePhone
      t.text :details
      t.date :assignmentDate
      t.string :techName
      t.string :techEmail
      t.string :techPhone
      t.text :notes
      t.date :oDate
      t.string :keyTitle
      t.string :stamp
      t.text :description
      t.boolean :usable
      t.boolean :inUse
      t.boolean :reserved
      t.boolean :archived
      t.string :status
      t.belongs_to :project, null: false, foreign_key: true


      t.timestamps
    end
  end
end