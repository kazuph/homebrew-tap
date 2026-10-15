class Herdr < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/kazuph/herdr"
  version "0.2.52"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.52/herdr-macos-aarch64"
      sha256 "e72bba73ca67a6327b5923e50e5ead00e530d4fb14a30b9e4c8d8b21441144fe"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.52/herdr-macos-x86_64"
      sha256 "bbdd13add608cdd3012af6964c4d2af6051645a4ade42660bf7604606466402e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.52/herdr-linux-aarch64"
      sha256 "e213f5c3375aa43b8f70e09b8b9c07180dbe9398d934c142ad3bf3a2b2b7a9c4"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.52/herdr-linux-x86_64"
      sha256 "77b0dd1e8b2249c9786fd59209508c59a0b27e8460cccc05d52d72ca93376d83"
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
