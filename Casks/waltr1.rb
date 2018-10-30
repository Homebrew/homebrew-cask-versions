cask 'waltr1' do
  version '1.7.4,1538043028'
  sha256 '2195386c41b511201be8796f58c726ead0b9b28880a87b0aae1054351b88b198'

  # devmate.com/com.softorino.Waltr was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.softorino.Waltr/#{version.before_comma}/#{version.after_comma}/WALTR-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.softorino.Waltr.xml'
  name 'WALTR'
  homepage 'https://softorino.com/waltr/'

  app 'Waltr.app'
end
