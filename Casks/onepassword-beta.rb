class OnepasswordBeta < Cask
  version '4.5.BETA-26'
  sha256 '11ff41a61fcf52061dd1fcbdcb19725d8b0ec171efb479f5bdbfbb87fb68233e'

  url "https://cache.agilebits.com/dist/1P/mac4/1Password-#{version}.zip"
  homepage 'https://agilebits.com/onepassword/mac'
  license :closed

  app '1Password 4.app'
end
