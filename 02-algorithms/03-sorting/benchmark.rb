require 'benchmark'
require_relative 'quick_sort'
require_relative 'heap_sort'
require_relative 'bucket_sort'

test_array = Array.new(50) { Random.rand(1..100) }

Benchmark.bm do |bm|
  bm.report("quick_sort") do
    quicksort(test_array)
  end

  bm.report("heap_sort") do
    heap_sort(test_array)
  end

  bm.report("bucket_sort") do
    bucket_sort(test_array)
  end
end
