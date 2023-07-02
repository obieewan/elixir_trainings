defmodule Procs do

  def hello(count) do
    receive do # receive waits for a message to arrive, binds it to a variable, then executes the associated code

      {:crash, reason} ->
        exit(reason)

      {:quit} -> 
        IO.puts("I'm outta here")

      {:add, n} ->
        hello(count + n)

      msg ->
        IO.puts("#{count}: Hello #{inspect msg}")
        hello(count)
    end
  end
  #MFA Module, Function, Arguments
  #spawn Procs, :hello, [ "obie"]
  #

  #def greeter(what_to_say) do
  #  receive do
  #  msg ->
  #    IO.puts("#{what_to_say}: #{msg}")
  #  end
  #  greeter(what_to_say)
  #end

end
