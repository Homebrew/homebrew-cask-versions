cask "gimp-dev" do
  arch arm: "arm64", intel: "x86_64"

  version "2.99.14-1"
  sha256 arm:   "c9d934cf88ec6be7453bfde2e284a6e0a0d98de4a2e4af74f0a736bcfd5ab8ff",
         intel: "7db834058f8763d1a8e8a12a5d74718b0577499dc88a33fb2321de39effacf01"

  url "https://download.gimp.org/pub/gimp/v#{version.major_minor}/osx/gimp-#{version}-#{arch}.dmg"
  name "GIMP development version"
  desc "Free and open-source image editor"
  homepage "https://www.gimp.org/"

  livecheck do
    url "https://www.gimp.org/downloads/devel/"
    regex(%r{href=.*?/gimp[._-]v?(\d+(?:[.-]\d+)+)[._-]#{arch}\.dmg}i)
  end

  conflicts_with cask: "gimp"

  app "GIMP.app"
  binary "#{appdir}/GIMP.app/Contents/MacOS/gimp"

  postflight do
    set_permissions "#{appdir}/GIMP.app/Contents/MacOS/gimp", "a+rx"
  end

  zap trash: [
    "~/Library/Application Support/Gimp",
    "~/Library/Preferences/org.gimp.gimp-#{version.major_minor}:.plist",
    "~/Library/Saved Application State/org.gimp.gimp-#{version.major_minor}:.savedState",
  ]
end
