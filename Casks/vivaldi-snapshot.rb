cask "vivaldi-snapshot" do
  version "4.1.2339.3"
  sha256 "6404752a52b26fb02fc31471fdf8c9918fbbf8454ad6d97e183456b719dd8d97"

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
