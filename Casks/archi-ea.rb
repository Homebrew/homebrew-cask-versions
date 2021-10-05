cask "archi-ea" do
  version "4.9.0-beta3"

  if Hardware::CPU.intel?
    sha256 "0dcb9117ac52c4d4a0efc95fecf77519bf9b57d8c9076df2205da8b4a8e1c50c"
    url "https://www.archimatetool.com/downloads/beta/Archi-Mac-#{version}.dmg"
  else
    sha256 "ed034b57833e4e9fb755c3c8d5aae498efc9fc9183fde0003c0788a958832871"
    url "https://www.archimatetool.com/downloads/beta/Archi-Mac-Silicon-#{version}.dmg"
  end

  name "Archi EA"
  name "ArchiMate Tool Early Access"
  desc "Modelling toolkit for ArchiMate models and sketches"
  homepage "https://www.archimatetool.com/beta/"

  livecheck do
    url :homepage
    regex(/\s+id\s*=\s*["']?download["']?[^>]+?data-version\s*=\s*["']?(\d+(?:\.\d+)+?-(?:alpha|beta|ea)\d+)["']?/i)
  end

  conflicts_with cask: "archi"
  depends_on macos: ">= :sierra"

  app "Archi.app"

  zap trash: [
    "~/Library/Application Support/Archi#{version.major}",
    "~/Library/Preferences/com.archimatetool.editor.plist",
    "~/Library/Saved Application State/com.archimatetool.editor.savedState",
  ]
end
