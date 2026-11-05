class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.75"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.75/ikesu-darwin-arm64"
      sha256 "dab483b781f4476a3d66529a1d9976d28318f891927f33f1f9469289591e5f3d"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.75/ikesu-darwin-amd64"
      sha256 "a74f12739dd2042476bbba894ea27066c91f64c51c0ee45daf753ccc76387b60"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.75/ikesu-linux-arm64"
      sha256 "559c321ebb8867b00594445324c329074244624ac42850c9ec44c225db18f350"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.75/ikesu-linux-amd64"
      sha256 "58ecd462c1aa3d960fc786f3f461ede2d2c353f93843db4c9dd04121adc53557"
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
