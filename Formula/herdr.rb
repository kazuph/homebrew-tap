class Herdr < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/kazuph/herdr"
  version "0.2.55"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.55/herdr-macos-aarch64"
      sha256 "1d822c70bc2dda90c2dce492b427c2c383a638d7c4575a420dcf82738494b47d"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.55/herdr-macos-x86_64"
      sha256 "4f8ec1a1f1f416ec2bd1d3de67131247e01f1da79981164798e13e97b5eee7c2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.55/herdr-linux-aarch64"
      sha256 "fa214fc6d775fcefd1cbc6cc9c23e8ca663e57ec64f6b6b6534f628642764513"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.55/herdr-linux-x86_64"
      sha256 "075a62fb3f70de673dea53d7ffb64ee54511f5f759dbdd14580b134ce7914c15"
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
