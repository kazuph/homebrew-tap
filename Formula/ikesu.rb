class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.147"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.147/ikesu-darwin-arm64"
      sha256 "4c1590346f4bfd3922a402f669f5a4e23aa5ac4cae5b1886787c7fea08551b86"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.147/ikesu-darwin-amd64"
      sha256 "de5d4dd189394aba42a2e4dc4ab2332d94f6f6cd2acda706a947016aa511d594"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.147/ikesu-linux-arm64"
      sha256 "36b936ca0071e82599cc7f433a78d4ec5ac52176b4e0dd5e50612c985431eb74"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.147/ikesu-linux-amd64"
      sha256 "a86865d50979e7089c592f84453f700415e06503a3b27610887ffdb91279cd41"
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
