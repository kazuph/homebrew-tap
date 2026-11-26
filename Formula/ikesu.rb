class Ikesu < Formula
  desc "Terminal workspace manager for coding agents"
  homepage "https://github.com/kazuph/ikesu"
  version "0.4.198"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.198/ikesu-darwin-arm64"
      sha256 "e6e50930143eb33fd8a22e5e5fbc62c2ff46dd6412cae0b5ac5f32480f6632d9"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.198/ikesu-darwin-amd64"
      sha256 "1618ae703aaefde940397f61db026365fe4b1a7f82083bae5bf9acc6e6ced1c2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.198/ikesu-linux-arm64"
      sha256 "cfba7c91e07f66a040f869903d28fe97c6f3c5a8ea027a03768d45a77d806f67"
    end
    on_intel do
      url "https://github.com/kazuph/ikesu/releases/download/ikesu-v0.4.198/ikesu-linux-amd64"
      sha256 "df427933c43612976029a3ce17d336b5a3a8b8502476c2daf5fbab4c10fe9f55"
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
