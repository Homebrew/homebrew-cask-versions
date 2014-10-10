class OnepasswordBeta < Cask
  version '5.0.BETA-1'
  sha256 '16756d7735a8926cf9a528aa773ccf64823ff0135ed2465d584192e217fe0a2c'

  url "https://cache.agilebits.com/dist/1P/mac4/1Password-#{version}.zip"
  homepage 'https://agilebits.com/onepassword/mac'
  license :closed

  app '1Password 5.app'
end
