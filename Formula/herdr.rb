class Herdr < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/kazuph/herdr"
  version "0.2.42"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.42/herdr-macos-aarch64"
      sha256 "0cc910faa956fdcf2d580e69950ef797a7a85584bebbc16a53cf03a7246063d6"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.42/herdr-macos-x86_64"
      sha256 "8642afde181145e921d07a201832638f4dfbcbf61d59d8ec26b47eb99d754498"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.42/herdr-linux-aarch64"
      sha256 "725a80781d75e3f7aaeb0d2671cb1e87cf93b370b59f7a9a858d40a3dca03b35"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.42/herdr-linux-x86_64"
      sha256 "b6b8ff58732afbc0d426e73e40a2f7fc691f13cf36318cd4d6e4cac2c68561a4"
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
