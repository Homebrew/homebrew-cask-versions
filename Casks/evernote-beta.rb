cask :v1 => 'evernote-beta' do
  version 'BETA_6.0.9_Beta_2_451485'
  sha256 '24564a436ba77d253846e33487596d454106247467a79d23298c1f4d73dd7fcd'

  url "http://cdn1.evernote.com/mac-smd/prerelease/Evernote_#{version}.zip"
  homepage 'https://evernote.com/'
  license :unknown

  app 'Evernote.app'
end
