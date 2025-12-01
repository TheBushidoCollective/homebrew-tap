# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.26.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.26.0/han-darwin-arm64"
      sha256 "3a5b3504f96ef5c31bf185ff8cdb5967fa4145f5bef5cf85e71e306ffadf3173"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.26.0/han-darwin-x64"
      sha256 "d52df107a008de00847775fe98beea7021770999d01a13205d91a3591b57be28"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.26.0/han-linux-arm64"
      sha256 "2d14109c80d5f45db1cedcae29593ee98e85dbc66bebe345477ca48cdb0162dd"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.26.0/han-linux-x64"
      sha256 "ddbeb50bc5e4b8a0dcbc002e26ba07cfced0ff44dacfbc3dae71eae28eb876e8"
    end
  end

  def install
    bin.install Dir["*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
