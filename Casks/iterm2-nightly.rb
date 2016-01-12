cask 'iterm2-nightly' do
  version '2.9.20160112'
  sha256 'd547c8b93d53700cfa54152fe528bc929d1429002b6662cf7bd7a1536dd45094'

  url "https://www.iterm2.com/downloads/nightly/iTerm2-#{version.dots_to_underscores}-nightly.zip"
  appcast 'https://iterm2.com/appcasts/nightly.xml',
          :sha256 => '9ddc3cda52723cc375cec7ce38ecea45d9d4147f599036654b44c1acb25c2093'
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  app 'iTerm.app'

  zap :delete => '~/Library/Preferences/com.googlecode.iterm2.plist'
end
