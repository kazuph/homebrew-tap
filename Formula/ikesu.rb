class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.98"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.98/ikesu-darwin-arm64"
      sha256 "eed7b4225d6b928cfbfca2b31274c891e83cb6a79fe811dee1547fb9ad6e3069"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.98/ikesu-darwin-amd64"
      sha256 "b892e7515028c9a55a5cf579f67f6057a27bf60b6265a5b1042e3e8a3b4b81e4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.98/ikesu-linux-arm64"
      sha256 "8d1394a780dde7f6d14cc9bd004b23296232da26195ed944b9e6d0fa5651092e"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.98/ikesu-linux-amd64"
      sha256 "203d5c40b05594faa530ad1c06e050e835ea123e34d3af9e0a45093a2553a57e"
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
