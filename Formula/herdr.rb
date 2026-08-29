class Herdr < Formula
  desc "Terminal workspace manager for AI coding agents"
  homepage "https://github.com/kazuph/herdr"
  version "0.2.1"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.1/herdr-macos-aarch64"
      sha256 "bd8592861e96b7b0deea8d951960873c663efeb7b13df66c49fc9faaabbaeaec"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.1/herdr-macos-x86_64"
      sha256 "bd94a4840ef2b7301a14b233887a9064a15592dbeb0b9287fe9b09ed0b64b757"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.1/herdr-linux-aarch64"
      sha256 "5449f0e1d3b431aaa41c4df61cd0352c4e9be6e4358c55f62e0e07ffc1ad7951"
    else
      url "https://github.com/kazuph/herdr/releases/download/kazuph-v0.2.1/herdr-linux-x86_64"
      sha256 "c4acd25384f798a2830d2b132656f7606e7e7bec0f4d54dc84ea9c4e53426a4a"
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
