class Herdr < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/kazuph/herdr"
  version "0.2.39"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.39/herdr-macos-aarch64"
      sha256 "d6828be78813354b9c74a5b0fb3db4b8e6e436d3029ee49d8b58af5b15b45604"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.39/herdr-macos-x86_64"
      sha256 "d3bacdca150da74b2476bef4e3e5425047a29a5ea4b6e068a751c6fb6b244cd3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.39/herdr-linux-aarch64"
      sha256 "f3b4db211f14331dfb83b94e57cf3208842e5b7c545bab28cb42d3d1ca9e1925"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.39/herdr-linux-x86_64"
      sha256 "afc349b77934e21a481dbad334d28fe88a84ac6d184cc80ff140c9fe364a7fa8"
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
