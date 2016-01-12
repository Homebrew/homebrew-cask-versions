cask 'iterm2-nightly' do
  version '2.9.20160112'
  sha256 'd547c8b93d53700cfa54152fe528bc929d1429002b6662cf7bd7a1536dd45094'

  url "https://www.iterm2.com/downloads/nightly/iTerm2-#{version.dots_to_underscores}-nightly.zip"
  appcast 'https://iterm2.com/appcasts/nightly.xml',
          :sha256 => 'b6e6d023cf63d28fb5ed9198302b83b36cb045bd73af898661516d274c27f439'
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  app 'iTerm.app'

  zap :delete => '~/Library/Preferences/com.googlecode.iterm2.plist'
end
