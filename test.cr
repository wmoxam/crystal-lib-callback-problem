@[Link("stupid")]
lib Stupid
  alias CStr = UInt8*
  alias Callback = (Void* -> (CStr))

  fun print_and_free(Callback)
end

cb = -> (data : Void*) {
  i = (data as Int32*).hash

  "Got: #{i}.".to_unsafe
}

Stupid.print_and_free(cb)
