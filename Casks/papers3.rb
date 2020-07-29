cask "papers3" do
  version "3.4.23_587"
  sha256 "6960a5ad8d886d67cf9ab39730baa04f9fb5fb64a2c28cd0c25073f9b515f565"

  # downloads.mekentosj.com was verified as official when first introduced to the cask
  url "https://downloads.mekentosj.com/papers_#{version.no_dots}.dmg"
  name "Papers"
  homepage "https://support.papersapp.com/support/solutions/articles/30000031865-existing-papers-3-users-accessing-papers-3-program-files-for-additional-device-installs"

  app "Papers.app"

  uninstall login_item: "Citations"

  zap trash: [
    "~/Library/Application Support/Papers#{version.major}",
    "~/Library/Caches/com.mekentosj.Citations",
    "~/Library/Caches/com.mekentosj.papers#{version.major}",
    "~/Library/Preferences/com.mekentosj.Citations.plist",
    "~/Library/Preferences/com.mekentosj.papers#{version.major}",
  ]
end
