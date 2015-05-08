cask :v1 => 'evernote-beta' do
  version 'BETA_6.0.6_Beta_1_451237'
  sha256 'c4e81b59523a29f869916ee3c24c0bcbe41005fe4deabbc6c7cc590a21c05ac3'

  url "http://cdn1.evernote.com/mac-smd/prerelease/Evernote_#{version}.zip"
  homepage 'https://evernote.com/'
  license :unknown

  app 'Evernote.app'
end
