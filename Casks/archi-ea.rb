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
    # Matching template: <div ... id="download" ... data-version="0.0.0-beta0" ...>
  end

  conflicts_with cask: "archi"
  depends_on macos: ">= :sierra"

  app "Archi.app"

  zap trash: [
    "~/Library/Application Support/Archi#{version.major}",
    "~/Library/Preferences/com.archimatetool.editor.plist",
    "~/Library/Saved Application State/com.archimatetool.editor.savedState",
  ]

  caveats "This early access version of Archi gives you the opportunity to test new features before full release."
  caveats "Please ensure you back up your data first before testing this version, and please use test data only."
  caveats "Change Log: https://www.archimatetool.com/downloads/beta/change-log.txt"
end
