cask 'dropbox-beta' do
  version '6.3.13'
  sha256 'a497b1fdbb0fce59b1b61dec63a317e923de3aaec3c18f3bd6520be000bb5b2e'

  url "https://clientupdates.dropboxstatic.com/client/Dropbox%20#{version}.dmg"
  name 'Dropbox'
  homepage 'https://www.dropboxforum.com/hc/en-us/community/posts/207018766-Beta-Build-6-3-13'
  license :gratis

  app 'Dropbox.app'

  uninstall login_item: 'Dropbox'

  zap delete: '~/.dropbox'
end
