cask "agentpal" do
  version "0.10.1"
  sha256 "1702a0a5528187ecd65b2cff58cd043836de98029a4a7ec83b9a16365af34101"

  url "https://github.com/kazuph/AgentPal/releases/download/v#{version}/AgentPal-#{version}.dmg"
  name "AgentPal"
  desc "Menu bar pal showing coding agent activity and Claude/Codex usage limits"
  homepage "https://github.com/kazuph/AgentPal"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "AgentPal.app"

  uninstall quit: "dev.agentpal"

  zap trash: [
    "~/Library/Application Support/agentpal",
    "~/Library/Preferences/dev.agentpal.plist",
  ]
end
