function binary_search(arr, x)
    lo = 1
    hi = length(arr)
    while lo <= hi
        mid = (lo + hi) ÷ 2
        if arr[mid] == x
            return mid
        elseif arr[mid] < x
            lo = mid + 1
        else
            hi = mid - 1
        end
    end
    return -1
end



