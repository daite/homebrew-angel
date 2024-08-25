class Angel < Formula
    desc "simple CLI for searching torrent magnet!"
    homepage "https://github.com/daite/angel"
    url "https://github.com/daite/angel/archive/refs/tags/v0.8.1.tar.gz" # Replace with your local or remote URL
    sha256 "9fdac54aed3c1a07e77eb4f0f2e6d112ab1355dc5b15d2dded5f3d05a732123d" # Replace with the actual SHA256 checksum
    license "MIT"
  
    depends_on "go" => :build
  
    def install
      system "go", "build", "-ldflags", "-s -w", "-o", bin/"angel", "./cmd/angel"
    end
  
    test do
      assert_match "angel version", shell_output("#{bin}/angel --version")
    end
end
