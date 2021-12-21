require 'byebug'
# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.

def largest_prime_factor(num)
    largestprime = 0

    (2..num).each do |i|
        if num % i == 0 && prime?(i) && i > largestprime
            largestprime = i
        end
    end

    largestprime

end

def prime?(num)

    (2...num).none? { |i| num % i == 0 }
end



def unique_chars?(string)

    hash = {}

    string.each_char do |c|
        if !hash[c]
            hash[c] = 1
        else
            hash[c] +=1
        end
    end

    hash.each do |key, value|
        if value > 1
            return false
        end
    end

    return true
end


def dupe_indices(arr)

    hash = {}

    arr.each_with_index do | ele , idx |
        if !hash[ele]
            hash[ele] = [idx]
        else
            hash[ele] << idx
        end
    end

    hash.select do |key, value|
        if value.length > 1
            p key=>value 
        end
    end
end

def ana_array(arr1, arr2)
    
    hash1 = {}

    arr1.each do | ele |
        if !hash1[ele]
            hash1[ele] = 1
        else
            hash1[ele] +=1
        end
    end

    hash2 = {}

    arr2.each do |e|
        if !hash2[e]
            hash2[e] = 1
        else
            hash2[e] +=1
        end
    end

    hash1 == hash2





    # arr1.each do |ele|
    #     first = ele
    #     arr2.each do | ele2 |
    #         if first == ele2
    #             true
    #         end
    #         false
    #     end
    # end 
end
ana_array(["i","c","e","m","a","n"], ["c","i","n","e","m","a"])