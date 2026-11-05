class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.77"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.77/ikesu-darwin-arm64"
      sha256 "61152927a05a89c9dcb3ffb6ff5bf48e8e03a3814abfccd38590000b21c24fcd"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.77/ikesu-darwin-amd64"
      sha256 "ff9e611dfd72a0aa5673403a190c2af00f0b2467c93aef603d54333ed60ff86c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.77/ikesu-linux-arm64"
      sha256 "b0fd7a61966df0c26ec6ab1462cca0a2235ec80004cf6ffe2c4f423632bc131d"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.77/ikesu-linux-amd64"
      sha256 "bb74f9a9a51bc7bf8e183f2c18d55f114e124d48d05e2ce1e565a92ab9e36b85"
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
