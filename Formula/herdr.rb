class Herdr < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/kazuph/herdr"
  version "0.2.11"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.11/herdr-macos-aarch64"
      sha256 "7d019d1ac1c879cd2e02ecf769f6e70aaac3f3838dcdcc8e68898e1c3448ae8a"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.11/herdr-macos-x86_64"
      sha256 "83c4fc1adaffdc09930e87b19ebcfc91e1c091872354e815dc3e0ea695b2616d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.11/herdr-linux-aarch64"
      sha256 "453712bfd5131e704d6974f2ddfaeeadeb1202549f41075b5a77cca5e5c1c8af"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.11/herdr-linux-x86_64"
      sha256 "17e76d8015f96d7efffc861a602c92e9dc305b12d6162bbd2aa0270316560c6b"
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
