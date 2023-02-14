class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :mac
      t.string :tmk
      t.string :sop
      t.string :kba
      t.string :matrix
      t.string :master
      t.date :date
      t.string :siteName
      t.string :siteAddress
      t.string :siteCity
      t.string :siteState
      t.string :siteZip
      t.string :siteKeyway
      t.text :siteDescription
      t.text :siteNotes
      t.string :contactName
      t.string :contactPosition
      t.string :contactEmail
      t.string :contactPhone
      t.string :contactDetails
      t.belongs_to :user, null: false, foreign_key: true


      t.timestamps
    end
  end
end
