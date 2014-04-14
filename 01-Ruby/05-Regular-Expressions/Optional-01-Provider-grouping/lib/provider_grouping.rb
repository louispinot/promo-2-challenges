def group_mails( emails )
  #TODO: group email by provider
  transit_hash = {}
  email_hash = {}
  emails.each do |adress|
    transit_hash[adress] = adress.split('@')[1].split('.')[0]
  end

  transit_hash.each_value do|provider|
    email_hash[provider] = []
  end
  transit_hash.each do |adress, provider|
    email_hash[provider] << adress
  end
  email_hash
end

users_emails = %w( bob@yahoo.fr
                   roger57@hotmail.fr
                   bigbox@yahoo.fr
                   boris@lewagon.org
                   monsieur.olivier@gmail.com
                   monsieur.mack@gmail.com )


puts group_mails( users_emails )

# => {"yahoo" => ["bob@yahoo.fr", "bigbox@yahoo.fr"],
#     "hotmail" => ["roger57@hotmail.fr"],
#     "lewagon" => ["boris@lewagon.org"],
#     "gmail" => ["monsieur.olivier@gmail.com",
#     "monsieur.mack@gmail.com"]}
