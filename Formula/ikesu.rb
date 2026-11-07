class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.96"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.96/ikesu-darwin-arm64"
      sha256 "340d4170fc07b1d16f52438526cb509cdee09d8cf3b0bf60974eb638fc4b8d10"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.96/ikesu-darwin-amd64"
      sha256 "cd0abfc6c69afa1be6e432faa779627488886baa7f8d9fb50294180918ece584"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.96/ikesu-linux-arm64"
      sha256 "668b2f39fea95926ff2b54d5528f94f8a0130f89f510d395a9e52bd97ed4601a"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.96/ikesu-linux-amd64"
      sha256 "b514534fb0bb5160a27494e93aa75771d07b5443d931bd9813b2ff7e64c6c7e6"
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
