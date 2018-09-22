reverse_proc = Proc.new {|s| s.reverse}
puts ['Ruby', 'Java', 'Perl'].map(&reverse_proc).inspect
puts '-----------'

reverse_proc = Proc.new {|s| s.reverse}
other_proc = reverse_proc.to_proc
puts reverse_proc.equal?(other_proc)
puts '-----------'

split_proc = :split.to_proc
puts split_proc
puts split_proc.call('a-b-c-d e').inspect
puts split_proc.call('a-b-c-d e', '-').inspect
puts split_proc.call('a-b-c-d e', '-', 3).inspect
puts '-----------'

is_over_ten = ->(val){val >= 10}
puts [1,4,10].map(&is_over_ten).inspect
p [1,4,10].map(&is_over_ten)
