class Example_inject

  class << Example_inject
    def try_reduce
      longest = %w{ bear cat sheep bear horse }.reduce do |memo, word|
        memo.length > word.length ? memo : word
      end
      longest
    end

    def transform(str)
      str.split.each_with_object({}) do |word, hash|
        hash[word] += 1
      end
    end

    def transform2(str)
      str.split.inject({}) do |hash, word|
        hash[word] = hash[word].to_i + 1
        hash
      end
    end

  end
    #Example_inject.transform2(" bear cat sheep bear horse")

  exceptions = []
  tree = {}
  ObjectSpace.each_object(Class) do |cls|
    next unless cls.ancestors.include? Exception
    next if exceptions.include? cls
    next if cls.superclass == SystemCallError # avoid dumping Errno's
    exceptions << cls
    cls.ancestors.delete_if {|e| [Object, Kernel].include? e }.reverse.inject(tree) {|memo,cls| memo[cls] ||= {}}
  end

  indent = 0
  tree_printer = Proc.new do |t|
    t.keys.sort { |c1,c2| c1.name <=> c2.name }.each do |k|
      space = (' ' * indent); space ||= ''
      puts space + k.to_s
      indent += 2; tree_printer.call t[k]; indent -= 2
    end
  end
  tree_printer.call tree


end