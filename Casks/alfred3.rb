cask 'alfred3' do
  version_major '3'
  version_minor_micro '7_938'
  sha256 'aff50ff5e57070530ab2ed7068f6816ce7feaf624d46b9dab5bdaf2017ab199d'

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
