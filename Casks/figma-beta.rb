cask 'figma-beta' do
  version :beta
  sha256 :no_check

  url 'https://desktop.figma.com/mac/beta/FigmaBeta.zip'
  name 'Figma'
  homepage 'https://www.figma.com/'

  app 'Figma.app'

  zap trash: [
               '~/Library/Application Support/Figma/DesktopBeta',
               '~/Library/Preferences/com.figma.DesktopBeta.plist',
               '~/Library/Saved Application State/com.figma.DesktopBeta.savedState',
             ]
end
