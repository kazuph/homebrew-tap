cask "sagasu" do
  version "1.0.5"
  sha256 "8f23afb014053cb12db2e4c4db74cf07ed8c608582f184ae74ef88f349d433e8"

  url "https://github.com/kazuph/sagasu/releases/download/v#{version}/Sagasu-#{version}.dmg"
  name "Sagasu"
  desc "Launcher for apps, files, notes, web routes, and clipboard history"
  homepage "https://github.com/kazuph/sagasu"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Sagasu.app"
end
