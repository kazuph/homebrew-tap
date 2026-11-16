class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.158"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.158/ikesu-darwin-arm64"
      sha256 "50792ea5c87b40a1e61c88cad419f038ba05aadff29b4ad143c636829a4c6c09"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.158/ikesu-darwin-amd64"
      sha256 "160cbebb92b07cb76be0e215d553e811678f59e92ef21348e461c79b72c8c782"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.158/ikesu-linux-arm64"
      sha256 "806baf698689c554ff9899d2a06e3ce6c8c47acf0e10e1c382f14b895d8e3a4f"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.158/ikesu-linux-amd64"
      sha256 "8937af45e563ef644786fb706e9a83dee8e1ef64992975d2db493dc393961e95"
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
