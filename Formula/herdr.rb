class Herdr < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/kazuph/herdr"
  version "0.1.2"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.1.2/herdr-macos-aarch64"
      sha256 "d7f94321d20d49a985b79fc5db4b18145cd19b52a9b4d82b29f7f98a4ec339a5"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.1.2/herdr-macos-x86_64"
      sha256 "a1213a20e7302d1aa3cc65d3440913ed92def2a9ed81f0ba1553ae920954f0c3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.1.2/herdr-linux-aarch64"
      sha256 "9543ffe3d317e8b9a89f723bf8bcc561b1c0cf0092d2df4a29a6e5c7deadec26"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.1.2/herdr-linux-x86_64"
      sha256 "b92c165471334f3d96de1900d060082570da3f99924d4e9d8cb410b5f54a4474"
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
