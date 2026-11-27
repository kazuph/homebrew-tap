class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.208"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.208/ikesu-darwin-arm64"
      sha256 "083dc1b392d2823fdc682d99e50301d997abc22e825eee912dc315c8607f2346"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.208/ikesu-darwin-amd64"
      sha256 "e95fb7637da895f4b7791d1e080320d7505dc5b52a1dd98125c8445a43282fde"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.208/ikesu-linux-arm64"
      sha256 "0bc0c911084b4d0bd786d7167b5678eb7aa56b0dc65c1bdcc3de05ecc9f283b5"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.208/ikesu-linux-amd64"
      sha256 "2acad596337fcb00bcbe77a4cfb6b337ee1e329cbb6fd84e5f2920916d0dc978"
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
