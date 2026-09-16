class Gh0stcli < Formula
  desc "Client and MCP server for the gh0stcloud managed Kubernetes platform"
  homepage "https://gh0stservice.com/en/gh0stcloud/self-service"
  version "0.5.1"
  license "LGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.5.1/gh0stcli_0.5.1_darwin_arm64.tar.gz"
      sha256 "1b19279c736398ca90501e7998dc70cff2c76644ae9e7c577ca55ba1456f209a"
    else
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.5.1/gh0stcli_0.5.1_darwin_amd64.tar.gz"
      sha256 "8558eba7c91acb5927fee85150883214a2e03f1f5324b1faf6c6294c3f8b87d7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.5.1/gh0stcli_0.5.1_linux_arm64.tar.gz"
      sha256 "912eb6ac9158e3606b6f16a665336cbf759de95b1d68b3e86ebd3d51ad7903f1"
    else
      url "https://nbg1.your-objectstorage.com/gh0stservice-updates-vb4/gh0stcli/releases/v0.5.1/gh0stcli_0.5.1_linux_amd64.tar.gz"
      sha256 "154225024ed30a7a2a3673be3048a03df26a80418f258b7c686ac01a5364b18c"
    end
  end

  def install
    bin.install "gh0stcli"
  end

  test do
    system bin/"gh0stcli", "--help"
  end
end
