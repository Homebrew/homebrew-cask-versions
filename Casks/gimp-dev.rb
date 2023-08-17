cask "gimp-dev" do
  arch arm: "arm64", intel: "x86_64"

  version "2.99.16-1"
  sha256 arm:   "35c9d613d3079b09eb2c5902d7523bb9f61a20bf17e849bc8072c1efda24fc07",
         intel: "7723084943e9d5d41331a5655754cc105c2d2e796c767c45c403461b22cf9aa0"

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
