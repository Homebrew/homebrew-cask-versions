cask 'rider-eap' do
  version '2018.3-EAP1-183.3226.206'
  sha256 'fe83b526f8ff6f40eaf80b1fb56c166d21ade8549dd02c4fe6351c23f7204d64'

  url "https://download.jetbrains.com/rider/JetBrains.Rider-#{version}.Checked.dmg"
  name 'Jetbrains Rider EAP'
  homepage 'https://www.jetbrains.com/rider/eap/'

  auto_updates true

  app 'Rider EAP.app'

  uninstall_postflight do
    ENV['PATH'].split(File::PATH_SEPARATOR).map { |path| File.join(path, 'rider') }.each { |path| File.delete(path) if File.exist?(path) && File.readlines(path).grep(%r{# see com.intellij.idea.SocketLock for the server side of this interface}).any? }
  end

  zap trash: [
               "~/Library/Application Support/Rider#{version.major_minor}",
               "~/Library/Caches/Rider#{version.major_minor}",
               "~/Library/Logs/Rider#{version.major_minor}",
               "~/Library/Preferences/Rider#{version.major_minor}",
               '~/Library/Preferences/jetbrains.rider.71e559ef.plist',
               '~/Library/Saved Application State/com.jetbrains.rider-EAP.savedState',
             ]
end
