android_db_to_csv
=================

Convert android contacts2.db files to a .csv (for emergency contact recovery from Android phones, file should be in "/data/com.android.providers.contacts/databases/contacts2.db" &lt;-- hidden file requiring root access

#Instructions

Get your contacts2.db (maybe contacts.db will work, dunno) file from 

    /data/com.android.providers.contacts/databases/contacts2.db

Replace the top two filepath lines with the appropriate definitions, and then just run the script (or copy and paste it into an irb session).  It will dump out a CSV with names and phone numbers.  Modify for additional fields as needed - I didn't need any others.

