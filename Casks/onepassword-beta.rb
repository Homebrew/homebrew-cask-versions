class OnepasswordBeta < Cask
  version '4.5.BETA-25'
  sha256 'fca119b0614da273a3b2e7d101bae9a9dec3df106ad4bc99d0f14e2ade99e0e2'

  url "https://cache.agilebits.com/dist/1P/mac4/1Password-#{version}.zip"
  homepage 'https://agilebits.com/onepassword/mac'
  license :closed

  app '1Password 4.app'
end
