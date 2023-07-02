defmodule CacheFib do
  alias Cache

  def fib(n) do
    Cache.run(fn cache -> 
      cached_fib(n, cache)
    end)
  end

  def cached_fib(n, cache) do
    Cache.lookup(cache, n, fn -> cache_fib(n-2, cache) + cache_fib(n-1, cache)
    end)
  end
end
