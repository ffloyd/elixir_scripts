prefix = fn prefix_string ->
  fn input_string ->
    prefix_string <> input_string
  end
end

mrs = prefix.("Mrs. ")

IO.puts mrs.("Jenkinson")
