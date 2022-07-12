cask "tinymediamanager3" do
  version "3.1.16.1"
  sha256 "f363f3062c6524aded5437ee14adb4d63baaf1dfdc8bb09454fd7255031aec5d"

  url "https://release.tinymediamanager.org/v#{version.major}/dist/tmm_#{version}_macos.zip"
  name "tinyMediaManager"
  desc "Media management tool, V3 version no license required"
  homepage "https://www.tinymediamanager.org/"

  livecheck do
    url "https://release.tinymediamanager.org/download_v#{version.major}.html"
    regex(%r{href=.*?/tmm[._-]v?(3(?:\.\d+)+)[._-]macos\.zip}i)
  end

  auto_updates true

  app "tinyMediaManager.app"

  caveats do
    depends_on_java "8+"
  end
end
