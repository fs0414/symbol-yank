class SymbolicYank < Formula
  desc "ランダムな動物の絵文字をクリップボードにコピーするCLIツール"
  homepage "https://github.com/fs0414/symbol-yank"
  url "https://github.com/fs0414/symbol-yank/archive/v1.0.0.tar.gz"
  sha256 "c588e412349ada6a728ef9b6140a83f3738de7cbe78dff4ad813c9f30245b952"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "./main.go"
  end

  test do
    system "#{bin}/symbol-yank"
  end
end