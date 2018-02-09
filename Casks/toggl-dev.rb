cask 'toggl-dev' do
  version '7.4.120'
  sha256 'c4b04e94172ba96231aadb796f232543f8c669c9f7e63269bccc4365659b5b11'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_dev_appcast.xml',
          checkpoint: 'a463e6382bd18de52a9610a3d7d01f067dfd04d9f7ed7dafef1173f2982e19dc'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggl',
                         'toggl-beta',
                       ]

  app 'TogglDesktop.app'
end
