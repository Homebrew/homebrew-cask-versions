cask 'appcode-eap' do
  version '2017.1.1,171.4073.29'
  sha256 '53969819f0b195edd5c3aa8da521afdf2d6dff59caf38dbf704a79e747352a51'

  url "https://download.jetbrains.com/objc/AppCode-#{version.after_comma}.dmg"
  name 'AppCode EAP'
  homepage 'https://confluence.jetbrains.com/display/OBJC/AppCode+EAP'

  conflicts_with cask: 'appcode'

  app "AppCode #{version.before_comma} EAP.app"

  uninstall_postflight do
    ENV['PATH'].split(File::PATH_SEPARATOR).map { |path| File.join(path, 'appcode') }.each { |path| File.delete(path) if File.exist?(path) }
  end

  zap delete: [
                "~/Library/Application Support/AppCode#{version.major_minor}",
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.jetbrains.appcode-eap.sfl',
                "~/Library/Caches/AppCode#{version.major_minor}",
                "~/Library/Logs/AppCode#{version.major_minor}",
                "~/Library/Preferences/AppCode#{version.major_minor}",
                '~/Library/Preferences/com.jetbrains.AppCode-EAP.plist',
                '~/Library/Saved Application State/com.jetbrains.AppCode-EAP.savedState',
              ]
end
