class Herdr < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/kazuph/herdr"
  version "0.2.63"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.63/herdr-macos-aarch64"
      sha256 "09c3394190668cb63c62191a427bfd6092e99e0ff1992cf7d9a87fc70949c8e9"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.63/herdr-macos-x86_64"
      sha256 "419e6a38cbc1be551ef8c672c18c9ca64ec2218a50b7d771129dd907c65682ed"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.63/herdr-linux-aarch64"
      sha256 "e93a5899e67cddff47197d125760ab7e7337487e713d59e167c995b764c2c4ec"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.63/herdr-linux-x86_64"
      sha256 "35ca4a67756dee91033b2d661398fe1727226ed401304f7da25de6a16009102b"
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
