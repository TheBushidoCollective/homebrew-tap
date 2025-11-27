# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.18.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.18.2/han-darwin-arm64"
      sha256 "13362c00d725e12c788ad7102e301c79fda01fc550a45f3780876efa22ca10a1"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.18.2/han-darwin-x64"
      sha256 "b14af1805248e5b4b24d970fe97671a35dfd808e405920fb0e3e2a314fc5402e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.18.2/han-linux-arm64"
      sha256 "5e56542316a7e119a4ef4da0ddcafbff0daad316faa978c9aa66c61be0c5b8cf"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.18.2/han-linux-x64"
      sha256 "6aea54a3c4bd191f906d44471213a184ecf41ba544b6c949179ea3a30b5d2b64"
    end
  end

  def install
    bin.install Dir["*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
