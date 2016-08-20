cask 'dropbox-beta' do
  version '9.3.43'
  sha256 '455f6b3be82c4601166a1607e11a6683c4851099f0e1e8d9332539a8276e7583'

  # dropboxstatic.com was verified as official when first introduced to the cask
  url "https://clientupdates.dropboxstatic.com/client/Dropbox%20#{version}.dmg"
  name 'Dropbox'
  homepage 'https://www.dropboxforum.com/hc/en-us/community/posts/210600206-Beta-Build-9-3-43'
  license :gratis

  app 'Dropbox.app'

  uninstall login_item: 'Dropbox'

  zap delete: '~/.dropbox'
end
