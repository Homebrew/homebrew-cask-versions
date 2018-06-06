cask 'toggl-dev' do
  version '7.4.180'
  sha256 'd503f1aca10730c6eac2315b1aee27e92f44929aeabff11888a4f3c146c26926'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_dev_appcast.xml',
          checkpoint: '37d0146af6a8b019c8ec28eda91cd8e3d2162bb1726908ab83f1d2e2f5441967'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggl',
                         'toggl-beta',
                       ]

  app 'TogglDesktop.app'
end
