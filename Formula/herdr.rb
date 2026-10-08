class Herdr < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/kazuph/herdr"
  version "0.2.20"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.20/herdr-macos-aarch64"
      sha256 "460e19fc906bd1b6110888ad9e920dc8a1c3e5fd89a95c246d96d4043fa627d4"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.20/herdr-macos-x86_64"
      sha256 "4926f407d4240f1ba60e0c352e7412b7c158c14ab6804eb636516285b1566a7c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.20/herdr-linux-aarch64"
      sha256 "eefc5b614d9179ffbe88e5ae3a76d87346f4277f2a12ce119e2da5e863b04bff"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.20/herdr-linux-x86_64"
      sha256 "15245ed83176b9dba961b2810a17aa52d3af9b78c56e1d411a875fd09c74ad38"
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
