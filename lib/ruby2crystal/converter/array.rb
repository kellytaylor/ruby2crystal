module Ruby2Crystal
  class Converter
    def on_array(child_nodes)
      open_arr = '['
      close_arr = ']'
      arr_body = child_nodes.join(', ')
      puts open_arr + arr_body + close_arr
    end
  end
end
