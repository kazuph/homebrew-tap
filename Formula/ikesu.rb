class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.34"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.34/ikesu-darwin-arm64"
      sha256 "5b859a22ef022da00b85eb42ecb0dfa60bc0ec23bd5e0a6ad22aeb7524b45b75"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.34/ikesu-darwin-amd64"
      sha256 "74330347d97f9c8e14df7f09483657ec0002d0d903172dfe1a20ecab68d0800e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.34/ikesu-linux-arm64"
      sha256 "c56c9d705eb0e70d2c072c8d699bf96daedfa4ec03ef83e0623c674d7b5ce4d0"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.34/ikesu-linux-amd64"
      sha256 "d7f39a10f5719111b6d738b7381779386e677407a98c9150d79981c9a9fa15b2"
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
