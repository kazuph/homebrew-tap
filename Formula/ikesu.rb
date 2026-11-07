class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.103"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.103/ikesu-darwin-arm64"
      sha256 "424d3840aab4e4d2949db9acc1277ab4b73d96ed695864d938f05130e7f9e628"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.103/ikesu-darwin-amd64"
      sha256 "935abfc1e83f3f860fb7ea55d26aa74d2f2a7eade98688a6d37e14e0d5a30115"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.103/ikesu-linux-arm64"
      sha256 "7444db4b68270ae62343a9e9f135f752db79c32333df22b53864b6158daff5fb"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.103/ikesu-linux-amd64"
      sha256 "adee56ced52c37ba00e39cc3ce356c64dccd168507200c34372cdc6ddf73e4b8"
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
