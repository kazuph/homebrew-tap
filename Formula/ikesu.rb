class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.40"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.40/ikesu-darwin-arm64"
      sha256 "ec55464f3528ec33d10aee69aeae156746fa85c42734af133e2309961633fde7"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.40/ikesu-darwin-amd64"
      sha256 "fd8c1f7000998e68137cef9cce3243d7645ba2fdcb68c36891654f1a47350b09"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.40/ikesu-linux-arm64"
      sha256 "b7b499df6270440e30b9d2413788c46438d9fd416771cae95a51962adae9ce90"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.40/ikesu-linux-amd64"
      sha256 "63e744e9afa19d262082f82973e29786d3df0cbe849c8261c0cd567baf70629d"
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
