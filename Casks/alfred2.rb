cask 'alfred2' do
  version_major '2'
  version_minor_micro '9_446'
  sha256 '26a99cc0b96a4acee02bbc162ee433d9f1b20518ba8acc9691564b2c3698ed6a'

  name 'Alfred'
  homepage 'https://www.alfredapp.com/'
  version "#{version_major}.#{version_minor_micro}"

  url "https://cachefly.alfredapp.com/#{name}_#{version}.zip"

  auto_updates true
  accessibility_access true

  app "#{name} #{version_major}.app"

  uninstall quit: "com.runningwithcrayons.#{name}-#{version_major}",
            login_item: "#{name} #{version_major}"

  zap trash: [
               "~/Library/Application Support/#{name} #{version_major}",
               "~/Library/Caches/com.runningwithcrayons.#{name}-#{version_major}",
               "~/Library/Caches/com.runningwithcrayons.#{name}-Preferences",
               "~/Library/Preferences/com.runningwithcrayons.#{name}-#{version_major}.plist",
               "~/Library/Preferences/com.runningwithcrayons.#{name}-Preferences.plist",
               "~/Library/Saved Application State/com.runningwithcrayons.#{name}-Preferences.savedState",
             ]
end
