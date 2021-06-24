cask "tinymediamanager3" do
  version "3.1.14"
  sha256 "6f25e9487de08f6572770b24e0148bf900bd65e37d861f8bcd315f7860892b7a"

  url "https://release.tinymediamanager.org/v#{version.major}/dist/tmm_#{version}_mac.zip"
  name "tinyMediaManager"
  desc "Media management tool, V3 version no license required"
  homepage "https://www.tinymediamanager.org/"

  livecheck do
    url "https://release.tinymediamanager.org/"
    regex(%r{href=.*?/tmm[._-]v?(3(?:\.\d+)+)[._-]mac\.zip}i)
  end

  auto_updates true

  app "tinyMediaManager.app"

  caveats do
    depends_on_java "8+"
  end
end
