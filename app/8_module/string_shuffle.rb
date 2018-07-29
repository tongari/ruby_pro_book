module StringShuffle
  refine String do
    def shffle
      chars.shuffle.join
    end
  end
end
