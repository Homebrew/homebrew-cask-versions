cask 'sublime-text-dev' do
  version '4.056'
  sha256 '475c2fae70ee79e67c994e53e53e8b3d3a4d1bb89c139efabbc495d5fee5cb99'

  url "https://download.sublimetext.com/sublime_text_build_#{version.no_dots}_mac.zip"
  appcast "https://www.sublimetext.com/updates/#{version.major}/dev_update_check"
          configuration: version.no_dots
  name 'Sublime Text'
  homepage "https://www.sublimetext.com/dev"

  auto_updates true
  conflicts_with cask: 'sublime-text'

  app 'Sublime Text.app'
  binary "#{appdir}/Sublime Text.app/Contents/SharedSupport/bin/subl"

  uninstall quit: "com.sublimetext.#{version.major}"

  zap trash: [
               "~/Library/Application Support/Sublime Text",
               "~/Library/Application Support/Sublime Text (Safe Mode)",
               "~/Library/Caches/com.sublimetext.#{version.major}",
               "~/Library/Preferences/com.sublimetext.#{version.major}.plist",
               "~/Library/Saved Application State/com.sublimetext.#{version.major}.savedState",
             ]
end
