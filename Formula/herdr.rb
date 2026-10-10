class Herdr < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/kazuph/herdr"
  version "0.2.26"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.26/herdr-macos-aarch64"
      sha256 "4e21dc4210ddcca772b9a5f4f9fb047d3600d37b8dab8ecd95be60fdf1e9787c"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.26/herdr-macos-x86_64"
      sha256 "08a6951d54329facf11df6b2d0547304808dfda2fcf23632d316ffcf9a47e3fe"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.26/herdr-linux-aarch64"
      sha256 "7fb131577e478064827c76fee32c74db459391dbb8e22f26843480292c58c9f9"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.26/herdr-linux-x86_64"
      sha256 "d3e6cdc9ec3a60aba9cf98281fc5800689b3d487142e5f289486a0f1eb009546"
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
