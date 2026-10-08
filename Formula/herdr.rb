class Herdr < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/kazuph/herdr"
  version "0.2.17"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.17/herdr-macos-aarch64"
      sha256 "c9d9fb440afd226e6c47ae4b108edffbcf6ed1d5e71a9e6f43f318b9b85d7f0a"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.17/herdr-macos-x86_64"
      sha256 "7c418fcde24d97a1f22286ce62ada92b6b5aea2e63fa9f7ef43dbcf4d778bfc4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.17/herdr-linux-aarch64"
      sha256 "ab05964796c246a32e84bc373d1aa76afe4253363d4d275547d3f406aa134b1b"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.17/herdr-linux-x86_64"
      sha256 "b554a280a137985c99d2e4a499abec11468d6f18589476c3c026ca027035c42e"
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
