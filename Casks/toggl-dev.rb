cask 'toggl-dev' do
  version '7.4.113'
  sha256 'd5f1a69b14e9d80ef94186961aa8ff3830b0e93f3691ec3cdaae0228e7418ab0'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_dev_appcast.xml',
          checkpoint: '405fef1455a664a389ebf3861d25a490c0a71d092a27ee643c4726dbcedb0898'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggl',
                         'toggl-beta',
                       ]

  app 'TogglDesktop.app'
end
