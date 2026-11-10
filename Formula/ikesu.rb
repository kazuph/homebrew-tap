class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.126"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.126/ikesu-darwin-arm64"
      sha256 "82ba4098236324b2d9045a86738a21103aa9867e223cfc19a392ebc6aaaaba79"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.126/ikesu-darwin-amd64"
      sha256 "96e24a08ed46b36aff903d3535bcf317c5787f71ed615c5c868520aaf6c26f86"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.126/ikesu-linux-arm64"
      sha256 "e2957c035963ae5c976579d66f20543f5510ce0e85aae0fa59782525d56553e6"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.126/ikesu-linux-amd64"
      sha256 "ffdc98d1aadbe603588ac3472aad4c29b1cd3e038c9c0e9587460fd092bb1db0"
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
