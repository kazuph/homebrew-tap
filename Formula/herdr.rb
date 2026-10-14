class Herdr < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/kazuph/herdr"
  version "0.2.46"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.46/herdr-macos-aarch64"
      sha256 "d0f5af14142a29df41d23aba6feae4df54647e5c9b9c5bc25a44f9bf0138343f"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.46/herdr-macos-x86_64"
      sha256 "73d77b0f1d3dba792d50fab0a24dc2ddded23116263b24d2846a672db57aab3e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.46/herdr-linux-aarch64"
      sha256 "99ae8cf6d5b112619653b65a6115b715037d01e3fc3573c4f7fe36d7bd6ae104"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.46/herdr-linux-x86_64"
      sha256 "1be8acdf9daa903696d0805b7484ef5a89ac39549bc3e7fd62c43024f393acf4"
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
