cask "archi-ea" do
  version "4.9.0-ea5"

  if Hardware::CPU.intel?
    sha256 "331534bc384e1f09dbdd47299edabfe823d7938acd30699301c8fa5b89b95a07"
    url "https://www.archimatetool.com/downloads/beta/Archi-Mac-#{version}.dmg"
  else
    sha256 "caaab95b9578d45f0955815ece8e78a5e2ed854633ccf811498532e366981d0d"
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
