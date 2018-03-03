cask 'toggl-dev' do
  version '7.4.130'
  sha256 '8d75f2d18a4819749ef1c15b37006e83c826701df7559551be16b7c21d70d0db'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_dev_appcast.xml',
          checkpoint: '2e0ce2e53e0cfe155e8cc67dc0d77d259aeb038afc4b34ff88f1ede3eb8b9c05'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggl',
                         'toggl-beta',
                       ]

  app 'TogglDesktop.app'
end
