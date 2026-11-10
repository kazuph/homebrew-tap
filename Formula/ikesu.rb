class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.125"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.125/ikesu-darwin-arm64"
      sha256 "a5f88cc2dddf894faa132b650c074edb212872c60d7b7d405b8817a2b6b9b288"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.125/ikesu-darwin-amd64"
      sha256 "63ae4c245b9cf977009316cc1837acbc9f59d401c535b50d5a2c32027eb2336a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.125/ikesu-linux-arm64"
      sha256 "5600737c19d1e2ebe62531ba923ab4bd65ab2be4fbe2f0bc3ced476a2841ce34"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.125/ikesu-linux-amd64"
      sha256 "a9f8db37c594b8e52b60cb766d688512970fb23e51ceacc8a73a01d5207fdfc3"
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
