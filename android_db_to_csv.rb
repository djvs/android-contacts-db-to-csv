require 'sqlite3'
output_filepath = "/sample/filepath"
path_to_contactsdb_file = "/sample/path/to/contacts2.db"

db = SQLite3::Database.new path_to_contactsdb_file

raw_contacts = db.execute("select _id,display_name from raw_contacts")
contacts = {}
raw_contacts.each do |x|
   contacts[x[1]] = {}
   contacts[x[1]]['rcid'] = x[0]
   contacts[x[1]]['nums'] = db.execute("select normalized_number from phone_lookup where raw_contact_id=" + x[0].to_s)
end

csv = ""
contacts.each do |k,v|
 csv += '"' + k + '",'
  v['nums'].each do |num|
    csv += '"' + num[0] + '",'
  end
  csv += "\n"
end

File.open(output_filepath,"w") {|file| file.write(csv) }

