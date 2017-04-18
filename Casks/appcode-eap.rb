cask 'appcode-eap' do
  version '2017.1.1,171.4073.44'
  sha256 'a8c11b8e1da48ed4851f2fcc395bb124a1c1b99ff1d8cf4b112770c24a529088'

  url "https://download.jetbrains.com/objc/AppCode-#{version.before_comma}-RC.dmg"
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
