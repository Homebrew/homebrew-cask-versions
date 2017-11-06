cask 'toggl-dev' do
  version '7.4.79'
  sha256 '3bd36690042561b360d61ad325b13c56fb8dcaed58ad30e112bfd8e2a593d1cb'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_dev_appcast.xml',
          checkpoint: 'ce2e1866b316b4f6957fb95c6dd6c9a029134ad21649773bbb10ad16af5131fd'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggl',
                         'toggl-beta',
                       ]

  app 'TogglDesktop.app'
end
