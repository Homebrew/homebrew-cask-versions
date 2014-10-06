class OnepasswordBeta < Cask
  version '4.5.BETA-28'
  sha256 '68141d5179b1b60e308e1c0693a67dd264e412a890d39584634ee83d6f36a6ef'

  url "https://cache.agilebits.com/dist/1P/mac4/1Password-#{version}.zip"
  homepage 'https://agilebits.com/onepassword/mac'
  license :closed

  app '1Password 4.app'
end
