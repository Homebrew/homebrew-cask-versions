cask "gimp-dev" do
  arch arm: "arm64", intel: "x86_64"

  version "2.99.14"
  sha256 arm:   "2c23f9d1706514f4017ed2f90531931bfeedaacbef84e29e59c4d490e196c796",
         intel: "cc3cb7e63aaa16bfb51eaa553d2466fa2935e7282378b50c9e9156d4f2dab3f8"

  url "https://download.gimp.org/pub/gimp/v#{version.major_minor}/osx/gimp-#{version}-#{arch}.dmg"
  name "GIMP development version"
  desc "Free and open-source image editor"
  homepage "https://www.gimp.org/"

  livecheck do
    url "https://www.gimp.org/downloads/devel/"
    strategy :page_match
    regex(%r{href=.*?/gimp[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg}i)
  end

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
