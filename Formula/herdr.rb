class Herdr < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/kazuph/herdr"
  version "0.2.41"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.41/herdr-macos-aarch64"
      sha256 "1a9023f7c770529ec107f54858fa9c14bacbb7a8f9821954d80a070ed455c413"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.41/herdr-macos-x86_64"
      sha256 "3c20a99b713dbb3ae57af0524ce694f594dd9b4751d5668268f4c2347c762436"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.41/herdr-linux-aarch64"
      sha256 "e92bb965037411ca3225cc2db089ca4d97230e79b837438040d2ebcd350a7170"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.41/herdr-linux-x86_64"
      sha256 "7016d0e77b721424150ef5376f8d1829bac75ddaedcc416925366fbdf9f0e970"
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
