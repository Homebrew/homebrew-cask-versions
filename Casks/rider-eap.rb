cask 'rider-eap' do
  version 'EAP build 22'
  sha256 'dc995c3d9483c1b033a2de38fa81982e125ebafe478559f23f058989d90092dd'

  url 'https://download.jetbrains.com/resharper/riderRS-171.4456.199.dmg'
  name 'Jetbrains Rider'
  homepage 'https://www.jetbrains.com/rider/'

  auto_updates true

  app 'Rider EAP.app'

  uninstall_postflight do
    ENV['PATH'].split(File::PATH_SEPARATOR).map { |path| File.join(path, 'river') }.each { |path| File.delete(path) if File.exist?(path) }
  end

  zap delete: [
                '~/Library/Caches/Rider10',
                '~/Library/Logs/Rider10',
                '~/Library/Application Support/Rider10',
                '~/Library/Preferences/Rider10',
                '~/Library/Preferences/com.jetbrains.rider-EAP.plist',
                '~/Library/Saved Application State/com.jetbrains.rider-EAP.savedState',
              ]
end
