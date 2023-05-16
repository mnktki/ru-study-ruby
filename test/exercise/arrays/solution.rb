module Exercise 
  module Arrays
    class << self
      def replace(array)
        max_value = array.first
        array.map { |number| max_value = number if number > max_value }
        array.map { |number| number.positive? ? max_value : number }
      end

      def search(arr, x)
        if arr.size.zero?
          -1
        else
          mid = arr.size / 2

          if arr[mid] == x
            mid
          elsif arr[mid] > x
            left_arr = arr[0...mid]
            search(left_arr, x)
          else
            right_arr = arr[mid + 1..]
            result = search(right_arr, x)
            if result == -1
              -1
            else
              mid + 1 + result
            end
          end
        end
      end
      
    end
  end
end
