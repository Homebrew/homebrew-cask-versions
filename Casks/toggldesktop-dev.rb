cask 'toggldesktop-dev' do
  version '7.4.28'
  sha256 '5f6a41982790b81bc6266dd6a3758c3d828aeab9ab64599ac6c645ed09792c0f'

  # github.com/toggl/toggldesktop was verified as official when first introduced to the cask
  url "https://github.com/toggl/toggldesktop/releases/download/v#{version}/TogglDesktop-#{version.dots_to_underscores}.dmg"
  appcast 'https://assets.toggl.com/installers/darwin_dev_appcast.xml',
          checkpoint: 'd6f5130a83bbc877d9a78d2ef871430e662e814f3393bd84a697f59ff665710b'
  name 'TogglDesktop'
  homepage 'https://www.toggl.com/'

  conflicts_with cask: [
                         'toggldesktop',
                         'toggldesktop-beta',
                       ]

  app 'TogglDesktop.app'
end
