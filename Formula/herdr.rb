class Herdr < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/kazuph/herdr"
  version "0.1.3"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.1.3/herdr-macos-aarch64"
      sha256 "dfd04fb04bd8ae70528d53f7b385d87d36a91b3483c01ddd87c4ef4f9a7942c7"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.1.3/herdr-macos-x86_64"
      sha256 "5cf2929ab41221eb4d7b7f63ef0411fab65baaa1ab71e4b6024c612bc5ec3843"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.1.3/herdr-linux-aarch64"
      sha256 "a11aa8f1a8f986d6d2a3e25c7083b0d7539dcd6931b267d4b1aa531745e97b72"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.1.3/herdr-linux-x86_64"
      sha256 "77617da2313cca24dc422294d5f2494b43abb4c4439c12a7df3b2328c2bedde9"
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
