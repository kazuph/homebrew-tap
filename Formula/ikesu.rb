class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.130"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.130/ikesu-darwin-arm64"
      sha256 "849c1d534f9b0d90be716105cd4d4ae26c661afd32f06b021da84e3fdba78030"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.130/ikesu-darwin-amd64"
      sha256 "b038566ed5f90578a394fbf1ef41a6f67d03b0bba8562468e5bc1c6dbb3da63c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.130/ikesu-linux-arm64"
      sha256 "8dc2d6e868def5466679b073aeff09604d55c9a51c22bc25529c493596031379"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.130/ikesu-linux-amd64"
      sha256 "900e27065c13ed28ec9d284712735ccd085d4ca9cd6920c9bef7a8e2ce17dd63"
    end
  end

  def install
    bin.install stable.url.split("/").last => "ikesu"
    chmod 0755, bin/"ikesu"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ikesu --version")
  end
end
