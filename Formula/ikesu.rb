class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.53"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.53/ikesu-darwin-arm64"
      sha256 "9cc2db821aad8e957f4fbf2585abb86bc32626c6a3e0cdc2a80e52049694aad6"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.53/ikesu-darwin-amd64"
      sha256 "c94282ebc1f4009ebf9e56dd9f09f3bb541658d5255a7d90e4e8864d56b2ea64"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.53/ikesu-linux-arm64"
      sha256 "651a86625063b8fd6455838621caa29ca534eaa78c4864b77bc74e1b8290358e"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.53/ikesu-linux-amd64"
      sha256 "03da235ec430d92fcc0d755ddfbf3d91512ff670389c4f7d3281fabf86ae83bb"
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
