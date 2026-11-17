cask "sagasu" do
  version "1.0.9"
  sha256 "5ea7c56dbf6cd0b6ae0091abfcbb536c926a2b70659f5015f35aaf0c1e326e85"

  url "https://github.com/kazuph/sagasu/releases/download/v#{version}/Sagasu-#{version}.dmg"
  name "Sagasu"
  desc "Launcher for apps, files, notes, web routes, and clipboard history"
  homepage "https://github.com/kazuph/sagasu"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Sagasu.app"
end
