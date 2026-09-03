class Herdr < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/kazuph/herdr"
  version "0.2.4"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.4/herdr-macos-aarch64"
      sha256 "0dbfc71b228bbadef1e45343acd269d022a2a7b48b52c2328c2ef13a54ef4050"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.4/herdr-macos-x86_64"
      sha256 "4811a6d455854ea8b5ad16e017fdf8555d92bf737a9fe6cdd23ae81dc43c4c14"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.4/herdr-linux-aarch64"
      sha256 "6722bcb7c042ca977f9f5d8aef6b3649b4d761fa0784cba6fc174f28a840f03c"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.4/herdr-linux-x86_64"
      sha256 "54665d2c43d847eb02a32c327e44ccb6be845702cceae897afec8869ddb59bb3"
    end
  end

  def install
    artifact = Dir["herdr-*"].first
    chmod 0755, artifact
    bin.install artifact => "herdr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/herdr --version")
  end
end
