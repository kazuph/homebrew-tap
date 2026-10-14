class Herdr < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/kazuph/herdr"
  version "0.2.45"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.45/herdr-macos-aarch64"
      sha256 "ca75bb6c06fc49699b08cefae7779f06434bc07b787ce5b59f0c61600c96c1a3"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.45/herdr-macos-x86_64"
      sha256 "f8a4216d07a629e04354a86910f5a4588b9c206cb740eee77f715ac237792a3e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.45/herdr-linux-aarch64"
      sha256 "dd8174c049b15bab8e1038a22fea020918833e839910eb23593cb32ec9308141"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.45/herdr-linux-x86_64"
      sha256 "cdcd59a60db4a62ee9619174d0a7b9635193b6fe536ae372631f60bcc54356d6"
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
