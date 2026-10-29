class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.36"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.36/ikesu-darwin-arm64"
      sha256 "0e087a909cdcade52b3a065c039ba38c5707ec82366f1653672dc4422c60adff"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.36/ikesu-darwin-amd64"
      sha256 "dbc6de2bb9ebddcab8f16d0ca6ff8dfdc863a0a41260df5fa3929e422ae51ddc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.36/ikesu-linux-arm64"
      sha256 "cb201040337f4bcba01e14dffffd6b8edde38d9f59c1f3ab0d613e2e574ca4f2"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.36/ikesu-linux-amd64"
      sha256 "37aedf899e424f00f15fbc5d0762d245383b24d4c73235335f4ea915a750bbec"
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
