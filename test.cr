@[Link("stupid")]
lib Stupid
  alias CStr = UInt8*
  alias Callback = -> (CStr)

  fun print_and_free(Callback)
end

cb = -> () {
  "Hello there".to_unsafe
}

Stupid.print_and_free(cb)
