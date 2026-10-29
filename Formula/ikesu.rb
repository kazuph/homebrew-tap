class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.29"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.29/ikesu-darwin-arm64"
      sha256 "4bd456327a7296879f33e7032e346a44f475aa8df533ca78711cdc752841bf89"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.29/ikesu-darwin-amd64"
      sha256 "787d6974538b64d09b15ebf4cba923bd813441f1bbd1f6fdc3d4992143c1d0ce"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.29/ikesu-linux-arm64"
      sha256 "6e0f11e4cdfca18ed3759744a258e2563576e36012e506fe72302e16fa2da12a"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.29/ikesu-linux-amd64"
      sha256 "92b00a5dfb78a86078fbb1b84aa50ddfd16f9535429614230f14d675d7c0157b"
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
