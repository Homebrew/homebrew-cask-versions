cask "vivaldi-snapshot" do
  version "4.2.2406.4"
  sha256 "558612d204c5ab7a4e606a2e7ac8f2c60c32c42420e0ca15e837a5cf5dcbb2b3"

  url "https://downloads.vivaldi.com/snapshot/Vivaldi.#{version}.universal.dmg"
  name "Vivaldi"
  desc "Web browser focusing on customization and control"
  homepage "https://vivaldi.com/"

  livecheck do
    url "https://update.vivaldi.com/update/1.0/snapshot/mac/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "Vivaldi Snapshot.app"
end
