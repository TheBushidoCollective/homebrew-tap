# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "3.15.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.15.3/han-darwin-arm64"
      sha256 "a77105037c2cf306487750fa276ab43e241cb45b6d5ad057b82c535b4ba134c9"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.15.3/han-darwin-x64"
      sha256 "a4fe5688cc7225ca0ee276b3a6a96b5f3a735b3476a9b6db182de86261030ea2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.15.3/han-linux-arm64"
      sha256 "e5705b66feb9f7930602dca79cb7fcbdbbc9f0ec1f6ea8bb8009b8d9f9ecc84d"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.15.3/han-linux-x64"
      sha256 "871c0995a335b6f4568135ce2707a91b28c9caacb6b9786071dc16216e4d5a14"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
