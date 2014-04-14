# Encoding: utf-8

def mail_joke(email)
  # TODO: Return a joke suited to the email provided
  name = email.split('@')[0]
  name = name.gsub(/\.|_/, " ")
  provider = nil
  if email.match(/@gmail\.com/) != nil
    provider = "known"
     "#{name}, you're an average but modern person"
  elsif email.match(/@live\.com/) != nil
    provider = "known"
     "#{name}, aren't you born before 1973?"
  elsif email.match(/@lewagon\.org/) != nil
    provider = "known"
     "Well done #{name}, you're skilled and capable"
  elsif email.match(/@\w+\.\w{2,4}/) != nil && provider == nil
     "Sorry #{name}, we don't know how to judge '#{email.split('@')[1]}'"
  else
    raise ArgumentError, 'incorrect email'
  end
end

# p mail_joke("foo")

# p mail_joke("boris@lewagon.org")
# p mail_joke "boris@gmail.com"
# p mail_joke "jean-marc.alarue@live.com"
# p mail_joke "voyageurdufutur@milkyway.gal"