class Gh0stcli < Formula
  desc "Client and MCP server for the gh0stcloud managed Kubernetes platform"
  homepage "https://gh0stservice.com/en/gh0stcloud/self-service"
  version "0.4.1"
  license "LGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.4.1/gh0stcli_0.4.1_darwin_arm64.tar.gz"
      sha256 "81fdbf357f1e7d932a2b1261acde6ada9718b0e798ff0eef0d3c77e61c4f7273"
    else
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.4.1/gh0stcli_0.4.1_darwin_amd64.tar.gz"
      sha256 "928f22a682219c2b49c8862f2856e9a3ad6450f4171ba734df5b981da15f6aae"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.4.1/gh0stcli_0.4.1_linux_arm64.tar.gz"
      sha256 "f854952805618d8547462a0a3582ae28ee405fcd210fc8074040553a827b60d8"
    else
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.4.1/gh0stcli_0.4.1_linux_amd64.tar.gz"
      sha256 "8d2bf254c4785e5adeeda5e19586906191678bb72ef597055801284347a9586c"
    end
  end

  def install
    bin.install "gh0stcli"
  end

  test do
    system bin/"gh0stcli", "--help"
  end
end
