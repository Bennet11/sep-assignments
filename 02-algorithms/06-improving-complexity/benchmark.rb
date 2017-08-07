require 'benchmark'
require_relative 'improving_complexity_one'
require_relative 'improving_complexity_two'
require_relative 'improving_complexity_three'

array_one = Array.new(1000) { Random.rand(1..3000) }
array_two = Array.new(5000) { Random.rand(1..10000) }
array_three = Array.new(10000) { Random.rand(1..20000) }

Benchmark.bm do |bm|
  bm.report("complexity one") do
    poorly_written_ruby_one(array_one, array_two, array_three)
  end

  bm.report("complexity two") do
    poorly_written_ruby_two(array_one, array_two, array_three)
  end

  bm.report("complexity three") do
    poorly_written_ruby_three(array_one, array_two, array_three)
  end
end
