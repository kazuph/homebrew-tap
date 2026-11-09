class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.124"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.124/ikesu-darwin-arm64"
      sha256 "9496ee7c02af0afbba372c32d5067dfc89f72d96ad18fa93323fdd2b4f7a5136"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.124/ikesu-darwin-amd64"
      sha256 "ba1034747e3526b63027058d964708b701b44f5dec0d8304ac883ba2cbef7ac9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.124/ikesu-linux-arm64"
      sha256 "58c20bda98c4514958b682bb90ea2f4e769f0165c658dd5dde244854b95c018b"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.124/ikesu-linux-amd64"
      sha256 "d35bd396b5102299e3306ba3b0a254b3a9f3f577e0090da364b59256fea920ce"
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
