# When done, submit this entire file to the autograder.

# Part 1

def sum arr
    return arr.length > 0 ? arr.sum : 0
end

def max_2_sum arr
    return arr.length > 0 ? arr.max(2).sum : 0
end

def sum_to_n? arr, n
    return arr.combination(2).any? { |e| e.sum == n }
end

# Part 2

def hello(name)
    return "Hello, " + name
end

def starts_with_consonant? s
    return s.length > 0 ? !(/\A[aeiou_\W\s]/i =~ s) : false
end

def binary_multiple_of_4? s
    begin
        return Integer(s, 2) % 4 == 0
    rescue ArgumentError => e
        return false
    end
end

# Part 3

class BookInStock
    def initialize(isbn, price)
        if isbn.length == 0 || price <= 0
            raise ArgumentError
        end

        @isbn = isbn
        @price = price
    end

    def isbn
        @isbn
    end

    def isbn=(new_isbn)
        @isbn = new_isbn
    end

    def price
        @price
    end

    def price=(new_price)
        @price = new_price
    end

    def price_as_string
        return "$%0.2f" % @price
    end
end
