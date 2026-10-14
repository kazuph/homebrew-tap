class Herdr < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/kazuph/herdr"
  version "0.2.48"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.48/herdr-macos-aarch64"
      sha256 "91314ca428093e7bdaf9aa4da347fc0e3e1166a1950737df5cc66c662e3f1803"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.48/herdr-macos-x86_64"
      sha256 "778a97fc1331e68cac3d8c272b61f8899899cbc867d422ec310704a6a32a0d6c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.48/herdr-linux-aarch64"
      sha256 "21ace2931942c97d9c173eedd087590f0213156baadc11479a409ae2a8d310c8"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.48/herdr-linux-x86_64"
      sha256 "2016c6d9abcd2ec14370fd0b71081938a5c11a73b8c0551d1b01bf629dc037d8"
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
