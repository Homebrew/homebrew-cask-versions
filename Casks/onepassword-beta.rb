class OnepasswordBeta < Cask
  version '4.5.BETA-24'
  sha256 '3c6c468c2dd1df101f8055921999a5bae874269480bb5fd95a1153a1beab15b4'

  url "https://cache.agilebits.com/dist/1P/mac4/1Password-#{version}.zip"
  homepage 'https://agilebits.com/onepassword/mac'

  app '1Password 4.app'
end
