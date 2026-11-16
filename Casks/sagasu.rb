cask "sagasu" do
  version "1.0.8"
  sha256 "c482f162419a95d4ac9dcbab803ac33f1caf842554a86fa8728d63568a2b1d3b"

  url "https://github.com/kazuph/sagasu/releases/download/v#{version}/Sagasu-#{version}.dmg"
  name "Sagasu"
  desc "Launcher for apps, files, notes, web routes, and clipboard history"
  homepage "https://github.com/kazuph/sagasu"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Sagasu.app"
end
