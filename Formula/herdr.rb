class Herdr < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/kazuph/herdr"
  version "0.2.13"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.13/herdr-macos-aarch64"
      sha256 "cf1ffb726e0aa51202498aa4b30770dd509eb1eca3dfa7296d1e739bcdd68136"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.13/herdr-macos-x86_64"
      sha256 "22a38889f39f44f069a5d04d14f2c94baad1e5172b4b44a23fd4cef1808b0970"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.13/herdr-linux-aarch64"
      sha256 "c0fcf74d939ea2bdc810a4f864d5eca1ec7f30f39e3d6be5f2bc1f91bda19a84"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.13/herdr-linux-x86_64"
      sha256 "0d338bdc418626f2ba2b51c3a6956d941b6239c943d989e6ff1ffc0913fde5f6"
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
